<?php
/*
 * File name: AddressAPIController.php
 * Last modified: 2021.02.18 at 12:08:19
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Controllers\API;


use App\Http\Controllers\Controller;
use App\Models\Address;
use App\Repositories\AddressRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;
use DB;
use App\Models\User;


class AllNotificationController extends Controller
{
    
    
      public function signup_notification(Request $request)
    {
     
        
        
        
        $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
        $SERVER_API_KEY = env('SERVER_API_KEY');
  
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => 'H20',
                "body" => 'Welcome! You have successfully registered yourself on H2O',  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
  
        // dd($response);
        
          return $response;
    }
    
    
    
    
       public function status_notification(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
        $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='';
    $body ='';
  
          if($request->status == "accept")
          {
              $title ='h20';
              $body = 'Hello Mr X has accepted the job you have posted Job Title';
              
          }
          else
          {
              
              $title ='h20';
              $body = 'Hello Mr X the Job Service has been rejected by the Employer(Hospital Name) for the Services ICU Nurse';  
          }
  
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
  
        dd($response);
    }
    
    
    
        public function payment_by_employer(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
        $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Congratulations! You have successfully accepted the service!';
  
         
  
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
  
        dd($response);
    }
    
    
    
    
    

    

     public function payment_confirmed(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Payment Confirmed';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
  
        dd($response);
    }
    
    
    
    
     public function start_job(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='1,2,3,4,5,6 is your One Time Password(OTP) to start the job.Please enter OTP to proceed.';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
  
        dd($response);
    }
    
    
    
       public function complete_job(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='You have successfully completed the job, payment will be credited in 3 working days. Please click the below link to provide your Feedback.';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
        dd($response);
    }
    
    
     public function approve_by_employer(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Congratulations! Your Employer has approved your Job Service and payment will be credited to your Bank Account in 3 working days';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
        dd($response);
    }
    
    
    
       public function payment_by_h20(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Congratulations!  We have successfully transferred amount of Rs****** to your Bank Account';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
        dd($response);
    }
    
    
       public function payment_by_h20_w(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Congratulations!  We have successfully transferred amount of Rs***** to your Wallet';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
        dd($response);
    } 
    
    
    
    
    
    
    
    
    
      public function job_service_rejected(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Hello Mr X the Job Service has been rejected by the Employer(Hospital Name) for the Services ICU Nurse.';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
        dd($response);
    } 
    
    
    
       public function notification_on_post(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Congratulations! You have successfully posted a New Job for Job Title';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
        dd($response);
    } 
    
    
      public function js_accept_job(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Hello Mr X has accepted the job you have posted Job Title';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
        dd($response);
    } 
    
    
    
      public function payment_confirm_location(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Congratulations! you have made a payment successfully to H2O!';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
        dd($response);
    } 
    
    
      public function js_report(Request $request)
    {
         $firebaseToken = User::whereNotNull('device_token')->pluck('device_token')->all();
          
    $SERVER_API_KEY = env('SERVER_API_KEY');
    $title='H20';
    $body ='Congratulations! You have successfully posted a New Job for Job Title';
  
        
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $title,
                "body" => $body,  
            ]
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
        dd($response);
    } 
    
    
    
    
    
    public function sms(Request $request)
    {
     $apiKey = urlencode('cPRyNd+iQZw-F5hVMdff4msYgPsdwYUMfAZUlt4BPZ');
	
	$numbers = array($request->mobile);
	$sender = urlencode('MEDCOM');
	$otp =1234;
	$message = rawurlencode('Med360 Alert- Your documents have been rejected. We request you to please visit the link sent to your email and upload the documents again. Thanks for registering with us.');
 
	$numbers = implode(',', $numbers);
 
	// Prepare data for POST request
	$data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message);
 
	// Send the POST request with cURL
	$ch = curl_init('https://api.textlocal.in/send/');
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$response = curl_exec($ch);
	curl_close($ch);
	
	// Process your response here
	echo $response;    
        
        
    }
  
  
  
}
