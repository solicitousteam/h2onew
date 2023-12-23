<?php
/*
 * File name: UserAPIController.php
 * Last modified: 2022.01.18 at 23:52:40
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2022
 */

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\UpdateUserRequest;
use App\Models\User;
use App\Repositories\CustomFieldRepository;
use App\Repositories\RoleRepository;
use App\Repositories\UploadRepository;
use App\Repositories\UserRepository;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;
use DB;
use Carbon\Carbon;

class UserAPIController extends Controller
{
    private $userRepository;
    private $uploadRepository;
    private $roleRepository;
    private $customFieldRepository;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
   
    public function __construct(UserRepository $userRepository, UploadRepository $uploadRepository, RoleRepository $roleRepository, CustomFieldRepository $customFieldRepo)
    {
        $this->userRepository = $userRepository;
        $this->uploadRepository = $uploadRepository;
        $this->roleRepository = $roleRepository;
        $this->customFieldRepository = $customFieldRepo;
    }
 function job_post(Request $request)
    {
        $user = DB::table('job_request')->insert(
             array(
                    'user_id'     =>   $request->input('user_id'), 
                    'title'   =>   $request->input('title'), 
                    'description'   =>   $request->input('description'), 
                    'duration'   =>   $request->input('duration'), 
                    'category_id'   =>   $request->input('category'),
                    'from_date'   =>   $request->input('from_date'),
                    'to_date'   =>   $request->input('to_date'),
                    'hospital_name' => $request->input('hospital_name'),
                    'location' => $request->input('location'),
                    'worked_functionality' => $request->input('worked_functionality'),
                    'gender' => $request->input('gender'),
                    'experience' => $request->input('experience'),
                    'qualification' => $request->input('qualification'),
                    'skill_set' => $request->input('skill_set'),
                    'start_time' => $request->input('start_time'),
                    'end_time' => $request->input('end_time'),
             )
        );

        if (!$user) {
            return $this->sendError('Job not posted', 200);
        }

        return $this->sendResponse($user, 'Job posted successfully');
    }
    
    
    
    
    
    
    
     function job_search(Request $request)
    {
            if($request->search)
     {
   $db = DB::table('job_request')->where('title', 'LIKE', "%$request->search%")->get();
   
      return response()->json(['status'=>true,'data'=>$db]);

}


  else
     {
   $db = DB::table('job_request')->get();
      return response()->json(['status'=>true,'data'=>$db]);
}
       
    }
    
    
    
         function job_status(Request $request)
    {
       
        $pending = DB::table('job_apply')->where('apply_status', 'pending')->count();
         $verified = DB::table('job_apply')->where('apply_status', 'verified')->count();
           $done = DB::table('job_apply')->where('apply_status', 'done')->count();
           $start = DB::table('job_apply')->where('apply_status', 'start')->count();
            $rejected = DB::table('job_apply')->where('apply_status', 'rejected')->count();
        
        $data = [
            'pending' => $pending,
            'verified' => $verified,
            'done' => $done,
            'start' => $start,
            'rejected' => $rejected,
            ];
        
        return response()->json(['status'=>true,'data'=>$data]);
       
    }
    
    
    
    
    function check_profile(Request $request)
    {
        
        
        
        
        $check_exists=DB::table('provider_document')->where('provider_id',$request->provider_id)->first();
        
        if(!empty($check_exists->aadhar) && !empty($check_exists->pan) && !empty($check_exists->degree) && !empty($check_exists->passport) && !empty($check_exists->medical) && !empty($check_exists->experience))
        {
     
        return response()->json(['status'=>true,'message'=>'Profile Completed']);
        
        }
        else
        {
         
        return response()->json(['status'=>false,'message'=>'Profile Not Completed']);
        }
        
    }
    
    
    
    
    
    
 function apply_job(Request $request)
    {
        $user = DB::table('job_apply')->insert(
             array(
                    'user_id'     =>   $request->input('user_id'), 
                    'job_id'   =>   $request->input('job_id'), 
             )
        );

        if (!$user) {
            return $this->sendError('Job not applied', 200);
        }

        return $this->sendResponse($user, 'Job apllied successfully');
    }
    
     function update_apply_status(Request $request)
    {
        $user = DB::table('job_apply') ->where('job_apply_id', $request->input('job_apply_id'))->update(
             array(
                    'apply_status'     =>   $request->input('apply_status'), 
             )
        );

        if (!$user) {
            return $this->sendError('Job not applied', 200);
        }

        return $this->sendResponse($user, 'Status changed successfully');
    }
    
    function update_apply_status_cancle(Request $request)
    {
        $user = DB::table('job_apply') ->where('job_apply_id', $request->input('job_apply_id'))->update(
             array(
                    'apply_status'     =>   $request->input('apply_status'), 
             )
        );

        if (!$user) {
            return $this->sendError('Job not applied', 200);
        }

        return $this->sendResponse($user, 'Status changed successfully');
    }
    
    
    function my_job_post(Request $request)
    {
        $user_id=$request->input('user_id');
       // DB::enableQueryLog(); // Enable query log
        $category_id=$request->input('category_id');
        if(isset($category_id))
        {
        $user = DB::table('job_request')->select('job_request.*','categories.name')->join('categories','categories.id','=','job_request.category_id')->where('job_request.category_id', $category_id)->get();
            
        }
        else{
            
        $user = DB::table('job_request')->select('job_request.*','categories.name')->join('categories','categories.id','=','job_request.category_id')->where('user_id', $user_id)->get();
        }
       
      //dd(DB::getQueryLog()); // Show results of log


        if (!$user) {
            return $this->sendError('Job not posted', 200);
        }

        return $this->sendResponse($user, 'Jobs Received successfully');
    }
    
