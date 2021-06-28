<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use App\Models\User;
use App\Classes\GeniusMailer;
use App\Models\Notification;
use Auth;
use Illuminate\Support\Facades\Input;
use Validator;
use Nexmo\Laravel\Facade\Nexmo as Nexmo;
use Carbon\Carbon;
use Session;

use Illuminate\Support\Facades\DB;

class RegisterController extends Controller
{

    public function register(Request $request)
    {

		
		$user = new User;
		$input = $request->all();   
		
		
		if($user->where('phone',$request->phone)->where('phone_verified',null)->first()){
			
			return response()->json("You are already registered. Please verify your mobile number");
		}

    	$gs = Generalsetting::findOrFail(1);

    	if($gs->is_capcha == 1)
    	{
	        $value = session('captcha_string');
	        if ($request->codes != $value){
	            return response()->json(array('errors' => [ 0 => 'Please enter Correct Capcha Code.' ]));    
	        }    		
    	}


        //--- Validation Section

        $rules = [
				'phone'   => 'required|unique:users',
		        'email'   => 'email|unique:users',
		        'password' => 'required|confirmed'
                ];
        $validator = Validator::make(Input::all(), $rules);
        
        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

	        $user = new User;
			$input = $request->all();   
			
			
			if($user->where('phone',$request->phone)->where('phone_verified',null)->first()){
				
				return response()->json("You are already registered. Please verify your mobile number");
			}


	        $input['password'] = bcrypt($request['password']);
	        $token = md5(time().$request->name.$request->email);
	        $input['verification_link'] = $token;
	        $input['affilate_code'] = md5($request->name.$request->email);

	          if(!empty($request->vendor))
	          {
					//--- Validation Section
					$rules = [
						'shop_name' => 'unique:users',
						'shop_number'  => 'max:10'
							];
					$customs = [
						'shop_name.unique' => 'This Shop Name has already been taken.',
						'shop_number.max'  => 'Shop Number Must Be Less Then 10 Digit.'
					];

					$validator = Validator::make(Input::all(), $rules, $customs);
					if ($validator->fails()) {
					return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
					}
					$input['is_vendor'] = 1;

			  }
			  
			$user->fill($input)->save();
	        if($gs->is_verification_email == 1)
	        {
				$to = $request->email;
				$subject = 'Verify your email address.';
				$msg = "Dear Customer,<br> We noticed that you need to verify your email address. <a href=".url('user/register/verify/'.$token).">Simply click here to verify. </a>";
				//Sending Email To Customer
	        if($gs->is_smtp == 1)
	        {

				$data = [
					'to' => $to,
					'subject' => $subject,
					'body' => $msg,
				];

	        $mailer = new GeniusMailer();
	        $mailer->sendCustomMail($data);
	        }
	        else
	        {
	        $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
	        mail($to,$subject,$msg,$headers);
	        }
          	return response()->json('We need to verify your email address. We have sent an email to '.$to.' to verify your email address. Please click link in that email to continue.');
	        }
	        else {

			$user->email_verified = 'Yes';
			


			$user->update();
			
		
		
	        $notification = new Notification;
	        $notification->user_id = $user->id;
	        $notification->save();
			// Auth::guard('web')->login($user); 
			
			$otpuser = new User();
			$last_user = $otpuser->orderBy('id','desc')->first();
			if($last_user){	

				// return response()->json($last_user->phone);
				
				// $otp= rand(0000,9999);
				$otp = 1111;
				
				$currentDateTime = Carbon::now();
				$newDateTime = Carbon::now()->addMinutes(5);

				if(DB::table('users_otp')->insert(
					[
						'number' =>$last_user->phone,
						'code'=>$otp,
						'action'=>1,
						'is_verified'=>0,
						'expired_at'=>$newDateTime,
						'user_id'=>$last_user->id

					]
				)){
					// $send = Nexmo::message()->send([
					// 	'to'   => $last_user->phone ,
					// 	'from' => 'Chabikathi',
					// 	'text' => 'OTP CODE IS '.$otp
					// ]);
					$send = 1;

					Session::put('phone', $last_user->phone);
					Session::put('otp', $otp);
					$request->session()->save();

					if($send){
						return response()->json("Please wait for OTP Message");
					}else{
						return response()->json("Something went wrong");
					}
				}else{
					return response()->json("Something went wrong");
				}

			
				
			}

          	return response()->json(1);
	        }

	}
	

