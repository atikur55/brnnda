<?php

namespace App\Http\Controllers\User;

use App\Models\Generalsetting;
use App\Models\User;
use Illuminate\Http\Request;
use App\Classes\GeniusMailer;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use Validator;
use Carbon\Carbon;
use Nexmo\Laravel\Facade\Nexmo as Nexmo;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class ForgotController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function showForgotForm()
    {
      return view('user.forgot');
    }

    public function forgot(Request $request)
    {

      // return response()->json($request->all());   
     


      $gs = Generalsetting::findOrFail(1);
      $input =  $request->all();
      if (User::where('phone', '=', $request->phone)->count() > 0) {
      // user found
      $admin = User::where('phone', '=', $request->phone)->firstOrFail();
      
      $autopass = str_random(8);
      $input['password'] = bcrypt($autopass);
      // $admin->update($input);


      $subject = "Reset Password Request";
      $msg = "Your New Password is : ".$autopass;


      
          $otpuser = new User();
          $last_user = $otpuser->where('phone', '=', $request->phone)->first();
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
                'action'=>3,
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

                if($send){
                  // return redirect('forgototp')->with('code',$otp)->with('phone',$request->phone);
                  $dt = [];
                  $dt['status'] = 1;
                  $dt['phone'] = $request->phone;
                  return response()->json($dt);
                }else{
                  return response()->json("Something went wrong");
               }
              
              



        
                    // if($gs->is_smtp == 1)
                    // {
                    //     $data = [
                    //             'to' => $request->email,
                    //             'subject' => $subject,
                    //             'body' => $msg,
                    //     ];

                    //     $mailer = new GeniusMailer();
                    //     $mailer->sendCustomMail($data);                
                    // }
                    // else
                    // {
                    //     $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
                    //     mail($request->email,$subject,$msg,$headers);            
                    // }
                  return response()->json('Your Password Reseted Successfully. Please Check your email for new Password.');
              }
            // else{
            // // user not found
            // return response()->json(array('errors' => [ 0 => 'No Account Found With This Email.' ]));    
            // }  
          }
  }
}


    public function showForgotOtpForm($phone)
    {
      $phone = $phone;
      return view('user.forgototp',compact('phone'));
	}
	
	public function ForgotOtpSubmit(Request $request)
    {

	        // dd($request);die();
      $gs = Generalsetting::findOrFail(1);
	    $input =  $request->all();
	  
      // if ( User::where('phone', '=', $request->phone)->count() > 0) 
      if(1){


				$chkuser = DB::table('users_otp')->where('code',$request->otp)->where('number',$request->phone)->where('is_verified',0)->count() ;

				if ($chkuser > 0) {

					$users_otp = DB::table('users_otp')->where('code',$request->otp)->where('number',$request->phone)->where('is_verified',0)
						->update([
							'action'=>4,
							'is_verified'=>1,

						]);

					// $users = User::where('phone', '=', $request->phone)->update([
					// 	'phone_verified'=>1
					// ]);

					$d = [];
					$d['msg'] = 'OTP verified successfully';
					$d['status'] = 1;
					
					return redirect()->route('forgot-password-change')->with('success','Change your password')->with('code',$request->otp)->with('phone',$request->phone);    
					

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

public function forgotPasswordChange(){

  return view('user.forgotpasswordchange');

}

public function forgotPasswordChangeSubmit(Request $request)
{
      
    // $user = Auth::user();
    // if ($request->cpass)
    $chkuser =0;
    if($request->otp!='' and $request->phone!='')
      $chkuser = DB::table('users_otp')->where('code',$request->otp)->where('number',$request->phone)->where('is_verified',1)->count() ;

    if($chkuser>0)
    {
     
        // if (Hash::check($request->cpass, $user->password))
        if(1){
            if ($request->newpass == $request->renewpass){
                $user = new User();
                $user = $user->where('phone',$request->phone)->orderBy('id','desc')->first();
                // dump( $user);die();
                $input['password'] = bcrypt($request->newpass);
                $user->update($input);
                $link = '/user/login';
                $msg = '<h1 style="background:green;color:white;padding:10px;text-align:center;">Successfully changed your password. Return to <a href="'.url('/user/login').'">Login</a></h1>';
                echo   $msg ;
                die();
                return redirect('/user/login')->with('success','Password reset successfully');

            }else{
              $msg = '<h1 style="background:red;color:white;padding:10px;text-align:center;">Failed. Return to <a href="'.url('/user/login').'">Login</a></h1>';
              echo   $msg ;
              die();
              return redirect('/user/login')->with('error','Password reset failed');
                // return response()->json(array('errors' => [ 0 => 'Confirm password does not match.' ]));     
            }
        }else{
          $msg = '<h1 style="background:red;color:white;padding:10px;text-align:center;">Failed. Return to <a href="'.url('/user/login').'">Login</a></h1>';
          echo   $msg ;
          die();
          return redirect('/user/login')->with('error','Password reset failed');
        }
    }

}

}