    function my_job_post_filter(Request $request)
    {
        $user_id=$request->input('user_id');
       // DB::enableQueryLog(); // Enable query log
        $category_id=$request->input('category_id');
        if(isset($category_id))
        {
            $user = DB::table('job_request')->select('job_request.*','categories.name')
                ->join('categories','categories.id','=','job_request.category_id')
                ->where('job_request.category_id', $category_id)
                ->get();
            
        }
        else{
            
            $user = DB::table('job_request')->select('job_request.*','categories.name')
                    ->join('categories','categories.id','=','job_request.category_id')
                    ->where('user_id', $user_id)
                    ->get();
        }
       

      //dd(DB::getQueryLog()); // Show results of log

      $startDate = $request->from_date;
      $endDate   = $request->to_date;
      $filter_type   = $request->filter_type;

      if($filter_type == 1){

          $user = DB::table('job_request')->select('job_request.*','categories.name',
                  DB::raw("STR_TO_DATE(job_request.from_date, '%b %d,%Y') as fromdate"),)
                    ->join('categories','categories.id','=','job_request.category_id')
                    ->where('job_request.category_id', $category_id)
                    ->where(DB::raw('str_to_date(from_date, "%b %d,%Y")'),'>=',$startDate)
                    ->where(DB::raw('str_to_date(from_date, "%b %d,%Y")'),'<=',$endDate)
                    ->get();

      }else if($filter_type == 2){
              //Weekly

              $user = DB::table('job_request')->select('job_request.*','categories.name',
                      DB::raw("STR_TO_DATE(job_request.from_date, '%b %d,%Y') as fromdate"),)
                        ->join('categories','categories.id','=','job_request.category_id')
                        ->where('job_request.category_id', $category_id)
                        ->where(DB::raw('str_to_date(from_date, "%b %d,%Y")'),'>=','date(curdate() - interval weekday(curdate()) day)')
                        ->where(DB::raw('str_to_date(from_date, "%b %d,%Y")'),'<=','DATE_ADD(date(curdate() - interval weekday(curdate()) day), INTERVAL 6 DAY)')
                        ->get();
              

      }elseif($filter_type == 3){
          //monthly

          $curmonth = Carbon::now()->month;
          $curyear = Carbon::now()->year;

          $user = DB::table('job_request')->select('job_request.*','categories.name',
                  DB::raw("COALESCE(Month(STR_TO_DATE(job_request.from_date, '%b %d,%Y')),0) as curmonth"),
                  DB::raw("COALESCE(Year(STR_TO_DATE(job_request.from_date, '%b %d,%Y')),0) as curyear")   
                  )
                    ->join('categories','categories.id','=','job_request.category_id')
                    ->where('job_request.category_id', $category_id)
                    ->where(DB::raw('Month(str_to_date(from_date, "%b %d,%Y"))'),'=',$curmonth)
                    ->where(DB::raw('Year(str_to_date(from_date, "%b %d,%Y"))'),'=',$curyear)
                    ->get();

      }elseif($filter_type == 4){
          //yearly
          $reqyear = $request->year;

          $user = DB::table('job_request')->select('job_request.*','categories.name',
                  DB::raw("COALESCE(Month(STR_TO_DATE(job_request.from_date, '%b %d,%Y')),0) as curmonth"),
                  DB::raw("COALESCE(Year(STR_TO_DATE(job_request.from_date, '%b %d,%Y')),0) as curyear")   
                  )
                    ->join('categories','categories.id','=','job_request.category_id')
                    ->where('job_request.category_id', $category_id)
                    ->where(DB::raw('Year(str_to_date(from_date, "%b %d,%Y"))'),'=',$reqyear)
                    ->get();
          
      }

        if (!$user) {
            return $this->sendError('Job not posted', 200);
        }

        return $this->sendResponse($user, 'Jobs Received successfully');
    }
    
    // changes start here on 06-08-2022 ------------------------------
    function status_wise_job(Request $request)
    {
        $user_id=$request->input('user_id');
       // DB::enableQueryLog(); // Enable query log
        $job_status=$request->input('job_status');
            
        $wherearray = [['user_id','=',$user_id]];
        
        if(!empty($job_status))
            $wherearray[] = ['job_request.job_status','=',$job_status];
            
        $user = DB::table('job_request')->select('job_request.*','categories.name')->join('categories','categories.id','=','job_request.category_id')->where($wherearray)->get();
       
      //dd(DB::getQueryLog()); // Show results of log


        if (!$user) {
            return $this->sendError('Status wise job not posted', 200);
        }

        return $this->sendResponse($user, 'Status wise jobs received successfully');
    }
  
    function provider_status_wise_job(Request $request)
    {
        $user_id=$request->input('user_id');
         //DB::enableQueryLog(); // Enable query log
        $job_status=$request->input('job_status');
            
        $wherearray = [['job_apply.user_id','=',$user_id]];
        
        if(!empty($job_status))
            $wherearray[] = ['job_apply.apply_status','=',$job_status];
            
        $user = DB::table('job_request')->select('job_apply.user_id as provider_id','job_apply.*','job_request.*','categories.name')->join('categories','categories.id','=','job_request.category_id')->join('job_apply','job_apply.job_id','=','job_request.id')->where($wherearray)->get();
       
     // dd(DB::getQueryLog()); // Show results of log


        if (!$user) {
            return $this->sendError('Status wise job not posted', 200);
        }

        return $this->sendResponse($user, 'Status wise jobs received successfully');
    }
    