	public function Vendorregister(Request $request)
    {

		
		$user = new User;
		$input = $request->all();   
		
		
		if($user->where('phone',$request->phone)->where('phone_verified',null)->first()){
			
			return response()->json("You are already registered. Please verify your mobile number");
		}

    	$gs = Generalsetting::findOrFail(1);

    	if($gs->is_capcha == 1)
    	{
	        $value = session('captcha_string');
	        if ($request->codes != $value){
	            return response()->json(array('errors' => [ 0 => 'Please enter Correct Capcha Code.' ]));    
	        }    		
    	}


        //--- Validation Section

        $rules = [
				'phone'   => 'required|unique:users',
		        'email'   => 'email|unique:users',
		        'password' => 'required|confirmed'
                ];
        $validator = Validator::make(Input::all(), $rules);
        
        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

	        $user = new User;
			$input = $request->all();   
			
			
			if($user->where('phone',$request->phone)->where('phone_verified',null)->first()){
				
				return response()->json("You are already registered. Please verify your mobile number");
			}


	        $input['password'] = bcrypt($request['password']);
	        $token = md5(time().$request->name.$request->email);
	        $input['verification_link'] = $token;
	        $input['affilate_code'] = md5($request->name.$request->email);

	          if(!empty($request->vendor))
	          {
					//--- Validation Section
					$rules = [
						'shop_name' => 'unique:users',
						'shop_number'  => 'max:10'
							];
					$customs = [
						'shop_name.unique' => 'This Shop Name has already been taken.',
						'shop_number.max'  => 'Shop Number Must Be Less Then 10 Digit.'
					];

					$validator = Validator::make(Input::all(), $rules, $customs);
					if ($validator->fails()) {
					return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
					}
					$input['is_vendor'] = 3;

			  }
			$input['is_vendor'] = 3;
			$user->fill($input)->save();
	        if($gs->is_verification_email == 1)
	        {
				$to = $request->email;
				$subject = 'Verify your email address.';
				$msg = "Dear Customer,<br> We noticed that you need to verify your email address. <a href=".url('user/register/verify/'.$token).">Simply click here to verify. </a>";
				//Sending Email To Customer
	        if($gs->is_smtp == 1)
	        {

				$data = [
					'to' => $to,
					'subject' => $subject,
					'body' => $msg,
				];

	        $mailer = new GeniusMailer();
	        $mailer->sendCustomMail($data);
	        }
	        else
	        {
	        $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
	        mail($to,$subject,$msg,$headers);
	        }
          	return response()->json('We need to verify your email address. We have sent an email to '.$to.' to verify your email address. Please click link in that email to continue.');
	        }
	        else {

			$user->email_verified = 'Yes';
			


			$user->update();
			
		
		
	        $notification = new Notification;
	        $notification->user_id = $user->id;
	        $notification->save();
			// Auth::guard('web')->login($user); 
			
			$otpuser = new User();
			$last_user = $otpuser->orderBy('id','desc')->first();
			if($last_user){	

				// return response()->json($last_user->phone);
				
				// $otp= rand(0000,9999);
				$otp = 1111;
				
				$currentDateTime = Carbon::now();
				$newDateTime = Carbon::now()->addMinutes(5);

				if(DB::table('users_otp')->insert(
					[
						'number' =>$last_user->phone,
						'code'=>$otp,
						'action'=>1,
						'is_verified'=>0,
						'expired_at'=>$newDateTime,
						'user_id'=>$last_user->id

					]
				)){
					// $send = Nexmo::message()->send([
					// 	'to'   => $last_user->phone ,
					// 	'from' => 'Chabikathi',
					// 	'text' => 'OTP CODE IS '.$otp
					// ]);
					$send = 1;

					Session::put('phone', $last_user->phone);
					Session::put('otp', $otp);
					$request->session()->save();

					if($send){
						return response()->json("Please wait for OTP Message");
					}else{
						return response()->json("Something went wrong");
					}
				}else{
					return response()->json("Something went wrong");
				}

			
				
			}

          	return response()->json(1);
	        }

	}
	


	public function showOtpForm()
    {
      return view('user.otp');
	}
	
	public function otpSubmit(Request $request)
    {
	//   dd($request);die();
      $gs = Generalsetting::findOrFail(1);
	  $input =  $request->all();
	//   dd($request);die();
	  
      if ( User::where('phone', '=', $request->phone)->count() > 0) {


				$chkuser = DB::table('users_otp')->where('code',$request->otp)->where('number', '=', $request->phone)->count() ;

				if ($chkuser > 0) {

					$users_otp = DB::table('users_otp')->where('code',$request->otp)->where('number', '=', $request->phone)
						->update([
							'action'=>2,
							'is_verified'=>1,

						]);

					$users = User::where('phone', '=', $request->phone)->update([
						'phone_verified'=>1
					]);

					$d = [];
					$d['msg'] = 'OTP verified successfully';
					$d['status'] = 1;

					Session::forget('phone');
					Session::forget('otp');
					
					$msg = '<h1 style="background:green;color:white;padding:10px;text-align:center;">OTP Verified Successfully. Return to <a href="'.url('/user/login').'">Login</a></h1>';
					  echo   $msg ;
					  die();
					
					return redirect()->route('user-dashboard')->with('success','OTP Verified successfully');    
					

				}else{
					$d = [];
					$d['msg'] = 'OTP verified failed';
					$d['status'] = 0;
					
					return redirect()->route('user.login')->with('error','OTP failed');  
				}
		}else{
			$d = [];
			$d['msg'] = 'OTP verified failed';
			$d['status'] = 0;
			
			return redirect()->route('user.login')->with('error','OTP failed');  
		}

		
 
    }




