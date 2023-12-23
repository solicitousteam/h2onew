<?php
/*
 * File name: CategoryAPIController.php
 * Last modified: 2021.03.24 at 21:33:26
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Controllers\API;


use App\Criteria\Categories\NearCriteria;
use App\Http\Requests\CreateCategoryRequest;
use App\Criteria\Categories\ParentCriteria;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Repositories\CategoryRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;
use App\Repositories\CustomFieldRepository;
use App\Repositories\UploadRepository;
use App\Http\Requests\UpdateCategoryRequest;

/**
 * Class CategoryController
 * @package App\Http\Controllers\API
 */
class CategoryAPIController extends Controller
{
    /** @var  CategoryRepository */
    private $categoryRepository;
     private $customFieldRepository;
     private $uploadRepository;

    public function __construct(CategoryRepository $categoryRepo,CustomFieldRepository $customFieldRepo, UploadRepository $uploadRepo)
    {
        $this->categoryRepository = $categoryRepo;
        $this->customFieldRepository = $customFieldRepo;
           $this->uploadRepository = $uploadRepo;
    }

    /**
     * Display a listing of the Category.
     * GET|HEAD /categories
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function index(Request $request)
    {
        try{
            $this->categoryRepository->pushCriteria(new RequestCriteria($request));
            $this->categoryRepository->pushCriteria(new ParentCriteria($request));
            $this->categoryRepository->pushCriteria(new NearCriteria($request));
            $this->categoryRepository->pushCriteria(new LimitOffsetCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $categories = $this->categoryRepository->all();

        return $this->sendResponse($categories->toArray(), 'Categories retrieved successfully');
    }

    /**
     * Display the specified Category.
     * GET|HEAD /categories/{id}
     *
     * @param int $id
     *
     * @return JsonResponse
     */
     
      public function store(CreateCategoryRequest $request)
    {
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->categoryRepository->model());
        try {
            $category = $this->categoryRepository->create($input);
            $category->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));
            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($category, 'image');
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        // Flash::success(__('lang.saved_successfully', ['operator' => __('lang.category')]));

        return response()->json(['status'=>true,'message'=>'category created']);
    }
    
    
    
    
    
    
    
    
    
    public function delete($id)
    {
        $category = $this->categoryRepository->findWithoutFail($id);

        // if (empty($category)) {
        //     Flash::error('Category not found');

        //     return redirect(route('categories.index'));
        // }

        $this->categoryRepository->delete($id);
        return response()->json(['status'=>true,'message'=>'category deleted']);
    }
     
     
     
        public function edit($id)
    {
        $category = $this->categoryRepository->findWithoutFail($id);
        $parentCategory = $this->categoryRepository->pluck('name', 'id')->prepend(__('lang.category_parent_id_placeholder'), '');

        if (empty($category)) {
            // Flash::error(__('lang.not_found', ['operator' => __('lang.category')]));

            // return redirect(route('categories.index'));
            return response()->json(['status'=>true,'data'=>'category not found']);
        }
        $customFieldsValues = $category->customFieldsValues()->with('customField')->get();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->categoryRepository->model());
        $hasCustomField = in_array($this->categoryRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $html = generateCustomField($customFields, $customFieldsValues);
        }
        
        
         return response()->json(['status'=>true,'data'=>$category]);

        
    }
    
    
        public function update(UpdateCategoryRequest $request)
    {
        $id = $request->id;
        $category = $this->categoryRepository->findWithoutFail($id);

        if (empty($category)) {
              return response()->json(['status'=>true,'message'=>'category not found']);
        }
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->categoryRepository->model());
        try {
            $category = $this->categoryRepository->update($input, $id);

            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($category, 'image');
            }
            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $category->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

           return response()->json(['status'=>true,'message'=>'category updated']);
    }
     
     
     
     
     
    public function show($id)
    {
        /** @var Category $category */
        if (!empty($this->categoryRepository)) {
            $category = $this->categoryRepository->findWithoutFail($id);
        }

        if (empty($category)) {
            return $this->sendError('Category not found');
        }

        return $this->sendResponse($category->toArray(), 'Category retrieved successfully');
    }
}