    function provider_status_wise_job_v2(Request $request)
    {
        $user_id=$request->input('user_id');
        $job_status=$request->input('job_status');
            
        $wherearray = [['job_apply.user_id','=',$user_id]];
        
        if(!empty($job_status))
            $wherearray[] = ['job_apply.apply_status','=',$job_status];
            
        $user = DB::table('job_request')->select('job_apply.user_id as provider_id','job_apply.*','job_request.*','categories.name')->join('categories','categories.id','=','job_request.category_id')->join('job_apply','job_apply.job_id','=','job_request.id')->where($wherearray)->get();
       
            $previous_week = strtotime("-1 week +1 day");
            $start_week = strtotime("last sunday midnight",$previous_week);
            $end_week = strtotime("next saturday",$start_week);
            $startDate = $request->from_date;
            $endDate   = $request->to_date;
            $filter_type   = $request->filter_type;
                                                                                                                                                                                                                                      //MONTH(STR_TO_DATE(job_request.from_date, '%b %d,%Y')) as CurMonth,

            if($filter_type == 1){
                
                    // $user = DB::table('job_request')->select('job_apply.user_id as provider_id','job_apply.*','job_request.*','categories.name')
                //         ->join('categories','categories.id','=','job_request.category_id')
                //         ->join('job_apply','job_apply.job_id','=','job_request.id')
                //         ->whereBetween('from_date', [$startDate, $endDate])
                //         ->where($wherearray)->get();

                $user = DB::table('job_request')->select('job_apply.user_id as provider_id','job_apply.*','job_request.*','categories.name',
                        DB::raw("STR_TO_DATE(job_request.from_date, '%b %d,%Y') as fromdate"),)
                    ->join('categories','categories.id','=','job_request.category_id')
                    ->join('job_apply','job_apply.job_id','=','job_request.id')
                    ->where(DB::raw('str_to_date(from_date, "%b %d,%Y")'),'>=',$startDate)
                    ->where(DB::raw('str_to_date(from_date, "%b %d,%Y")'),'<=',$endDate)
                    ->where($wherearray)
                    ->get();

                //dd($user);
                
                
            }else if($filter_type == 2){
                    //Weekly
                    
                    $user = DB::table('job_request')->select('job_apply.user_id as provider_id','job_apply.*','job_request.*','categories.name',
                        DB::raw("STR_TO_DATE(job_request.from_date, '%b %d,%Y') as fromdate"),)
                    ->join('categories','categories.id','=','job_request.category_id')
                    ->join('job_apply','job_apply.job_id','=','job_request.id')
                    ->where(DB::raw('str_to_date(from_date, "%b %d,%Y")'),'>=','date(curdate() - interval weekday(curdate()) day)')
                    ->where(DB::raw('str_to_date(from_date, "%b %d,%Y")'),'<=','DATE_ADD(date(curdate() - interval weekday(curdate()) day), INTERVAL 6 DAY)')
                    //->where($wherearray)
                    ->get();
                 
                    //dd($user);
                    
            }elseif($filter_type == 3){
                //monthly

                $curmonth = Carbon::now()->month;
                $curyear = Carbon::now()->year;

                $user = DB::table('job_request')->select('job_apply.user_id as provider_id','job_apply.*','job_request.*','categories.name',
                            DB::raw("COALESCE(Month(STR_TO_DATE(job_request.from_date, '%b %d,%Y')),0) as curmonth"),
                            DB::raw("COALESCE(Year(STR_TO_DATE(job_request.from_date, '%b %d,%Y')),0) as curyear")   
                        )
                        ->join('categories','categories.id','=','job_request.category_id')
                        ->join('job_apply','job_apply.job_id','=','job_request.id')
                        ->where(DB::raw('Month(str_to_date(from_date, "%b %d,%Y"))'),'=',$curmonth)
                        ->where(DB::raw('Year(str_to_date(from_date, "%b %d,%Y"))'),'=',$curyear)
                        ->where($wherearray)
                        ->get();

            }elseif($filter_type == 4){
                //yearly
                $reqyear = $request->year;

                $user = DB::table('job_request')->select('job_apply.user_id as provider_id','job_apply.*','job_request.*','categories.name',
                            DB::raw("COALESCE(Month(STR_TO_DATE(job_request.from_date, '%b %d,%Y')),0) as curmonth"),
                            DB::raw("COALESCE(Year(STR_TO_DATE(job_request.from_date, '%b %d,%Y')),0) as curyear")   
                        )
                        ->join('categories','categories.id','=','job_request.category_id')
                        ->join('job_apply','job_apply.job_id','=','job_request.id')
                        ->where(DB::raw('Year(str_to_date(from_date, "%b %d,%Y"))'),'=',$reqyear)
                        ->where($wherearray)
                        ->get();

                
            }

            

        if (!$user) {
            return $this->sendError('Status wise job not posted', 200);
        }

        return $this->sendResponse($user, 'Status wise jobs received successfully');
    }
    
