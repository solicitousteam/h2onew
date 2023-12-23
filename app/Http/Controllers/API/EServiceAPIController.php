<?php
/*
 * File name: EServiceAPIController.php
 * Last modified: 2022.04.02 at 06:27:45
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2022
 */

namespace App\Http\Controllers\API;


use App\Criteria\EServices\EServicesOfUserCriteria;
use App\Criteria\EServices\NearCriteria;
use App\Http\Controllers\Controller;
use App\Http\Requests\CreateEServiceRequest;
use App\Http\Requests\UpdateEServiceRequest;
use App\Repositories\EServiceRepository;
use App\Repositories\UploadRepository;
use App\Repositories\UserRepository;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Log;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Nwidart\Modules\Facades\Module;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;
use DB;

/**
 * Class EServiceController
 * @package App\Http\Controllers\API
 */
class EServiceAPIController extends Controller
{
    /** @var  eServiceRepository */
    private $eServiceRepository;
    /** @var UserRepository */
    private $userRepository;
    /**
     * @var UploadRepository
     */
    private $uploadRepository;

    public function __construct(EServiceRepository $eServiceRepo, UserRepository $userRepository, UploadRepository $uploadRepository)
    {
        parent::__construct();
        $this->eServiceRepository = $eServiceRepo;
        $this->userRepository = $userRepository;
        $this->uploadRepository = $uploadRepository;
    }

    /**
     * Display a listing of the EService.
     * GET|HEAD /eServices
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function index(Request $request)
    {
        try {
            $this->eServiceRepository->pushCriteria(new RequestCriteria($request));
            $this->eServiceRepository->pushCriteria(new EServicesOfUserCriteria(auth()->id()));
            $this->eServiceRepository->pushCriteria(new NearCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $eServices = $this->eServiceRepository->all();

        $this->availableEServices($eServices);
        $this->availableEProvider($request, $eServices);
        $this->hasValidSubscription($request, $eServices);
        $this->orderByRating($request, $eServices);
        $this->limitOffset($request, $eServices);
        $this->filterCollection($request, $eServices);
        $eServices = array_values($eServices->toArray());
  
        return $this->sendResponse($eServices, 'E Services retrieved successfully');
    }

    /**
     * @param Collection $eServices
     */
    private function availableEServices(Collection &$eServices)
    {
        $eServices = $eServices->where('available', true);
    }

    /**
     * @param Request $request
     * @param Collection $eServices
     */
    private function availableEProvider(Request $request, Collection &$eServices)
    {
        if ($request->has('available_e_provider')) {
            $eServices = $eServices->filter(function ($element) {
                return $element->eProvider->available;
            });
        }
    }

    /**
     * @param Request $request
     * @param Collection $eServices
     */
    private function hasValidSubscription(Request $request, Collection &$eServices)
    {
        if (Module::isActivated('Subscription')) {
            $eServices = $eServices->filter(function ($element) {
                return $element->eProvider->hasValidSubscription && $element->eProvider->accepted;
            });
        } else {
            $eServices = $eServices->filter(function ($element) {
                return $element->eProvider->accepted;
            });
        }
    }

    /**
     * @param Request $request
     * @param Collection $eServices
     */
    private function orderByRating(Request $request, Collection &$eServices)
    {
        if ($request->has('rating')) {
            $eServices = $eServices->sortBy('rate', SORT_REGULAR, true);
        }
    }