    public function token($token)
    {
        $gs = Generalsetting::findOrFail(1);

        if($gs->is_verification_email == 1)
	        {    	
        $user = User::where('verification_link','=',$token)->first();
        if(isset($user))
        {
            $user->email_verified = 'Yes';
            $user->update();
	        $notification = new Notification;
	        $notification->user_id = $user->id;
	        $notification->save();
            Auth::guard('web')->login($user); 
            return redirect()->route('user-dashboard')->with('success','Email Verified Successfully');
        }
    		}
    		else {
    		return redirect()->back();	
    		}
	}
	


	public function showRMobileForm()
    {
      return view('user.rmobile');
	}

		public function showROtpForm(Request $request)
    {
					// dd($_GET);die();
					$phone = $_GET['phone'];
					$user = User::where('phone','=',$phone)->where('phone_verified',null)->first();
					if($user){


						$otpuser = new User();
						$last_user = $otpuser->where('phone',$phone)->first();
						
						if($last_user){	

							// return response()->json($last_user->phone);
							
							// $otp= rand(0000,9999);
							$otp = 1111;
							
							$currentDateTime = Carbon::now();
							$newDateTime = Carbon::now()->addMinutes(5);

							if(DB::table('users_otp')->insert(
								[
									'number' =>$last_user->phone,
									'code'=>$otp,
									'action'=>9,
									'is_verified'=>0,
									'expired_at'=>$newDateTime,
									'user_id'=>$last_user->id

								]
							)){
								// $send = Nexmo::message()->send([
								// 	'to'   => $last_user->phone ,
								// 	'from' => 'Chabikathi',
								// 	'text' => 'OTP CODE IS '.$otp
								// ]);
								$send = 1;

								Session::flash('phone', $last_user->phone);
								Session::flash('otp', $otp);
								$request->session()->save();

								if($send){
									return view('user.rotp',compact('phone'));
								}else{
									$msg = '<h1 style="background:red;color:white;padding:10px;text-align:center;">Something went wrong. Contact with authority. Return to <a href="'.url('/user/login').'">Login</a></h1>';
									echo   $msg ;
									die();
								}

					}else{
						
						$msg = '<h1 style="background:red;color:white;padding:10px;text-align:center;">Something went wrong. Contact with authority. Return to <a href="'.url('/user/login').'">Login</a></h1>';
									echo   $msg ;
									die();

					}
				
				}else{

					$msg = '<h1 style="background:red;color:white;padding:10px;text-align:center;">Something went wrong. Contact with authority. Return to <a href="'.url('/user/login').'">Login</a></h1>';
					echo   $msg ;
					die();

				
				}


			}else{

				$msg = '<h1 style="background:orange;color:white;padding:10px;text-align:center;">Wrong Mobile or You are already verified. Return to <a href="'.url('/user/login').'">Login</a></h1>';
				echo   $msg ;
				die();
			}

	}



	public function RotpSubmit(Request $request){

		//   dd($request);die();
		$gs = Generalsetting::findOrFail(1);
		$input =  $request->all();
		//   dd($request);die();
		if ( User::where('phone', '=', $request->phone)->count() > 0) {
  
  
				  $chkuser = DB::table('users_otp')->where('code',$request->otp)->where('number', '=', $request->phone)->count() ;
  
				  if ($chkuser > 0) {
  
					  $users_otp = DB::table('users_otp')->where('code',$request->otp)->where('number', '=', $request->phone)
						  ->update([
							  'action'=>10,
							  'is_verified'=>1,
  
						  ]);
  
					  $users = User::where('phone', '=', $request->phone)->update([
						  'phone_verified'=>1
					  ]);
  
					  $d = [];
					  $d['msg'] = 'OTP verified successfully';
					  $d['status'] = 1;
					 
					  $msg = '<h1 style="background:green;color:white;padding:10px;text-align:center;">OTP Verified Successfully. Return to <a href="'.url('/user/login').'">Login</a></h1>';
					  echo   $msg ;
					  die();
					  
					  return redirect()->route('user-dashboard')->with('success','OTP Verified successfully');    
					  
  
				  }else{
					  $d = [];
					  $d['msg'] = 'OTP verified failed';
					  $d['status'] = 0;
					  
					  return redirect()->route('user.login')->with('error','OTP failed');  
				  }
		  }else{
			  $d = [];
			  $d['msg'] = 'OTP verified failed';
			  $d['status'] = 0;
			  
			  return redirect()->route('user.login')->with('error','OTP failed');  
		  }

	}












} /* class close*/