    function status_wise_job_application(Request $request)
    {
        $id=$request->input('id');
       // DB::enableQueryLog(); // Enable query log
        $job_status=$request->input('job_status');
            
        $wherearray = [['job_request.id','=',$id]];
        
        if(!empty($job_status))
            $wherearray[] = ['job_apply.apply_status','=',$job_status];
            
        $user = DB::table('job_request')->select('job_apply.user_id as provider_id','job_apply.user_id as u_id','job_apply.*','job_request.*','categories.name','users.*')->join('categories','categories.id','=','job_request.category_id')->join('job_apply','job_apply.job_id','=','job_request.id')->join('users','users.id','=','job_apply.user_id')->where($wherearray)->get();
       
      //dd(DB::getQueryLog()); // Show results of log


        if (!$user) {
            return $this->sendError('Status wise job not posted', 200);
        }

        return $this->sendResponse($user, 'Status wise jobs received successfully');
    }
    // changes close here on 06-08-2022 ------------------------------
    
     function job_post_data(Request $request)
    {
        $id=$request->input('id');
        $user_id=$request->input('user_id');
        $user[]['job'] = DB::table('job_request')->where('id', $id)->get();
        $user[]['applied_count'] = DB::table('job_apply')->where('user_id', '=', $user_id)->where('job_id', '=', $id)->count();
        $user[]['job_applyid'] = DB::table('job_apply')->select('job_apply.job_apply_id')->where('user_id', '=', $user_id)->where('job_id', '=', $id)->orderBy('job_apply_id','desc')->first();


        if (!$user) {
            return $this->sendError('Job not posted', 200);
        }

        return $this->sendResponse($user, 'Jobs Received successfully');
    } 
    
    function user_job_post_data(Request $request)
    {
        $id=$request->input('id');
        $user_id=$request->input('user_id');
        $user[]['job'] = DB::table('job_request')->select('job_request.*','categories.name')->join('categories','categories.id','=','job_request.category_id')->where('job_request.id', $id)->get();
        $user[]['applied'] = DB::table('job_apply')->select('job_apply.*','users.name','users.email','users.phone_number')->join('users','users.id','=','job_apply.user_id')->where('job_apply.job_id', $id)->get();
        $user[]['applied_count'] = DB::table('job_apply')->where('user_id', '=', $user_id)->where('job_id', '=', $id)->count();

        if (!$user) {
            return $this->sendError('Job not posted', 200);
        }

        return $this->sendResponse($user, 'Jobs Received successfully');
    }
       function get_provider_data(Request $request)
    {
        $id=$request->input('id');
         $user = DB::table('job_request')->select('job_request.*','categories.name')->join('categories','categories.id','=','job_request.category_id')->where('job_request.id', $id)->get();
       

        if (!$user) {
            return $this->sendError('Job not posted', 200);
        }

        return $this->sendResponse($user, 'Jobs Received successfully');
    }
    
    
    
    
    function login(Request $request)
    {
        try {
            
            $this->validate($request, [
                'email' => 'required|email',
                'password' => 'required',
            ]);
            if (auth()->attempt(['email' => $request->input('email'), 'password' => $request->input('password')])) {
                // Authentication passed...
                $user = auth()->user();
                $user->device_token = $request->input('device_token', '');
                $user->save();
                
                return $this->sendResponse($user, 'User retrieved successfully');
            } else {
                return $this->sendError(__('auth.failed'), 200);
            }
        } catch (ValidationException $e) {
            return $this->sendError(array_values($e->errors()));
        } catch (Exception $e) {
            return $this->sendError($e->getMessage(), 200);
        }

    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param array $data
     * @return
     */
    function register(Request $request)
    {
        try {
            $this->validate($request, User::$rules);
            $user = new User;
            $user->name = $request->input('name');
            $user->email = $request->input('email');
            $user->phone_number = $request->input('phone_number');
            $user->phone_verified_at = $request->input('phone_verified_at');
            $user->device_token = $request->input('device_token', '');
            $user->password = Hash::make($request->input('password'));
            $user->api_token = Str::random(60);
            $user->save();

            $defaultRoles = $this->roleRepository->findByField('default', '1');
            $defaultRoles = $defaultRoles->pluck('name')->toArray();
            $user->assignRole($defaultRoles);

            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());

            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $user->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
        } catch (ValidationException $e) {
            return $this->sendError(array_values($e->errors()));
        } catch (Exception $e) {
            return $this->sendError($e->getMessage(), 200);
        }


        return $this->sendResponse($user, 'User retrieved successfully');
    }
    
    // register by social login script start here 06-08-2022 -------–-----------
    function social_register(Request $request)
    {
        $user = new User;
        
        $userdata = DB::table('users')->select('api_token')->where('email', $request->input('email'))->first();
        // $user = User::where('email',$userSocial->email)->first();
       
       if(!empty($userdata))
       {
            $user = $this->userRepository->findByField('api_token', $userdata->api_token)->first();
            
            if (!$user) {
                return $this->sendError('User not found', 200);
            }
            return $this->sendResponse($user, 'User retrieved successfully');
       }
       else
       {
            $user->name = !empty($request->input('name')) ? $request->input('name') : '';
            $user->email = !empty($request->input('email')) ? $request->input('email') : '';
            // $user->phone_number = !empty($request->input('phone_number')) ? $request->input('phone_number') : '';
            // $user->phone_verified_at = !empty($request->input('phone_verified_at')) ? $request->input('phone_verified_at') : '';
            $user->email_verified_at = date('Y-m-d H:i:s');
            $user->device_token = $request->input('device_token', '');
            $user->password = Hash::make(rand(11111,99999));
            $user->api_token = Str::random(60);
            $user->save();   
       }
        
        $defaultRoles = $this->roleRepository->findByField('default', '1');
        $defaultRoles = $defaultRoles->pluck('name')->toArray();
        $user->assignRole($defaultRoles);

        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());

