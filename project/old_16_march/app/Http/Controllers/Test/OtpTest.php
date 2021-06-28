<?php

namespace App\Http\Controllers\Test;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Nexmo\Laravel\Facade\Nexmo as Nexmo;
use Session;

class OtpTest extends Controller
{
    public function otpTest(Request $request){

        dd($request->session());
        $request->session()->forget('coupon');
        $request->session()->forget('coupon_id');
         $request->session()->forget('coupon_code');
          $request->session()->forget('coupon_total1');
          $request->session()->forget('coupon_percentage');  
          $request->session()->forget('already');       
          dd($request->session()); 

        // Nexmo::message()->send([
        //     'to'   => '+8801777481097',
        //     'from' => 'saad',
        //     'text' => 'Using the facade to send a message.'
        // ]);
        // Nexmo::verify()->start([ 
        //     'number' => '8801777481097',
        //     'brand'  => 'Vonage',
        //      'code_length'  => '4']);
          
        //   echo "Verification id: " . $verification->getRequestId();                                             
    }

}
//209f9d47e7msh436f7cd2c108206p1f25b0jsn90f0844d98c8