    /**
     * Display the specified EService.
     * GET|HEAD /eServices/{id}
     *
     * @param Request $request
     * @param int $id
     *
     * @return JsonResponse
     */
    public function show(Request $request, int $id): JsonResponse
    {
        $verify=0;
        
        try {
            $this->eServiceRepository->pushCriteria(new RequestCriteria($request));
            $this->eServiceRepository->pushCriteria(new LimitOffsetCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $eService = $this->eServiceRepository->findWithoutFail($id);

        if (empty($eService)) {
            return $this->sendError('EService not found');
        }
        $eService->verified=0;
        $eService->already_verified_by_user=null;
        $eService->documents=0;
        if ($request->has('api_token')) {
            $user = $this->userRepository->findByField('api_token', $request->input('api_token'))->first();
            
            if (!empty($user)) {
                auth()->login($user, true);
                 $provider_verify_count=DB::table('provider_verified')->where(['provider_id'=>$eService->e_provider_id])->count();
                 
                 if($provider_verify_count > 3){
                    //  verify proivider
                    $eService->verified=1;
                    
                 }
                 
                
                
                // check already exists by this user
                $eService->already_verified_by_user=(DB::table('provider_verified')->where(['provider_id'=>$eService->e_provider_id,'verify_by'=>$user->id])->first())?'1':'0';
                 
            }
        }
        
        //  Documents
        $provider_doc_count=DB::table('provider_document')->where('provider_id',$eService->e_provider_id)->first();
        if($provider_doc_count){
            $provider_doc_count->aadhar= url('/').'/'.$provider_doc_count->aadhar;
            $provider_doc_count->pan= url('/').'/'.$provider_doc_count->pan;
            $provider_doc_count->degree= url('/').'/'.$provider_doc_count->degree;    
        }
        
        $eService->documents=$provider_doc_count;
        $this->filterModel($request, $eService);
           
           
        return $this->sendResponse($eService->toArray(), 'EService retrieved successfully'.$eService->e_provider_id);
    }

    /**
     * Store a newly created EService in storage.
     *
     * @param CreateEServiceRequest $request
     *
     * @return JsonResponse
     */
     
    public function verify_user(Request $request){
        if ($request->has('api_token')) {
            $user = $this->userRepository->findByField('api_token', $request->input('api_token'))->first();
            if (!empty($user)) {
                $eService = $this->eServiceRepository->findWithoutFail($request->provider_id);
                $insert_id=DB::table('provider_verified')->insertGetId(['provider_id'=>$eService->e_provider_id,'verify_by'=>$user->id,'create_on'=>now()]);   
                if($insert_id){
                    return response()->json(['status'=>true,'message'=>'Verification added succcessfully']);    
                }
                
            }
        }
        return response()->json(['status'=>false,'message'=>'Failed']);
        
        
    }
    
    public function store(CreateEServiceRequest $request): JsonResponse
    {
        try {
            $input = $request->all();
            $eService = $this->eServiceRepository->create($input);
            if (isset($input['image']) && $input['image'] && is_array($input['image'])) {
                foreach ($input['image'] as $fileUuid) {
                    $cacheUpload = $this->uploadRepository->getByUuid($fileUuid);
                    $mediaItem = $cacheUpload->getMedia('image')->first();
                    $mediaItem->copy($eService, 'image');
                }
            }
        } catch (Exception $e) {
            return $this->sendError($e->getMessage());
        }
        return $this->sendResponse($eService->toArray(), __('lang.saved_successfully', ['operator' => __('lang.e_service')]));
    }

    /**
     * Update the specified EService in storage.
     *
     * @param int $id
     * @param UpdateEServiceRequest $request
     *
     * @return JsonResponse
     * @throws RepositoryException
     */
    public function update(int $id, UpdateEServiceRequest $request): JsonResponse
    {
        $this->eServiceRepository->pushCriteria(new EServicesOfUserCriteria(auth()->id()));
        $eService = $this->eServiceRepository->findWithoutFail($id);

        if (empty($eService)) {
            return $this->sendError('E Service not found');
        }
        try {
            $input = $request->all();
            $input['categories'] = isset($input['categories']) ? $input['categories'] : [];
            $eService = $this->eServiceRepository->update($input, $id);
            if (isset($input['image']) && $input['image'] && is_array($input['image'])) {
                if ($eService->hasMedia('image')) {
                    $eService->getMedia('image')->each->delete();
                }
                foreach ($input['image'] as $fileUuid) {
                    $cacheUpload = $this->uploadRepository->getByUuid($fileUuid);
                    $mediaItem = $cacheUpload->getMedia('image')->first();
                    $mediaItem->copy($eService, 'image');
                }
            }
        } catch (Exception $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($eService->toArray(), __('lang.updated_successfully', ['operator' => __('lang.e_service')]));
    }

    /**
     * Remove the specified EService from storage.
     *
     * @param int $id
     *
     * @return JsonResponse
     * @throws RepositoryException
     */
    public function destroy(int $id): JsonResponse
    {
        $this->eServiceRepository->pushCriteria(new EServicesOfUserCriteria(auth()->id()));
        $eService = $this->eServiceRepository->findWithoutFail($id);

        if (empty($eService)) {
            return $this->sendError('EService not found');
        }

        $eService = $this->eServiceRepository->delete($id);

        return $this->sendResponse($eService, __('lang.deleted_successfully', ['operator' => __('lang.e_service')]));

    }

    /**
     * Remove Media of EService
     * @param Request $request
     * @throws RepositoryException
     */
    public function removeMedia(Request $request)
    {
        $input = $request->all();
        try {
            $this->eServiceRepository->pushCriteria(new EServicesOfUserCriteria(auth()->id()));
            $eService = $this->eServiceRepository->findWithoutFail($input['id']);
            if ($eService->hasMedia($input['collection'])) {
                $eService->getFirstMedia($input['collection'])->delete();
            }
        } catch (Exception $e) {
            Log::error($e->getMessage());
        }
        

    }
}