        foreach (getCustomFieldsValues($customFields, $request) as $value) {
            $user->customFieldsValues()
                ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
        }
        
        return $this->sendResponse($user, 'User retrieved successfully');
    }
    // register by social login script close here 06-08-2022 -------–-----------
    

    function logout(Request $request)
    {
        $user = $this->userRepository->findByField('api_token', $request->input('api_token'))->first();
        if (!$user) {
            return $this->sendError('User not found', 200);
        }
        try {
            auth()->logout();
        } catch (Exception $e) {
            $this->sendError($e->getMessage(), 200);
        }
        return $this->sendResponse($user['name'], 'User logout successfully');

    }

    function user(Request $request)
    {
        $user = $this->userRepository->findByField('api_token', $request->input('api_token'))->first();

        if (!$user) {
            return $this->sendError('User not found', 200);
        }

        return $this->sendResponse($user, 'User retrieved successfully');
    }
    
    
    
     function user_detail($id)
    {
        
      $check_exists=DB::table('provider_document')->where('provider_id',$id)->first();
        
        if($check_exists)
        {
        
        
     $user =   DB::table('users')
->select('*')
->join('provider_document','provider_document.provider_id','=','users.id')
->where(['users.id' => $id])
->first();
}
else
{
      $user =   DB::table('users')->where(['users.id' => $id])->first();
    
}

        if (!$user) {
            return response()->json(['status'=>false]);
        }
else
{
      return response()->json(['status'=>true,'data'=>$user]); 
}
        
        
     
    }
    
    
    
    
    
    
    
    
    
    

    function settings(Request $request)
    {
        $settings = setting()->all();
        $settings = array_intersect_key($settings,
            [
                'default_tax' => '',
                'default_currency' => '',
                'default_currency_decimal_digits' => '',
                'app_name' => '',
                'currency_right' => '',
                'enable_paypal' => '',
                'enable_stripe' => '',
                'enable_razorpay' => '',
                'main_color' => '',
                'main_dark_color' => '',
                'second_color' => '',
                'second_dark_color' => '',
                'accent_color' => '',
                'accent_dark_color' => '',
                'scaffold_dark_color' => '',
                'scaffold_color' => '',
                'google_maps_key' => '',
                'fcm_key' => '',
                'mobile_language' => '',
                'app_version' => '',
                'enable_version' => '',
                'distance_unit' => '',
                'default_theme' => '',
                'app_short_description' => '',
                'default_country_code' => ''
            ]
        );
        if (!$settings) {
            return $this->sendError('Settings not found', 200);
        }
        $upload = $this->uploadRepository->findByField('uuid', setting('app_logo', ''))->first();
        $settings['app_logo'] = asset('images/logo_default.png');
        if ($upload && $upload->hasMedia('app_logo')) {
            $settings['app_logo'] = $upload->getFirstMediaUrl('app_logo');
        }

        return $this->sendResponse($settings, 'Settings retrieved successfully');
    }

    /**
     * Update the specified User in storage.
     *
     * @param int $id
     * @param UpdateUserRequest $request
     *
     */
    public function update(int $id, UpdateUserRequest $request): JsonResponse
    {
        $user = $this->userRepository->findWithoutFail($id);
        if (empty($user)) {
            return $this->sendError('User not found');
        }
        $input = $request->except(['api_token']);
        try {
            if ($request->has('device_token')) {
                $user = $this->userRepository->update($request->only('device_token'), $id);
            } else {
                $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->userRepository->model());
                if (isset($input['password'])) {
                    $input['password'] = Hash::make($request->input('password'));
                }
                if (isset($input['avatar']) && $input['avatar']) {
                    $cacheUpload = $this->uploadRepository->getByUuid($input['avatar']);
                    $mediaItem = $cacheUpload->getMedia('avatar')->first();
                    if ($user->hasMedia('avatar')) {
                        $user->getFirstMedia('avatar')->delete();
                    }
                    $mediaItem->copy($user, 'avatar');
                }
                $user = $this->userRepository->update($input, $id);

                foreach (getCustomFieldsValues($customFields, $request) as $value) {
                    $user->customFieldsValues()
                        ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
                }
            }
        } catch (Exception $e) {
            return $this->sendError($e->getMessage(), 200);
        }

        return $this->sendResponse($user, __('lang.updated_successfully', ['operator' => __('lang.user')]));
    }

    function sendResetLinkEmail(Request $request): JsonResponse
    {
        try {
            $this->validate($request, ['email' => 'required|email|exists:users']);
            $response = Password::broker()->sendResetLink(
                $request->only('email')
            );
            if ($response == Password::RESET_LINK_SENT) {
                return $this->sendResponse(true, 'Reset link was sent successfully');
            } else {
                return $this->sendError('Reset link not sent');
            }
        } catch (ValidationException $e) {
            return $this->sendError($e->getMessage());
        } catch (Exception $e) {
            return $this->sendError("Email not configured in your admin panel settings");
        }

    }
    
    public function doc_upload(Request $request){
        $aadhar=null;
        $pan=null;
        $degree=null;
        $passport=null;
        $medical=null;
        $experience=null;
        
        if($request->aadhar){
            $file=$request->aadhar;
            $destination_path='upload/documents';
            $fnn = rand().'.'.$file->getClientOriginalExtension();
            $file->move($destination_path,$fnn);     
            $aadhar='upload/documents/'.$fnn;
            
            
            
            
            $check_exists=DB::table('provider_document')->where('provider_id',$request->provider_id)->first();
         if($check_exists)
         {
            DB::table('provider_document')->where('provider_id',$request->provider_id)->update(['aadhar'=>$aadhar]);
            
         }
        
        else
        {
        
        if($aadhar ){
            DB::table('provider_document')->insert(['aadhar'=>$aadhar,'provider_id'=>$request->provider_id]);
          
        }
        }
            
        }
        
        if($request->pan){
            $file=$request->pan;
            $destination_path='upload/documents';
            $fnn = rand().'.'.$file->getClientOriginalExtension();
            $file->move($destination_path,$fnn);     
            $pan='upload/documents/'.$fnn;
            
            
            $check_exists=DB::table('provider_document')->where('provider_id',$request->provider_id)->first();
         if($check_exists)
         {
            DB::table('provider_document')->where('provider_id',$request->provider_id)->update(['pan'=>$pan]);
             
         }
        
        else
        {
        
        if($pan){
            DB::table('provider_document')->insert(['pan'=>$pan,'provider_id'=>$request->provider_id]);
          
        }
        }
            
        }
        
        
        
        
        
        
        
        if($request->degree){
         
            
             foreach($request->file('degree') as $file)
            {
                 
              
            $destination_path='upload/documents';
            $fnn = rand().'.'.$file->getClientOriginalExtension();
            $file->move($destination_path,$fnn);     
            $degree[]='upload/documents/'.$fnn; 
                // $degree[] = $name;  
            }
            
           
            
            
            $check_exists=DB::table('provider_document')->where('provider_id',$request->provider_id)->first();
         if($check_exists)
         {
            DB::table('provider_document')->where('provider_id',$request->provider_id)->update(['degree'=>json_encode($degree)]);
            
         }
        
        else
        {
        
        if( $degree ){
         
        }
        }
            
        }
        
        
        
        
        
         if($request->passport){
            $file=$request->passport;
            $destination_path='upload/documents';
            $fnn = rand().'.'.$file->getClientOriginalExtension();
            $file->move($destination_path,$fnn);     
            $passport='upload/documents/'.$fnn;
            
            $check_exists=DB::table('provider_document')->where('provider_id',$request->provider_id)->first();
         if($check_exists)
         {
            DB::table('provider_document')->where('provider_id',$request->provider_id)->update(['passport'=>$passport]);
           
         }
        
        else
        {
        
        
            DB::table('provider_document')->insert(['passport'=>$passport,'provider_id'=>$request->provider_id]);
          
       
        }
            
        }
        
        
        
        
        
        
         if($request->medical){
             
              foreach($request->file('medical') as $file)
            {
                 
               
             

            $destination_path='upload/documents';
            $fnn = rand().'.'.$file->getClientOriginalExtension();
            $file->move($destination_path,$fnn);     
            $medical[]='upload/documents/'.$fnn; 
                // $degree[] = $name;  
            }
             
             
            // $file=$request->medical;
            // $destination_path='upload/documents';
            // $fnn = rand().'.'.$file->getClientOriginalExtension();
            // $file->move($destination_path,$fnn);     
            // $medical='upload/documents/'.$fnn;
            
            $check_exists=DB::table('provider_document')->where('provider_id',$request->provider_id)->first();
         if($check_exists)
         {
            DB::table('provider_document')->where('provider_id',$request->provider_id)->update(['medical'=>json_encode($medical)]);
           
         }
        
        else
        {
        
       
            DB::table('provider_document')->insert(['medical'=>$medical,'provider_id'=>$request->provider_id]);
         
        
        }
            
        }
        
        
        
        
        
        
        
        
         if($request->experience){
             
              foreach($request->file('experience') as $file)
            {
                 
               
             

            $destination_path='upload/documents';
            $fnn = rand().'.'.$file->getClientOriginalExtension();
            $file->move($destination_path,$fnn);     
            $experience[]='upload/documents/'.$fnn; 
                // $degree[] = $name;  
            }
             
             
            // $file=$request->experience;
            // $destination_path='upload/documents';
            // $fnn = rand().'.'.$file->getClientOriginalExtension();
            // $file->move($destination_path,$fnn);     
            // $experience='upload/documents/'.$fnn;
            
            $check_exists=DB::table('provider_document')->where('provider_id',$request->provider_id)->first();
         if($check_exists)
         {
            DB::table('provider_document')->where('provider_id',$request->provider_id)->update(['experience'=>json_encode($experience)]);
            
         }
        
        else
        {
        
        
            DB::table('provider_document')->insert(['experience'=>$experience,'provider_id'=>$request->provider_id]);
           
        
        }
            
        }
        
         return response()->json(['status'=>true,'message'=>'success']); 
        // return response()->json(['status'=>false,'message'=>'failed']);
        
    }
    
    
     public function document_delete($provider_id){
        $check_exists=DB::table('provider_document')->where('provider_id',$provider_id)->first();
        if($check_exists){
            DB::table('provider_document')->where('provider_id',$provider_id)->delete();
            return response()->json(['status'=>true,'message'=>'Documents deleted']);
        }
        return response()->json(['status'=>false,'message'=>'Documents not exist']);
    }
    
    
    
    
    
    
    public function document_exist($provider_id){
        
        
        $id = $provider_id;
             
      $check_exists=DB::table('provider_document')->where('provider_id',$id)->first();
        
        if($check_exists)
        {
        
        
     $user =   DB::table('users')
->select('*')
->join('provider_document','provider_document.provider_id','=','users.id')
->where(['users.id' => $id])
->first();
}
else
{
      $user =   DB::table('users')->where(['users.id' => $id])->first();
    
}

        if (!$user) {
            return response()->json(['status'=>false]);
        }
else
{
      return response()->json(['status'=>true,'data'=>$user]); 
}
    }
    
    
    
    
    public function provider_all($id){
        
       
        $data = DB::table('users')
->select('*')
->join('provider_document','provider_document.provider_id','=','users.id')
->where('provider_document.provider_id',$id)
->first();
        
        
        
        if($data){
            return response()->json(['status'=>true,'data'=> $data]);
        }
        return response()->json(['status'=>false,'message'=>'Not available']);
    }
    function bankAdd(Request $request)
    {
        if (!$request->input('user_id')) {
            return $this->sendError('User not found', 200);
        }
        $bank = DB::table('banks')->insert(
             array(
                    'user_id'     =>   $request->input('user_id'), 
                    'ac_number'   =>   $request->input('ac_number'), 
                    'bank_name'   =>   $request->input('bank_name'), 
                    'name_as_per_bank'   =>   $request->input('name_as_per_bank'), 
                    'ifsc_code'   =>   $request->input('ifsc_code'),
                    'branch_name'   =>   $request->input('branch_name')
             )
        );

        if (!$bank) {
            return $this->sendError('Bank not created', 200);
        }

        return $this->sendResponse($bank, 'Bank created successfully');
    }
    function availabilityAdd(Request $request)
    {
        if (!$request->input('user_id')) {
            return $this->sendError('User not found', 200);
        }
        $availability = DB::table('availabilities')->insert(
             array(
                    'user_id'     =>   $request->input('user_id'), 
                    'pref_location'   =>   $request->input('pref_location'), 
                    'pref_start_time'   =>   $request->input('pref_start_time'), 
                    'pref_end_time'   =>   $request->input('pref_end_time'), 
                    'pref_date'   =>   $request->input('pref_date'),
                    'pref_day'   =>   $request->input('pref_day'),
                    'remaining_hour'   =>   $request->input('remaining_hour'),
                    'pref_location_lat_long'   =>   $request->input('pref_location_lat_long'),
             )
        );

        if (!$availability) {
            return $this->sendError('Availability not created', 200);
        }

        return $this->sendResponse($availability, 'Availability created successfully');
    }
    function getBanks(Request $request)
    {
        if (!$request->input('user_id')) {
            return $this->sendError('User not found', 200);
        }
        $db = DB::table('banks')->where('user_id', $request->input('user_id'))->get();
        return response()->json(['status'=>true,'data'=>$db]);
    }
    function getAvailability(Request $request)
    {
        if (!$request->input('user_id')) {
            return $this->sendError('User not found', 200);
        }
        $db = DB::table('availabilities')->where('user_id', $request->input('user_id'))->get();
        return response()->json(['status'=>true,'data'=>$db]);
    }
    function paymentMethodAdd(Request $request)
    {
        if (!$request->input('user_id')) {
            return $this->sendError('User not found', 200);
        }
        if (
            !$request->input('provider_id') ||
            !$request->input('job_id') ||
            !$request->input('job_apply_id') ||
            !$request->input('payment_id')
        ) {
            return $this->sendError('fill all fields', 200);
        }
        $payment = DB::table('save_payment_records')->insert(
             array(
                    'user_id' => $request->input('user_id'), 
                    'provider_id' => $request->input('provider_id'), 
                    'job_id' => $request->input('job_id'), 
                    'job_apply_id' => $request->input('job_apply_id'), 
                    'payment_id' => $request->input('payment_id'),
             )
        );

        if (!$payment) {
            return $this->sendError('Payment record not created', 200);
        }

        return $this->sendResponse($payment, 'Payment record created successfully');
    }
    function sendOtpForJob(Request $request)
    {
        if (!$request->input('user_id')) {
            return $this->sendError('User not found', 200);
        }
        $user = DB::table('users')->where(['users.id' => $request->input('user_id')])->first();
        if (!$user) {
            return response()->json(['status'=>false]);
        } else {
            $otp = rand(11111,99999);
            return response()->json(['status' => true, 'message' => 'OTP is: '.$otp, 'otp' => $otp]); 
        }
    }
    
    function hospitalAdd(Request $request)
    {
        if (!$request->input('user_id')) {
            return $this->sendError('User not found', 200);
        }
        $nabh_certificate_file = NULL;
        if($request->nabh_certificate_file) {
            $file = $request->nabh_certificate_file;
            $destination_path='upload/hospitalImg';
            $fnn = rand().'.'.$file->getClientOriginalExtension();
            $file->move($destination_path,$fnn);     
            $nabh_certificate_file = 'upload/hospitalImg/'.$fnn;
        }
        $hospital = DB::table('hospitals')->insert(
             array(
                    'user_id' => $request->input('user_id'), 
                    'hospital_name' => $request->input('hospital_name'), 
                    'hospital_address' => $request->input('hospital_address'), 
                    'nabh_certificate' => $request->input('nabh_certificate'), 
                    'nabh_certificate_file' => $nabh_certificate_file,
                    'category_id' => $request->input('category_id'),
                    'amount_rate_per_hour' => $request->input('amount_rate_per_hour'),
            )
        );

        if (!$hospital) {
            return $this->sendError('Hospital not created', 200);
        }

        return $this->sendResponse($hospital, 'Hospital created successfully');
    }
    function hospitalList(Request $request)
    {
        if (!$request->input('user_id')) {
            return $this->sendError('User not found', 200);
        }
        $db = DB::table('hospitals')->where('user_id', $request->input('user_id'))->get();
        
        return response()->json(['status'=>true,'data'=>$db]);
    }
    function feedbackToJobSiker(Request $request)
    {
        $fd = DB::table('app_feedbacks')->insert(
             array(
                    'user_id'     =>   $request->input('user_id'), 
                    'provider_id'   =>   $request->input('provider_id'), 
                    'job_id'   =>   $request->input('job_id'), 
                    'job_apply_id'   =>   $request->input('job_apply_id'), 
                    'competancy_rating'   =>   $request->input('competancy_rating'),
                    'service_rating'   =>   $request->input('service_rating'),
                    'knowledge_rating'   =>   $request->input('knowledge_rating'),
                    'behaviour_rating' => $request->input('behaviour_rating'),
                    'grooming_rating' => $request->input('grooming_rating'),
                    'punctuality_rating' => $request->input('punctuality_rating'),
                    'feedback' => $request->input('feedback'),
             )
        );

        if (!$fd) {
            return $this->sendError('Feedback not posted', 200);
        }

        return $this->sendResponse($fd, 'Feedback posted successfully');
    }
    function verifyDocument(Request $request)
    {
        $vd = DB::table('verify_documents')->insert(
             array(
                    'user_id'     =>   $request->input('user_id'), 
                    'provider_id'   =>   $request->input('provider_id'), 
                    'job_id'   =>   $request->input('job_id'), 
                    'job_apply_id'   =>   $request->input('job_apply_id'),
             )
        );

        if (!$vd) {
            return $this->sendError('Document not posted', 200);
        }

        return $this->sendResponse($vd, 'Document posted successfully');
    }

    function documentFeedbackToJobSiker(Request $request)
    {
        $fd = DB::table('document_feedbacks')->insert(
             array(
                    'user_id'     =>   $request->input('user_id'), 
                    'provider_id'   =>   $request->input('provider_id'), 
                    'job_id'   =>   $request->input('job_id'), 
                    'job_apply_id'   =>   $request->input('job_apply_id'), 
                    'pan_rating'   =>   $request->input('pan_rating'),
                    'degree_rating'   =>   $request->input('degree_rating'),
                    'passport_rating'   =>   $request->input('passport_rating'),
                    'medical_rating'   =>   $request->input('medical_rating'),
                    'experience_rating'   =>   $request->input('experience_rating'),
                    'aadhaar_rating' => $request->input('aadhaar_rating'),
                    'feedback' => $request->input('feedback'),
             )
        );

        if (!$fd) {
            return $this->sendError('Feedback not posted', 200);
        }

        return $this->sendResponse($fd, 'Feedback posted successfully');
    }
    function employerDetail($id)
    {
        
        $check_exists=DB::table('provider_document')->where('provider_id',$id)->first();
        
        if($check_exists) {
            $user =   DB::table('users')->select('*')
                    ->join('provider_document','provider_document.provider_id','=','users.id')
                    ->where(['users.id' => $id])->first();
        } else {
            $user =   DB::table('users')->where(['users.id' => $id])->first();
        }

        if (!$user) {
            return response()->json(['status'=>false]);
        } else {
            $hospital = DB::table('hospitals')->where('user_id', $id)->orderBy('id','desc')->first();
            return response()->json(['status'=>true, 'data'=>$user, 'hospital' => $hospital]); 
        }
    }
    function feedbackToH2O(Request $request)
    {
        $fd = DB::table('h2o_feedbacks')->insert(
             array(
                    'user_id'     =>   $request->input('user_id'), 
                    'app_perfomance_rating'   =>   $request->input('app_perfomance_rating'),
                    'customer_care_rating'   =>   $request->input('customer_care_rating'),
                    'payment_process_rating'   =>   $request->input('payment_process_rating'),
                    'app_feature_rating'   =>   $request->input('app_feature_rating'),
                    'app_service_rating'   =>   $request->input('app_service_rating'),
                    'feedback' => $request->input('feedback'),
             )
        );

        if (!$fd) {
            return $this->sendError('Feedback not posted', 200);
        }

        return $this->sendResponse($fd, 'Feedback posted successfully');
    }

    function providerFeedback(Request $request)
    {
        $fd = DB::table('provider_feedbacks')->insert(
             array(
                    'user_id'     =>   $request->input('user_id'),
                    'employer_id'   =>   $request->input('employer_id'),
                    'job_id'   =>   $request->input('job_id'),
                    'job_apply_id'   =>   $request->input('job_apply_id'),
                    'hospital_facility_rating'   =>   $request->input('hospital_facility_rating'),
                    'safety_meansurement_rating'   =>   $request->input('safety_meansurement_rating'),
                    'job_seeker_rating'   =>   $request->input('job_seeker_rating'),
                    'overall_experience_rating'   =>   $request->input('overall_experience_rating'),
                    'hospitality_rating'   =>   $request->input('hospitality_rating'),
                    'technical_support_rating'   =>   $request->input('technical_support_rating'),
                    'feedback' => $request->input('feedback'),
             )
        );

        if (!$fd) {
            return $this->sendError('Feedback not posted', 200);
        }

        return $this->sendResponse($fd, 'Feedback posted successfully');
    }
}
