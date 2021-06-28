<?php

namespace App\Http\Controllers\Api;


use App\Http\Resources\ProjectResource;
use App\Classes\GeniusMailer;

use App\Classes\AndroidTokenCheck;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\Counter;
use App\Models\Generalsetting;
use App\Models\Order;
use App\Models\Product;
use App\Models\Subscriber;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use InvalidArgumentException;
use Markury\MarkuryPost;
use App\Models\Category;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Support\Facades\Validator;
use Auth;



use App\Models\Cart;
use App\Models\Coupon;
use App\Models\Currency;
use App\Models\Notification;
use App\Models\OrderTrack;
use App\Models\PaymentGateway;
use App\Models\Pickup;
use App\Models\UserNotification;
use App\Models\VendorOrder;



class FrontendApiController extends Controller
{
    protected $user;
    protected $at;

    public function getJWTIdentifier() {
        return $this->getKey();
    }

    public function getJWTCustomClaims() {
        return [];
    }

    public function getTokenFromUserObject()
        {
            $user = User::first();
            $token = JWTAuth::fromUser($user);
            return $this->respondWithToken($token);
        }
    protected function sendResult($message,$data,$errors = [],$status = true)
    {
        $errorCode = $status ? 200 : 422;
        $result = [
            "message" => $message,
            "status" => $status,
            "data" => $data,
            "errors" => $errors
        ];
        return response()->json($result,$errorCode);
    }


    protected $product_fields = [
        'name',
        'slug',
        'id',
        'product_type',
        'price',
        'previous_price',
        'stock',
        'sku',
        'category_id',
        'subcategory_id',
        'childcategory_id',
        'photo',
        'thumbnail',
        'type',
        'is_discount',
        'discount_date',
        'is_catalog',
        'catalog_id',
        'user_id',
        'cashback',
        'commission',
        'product_tax',
        'product_tax_status'
    ];

    public function ATC($at)
    {
     
        // $this->user = JWTAuth::parseToken()->authenticate();
        $chk = DB::table('android_token')->where('android_token',$at)->first();
        if($chk){
            // echo 'found';die();
            return $chk;
        }else{
            echo 'Unauthenticated app';die();
            // return 'Unauthenticated app';die();
        }
        
    }

    protected function customerTokenChk($token){
        $chk = DB::table('android_user_check')->where('token',$token)->first();
        if($chk){
            // echo 'found';die();
            return $chk;
        }else{
            // echo 'Unauthenticated user';die();
            return null;
            // return 'Unauthenticated app';die();
        }
    }





    
    public function customerRegApi($at,Request $request){

        
     
        
        $chk = $this->ATC($at);

        $data = [];

        if($request){

        

            
            $udata = new User();
            if(isset($request->name) and isset($request->name)!=''){
                $udata->name = $request->name;
            }else{
                $data['message'] = 'Username is required';
                $data['status'] = "0";
                // dd($data);die();
                if($data){
                    return response($data, 201);
                }

            }

              if(isset($request->phone) and isset($request->phone)!=''){
                
                    $ucheck = new User();
                    $ucheck = $ucheck->where('phone',$request->phone)->first();
                    if($ucheck){

                        $data['message'] = 'This mobile number has registered before. Try to login.';
                        $data['status'] = "0";
                        // dd($data);die();
                        if($data){return response($data, 201);}
                    }else{
                        $udata->phone = $request->phone;
                    }
                
              

            }else{

                $data['message'] = 'Mobile is required';
                $data['status'] = "0";
                // dd($data);die();
                if($data){
                    return response($data, 201);
                }
                
            }

            if(isset($request->address) and isset($request->address)!=''){
                $udata->address = $request->address;
            }else{
                $data['message'] = 'Address is required';
                $data['status'] = "0";
                // dd($data);die();
                if($data){
                    return response($data, 201);
                }
                
            }

            if( $request->password!=''){
                $udata->password = Hash::make($request->password);
            }else{
                $data['message'] = 'Password is required';
                $data['status'] = "0";
                // dd($data);die();
                if($data){
                    return response($data, 201);
                }
            }

            

            $udata->email = $request->email;
            $udata->save();
            $user_id = $udata->id;
            if($user_id){

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
						'action'=>5,
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
                        $data['message'] = 'OTP has been sent';
                        $data['status'] = "3";
                        // dd($data);die();
                        if($data){
                            return response()->json($data, 201);
                        }
					}
				}

			
				
            }
            
                $data['message'] = 'Registration Successful';
                $data['status'] = "1";
                // dd($data);die();
                if($data){
                    return response()->json($data, 201);
                }
            }
        
            
        

        }else{
            $data['message'] = 'Data sending failed';
                $data['status'] = "0";
            // dd($data);die();
            if($data){
                return response($data, 201);
            }
        }
    }

    public function otpApi($at,$code,$phone){

        
        $chk = $this->ATC($at);

        $chkuser = DB::table('users_otp')->where('code',$code)->where('number', '=', $phone)->count() ;

        if ($chkuser > 0) {

            $users_otp = DB::table('users_otp')->where('code',$code)->where('number', '=',$phone)
                ->update([
                    'action'=>6,
                    'is_verified'=>1,

                ]);

            $users = User::where('phone', '=', $phone)->update([
                'phone_verified'=>1
            ]);

            $d = [];
            $d['msg'] = 'OTP verified successfully';
            $d['status'] = "1";
            
            return response($d, 201);   
            

        }else{
            $d = [];
            $d['msg'] = 'OTP verified failed';
            $d['status'] = "0";
            
            return response($d, 201);
        }
        
    // return redirect()->route('user.login')->with('error','OTP failed');  
}



// public function vendorStoreApi($at,$store_slug){


//     $string = str_replace('-',' ', $slug);
//     $vendor = User::where('shop_name','=',$string)->firstOrFail();
//     $data['vendor'] = $vendor;
//     $data['services'] = DB::table('services')->where('user_id','=',$vendor->id)->get();
//     // $oldcats = $vendor->products()->where('status','=',1)->orderBy('id','desc')->get();
//     // $vprods = (new Collection(Product::filterProducts($oldcats)))->paginate(9);

//     // Search By Price
//     $prods = Product::when($minprice, function($query, $minprice) {
//                                   return $query->where('price', '>=', $minprice);
//                                 })
//                                 ->when($maxprice, function($query, $maxprice) {
//                                   return $query->where('price', '<=', $maxprice);
//                                 })
//                                  ->when($sort, function ($query, $sort) {
//                                     if ($sort=='date_desc') {
//                                       return $query->orderBy('id', 'DESC');
//                                     }
//                                     elseif($sort=='date_asc') {
//                                       return $query->orderBy('id', 'ASC');
//                                     }
//                                     elseif($sort=='price_desc') {
//                                       return $query->orderBy('price', 'DESC');
//                                     }
//                                     elseif($sort=='price_asc') {
//                                       return $query->orderBy('price', 'ASC');
//                                     }
//                                  })
//                                 ->when(empty($sort), function ($query, $sort) {
//                                     return $query->orderBy('id', 'DESC');
//                                 })->where('status', 1)->where('user_id', $vendor->id)->get();

//     $vprods = (new Collection(Product::filterProducts($prods)))->paginate(9);
//     $data['vprods'] = $vprods;



// }



    public function customerLogin($at,Request $request){
        $chk = $this->ATC($at);
        $fdata = [];
        $fdata['message'] = '';
        $fdata['user_id'] = '';
        $fdata['token'] = '';




        $data = [];
        $data['user_data'] = '';
        $data['token']= '';

        $chk = $this->ATC($at);
// dd($request);die();
        $rdata = $request->all();
        $errors = [];
  
        $message = "";
        $status = true;
        // $validator = $request->validate($data,[
        //     'phone' => 'required',
        //     'password' => 'required',
        // ]);
        // if ($validator->fails()) {           
        //     $status = false;
        //     $errors = $validator->errors();
        //     $message = "Login Failed";
        // }
        // dump($request->all());die();
        $credentials = $request->only("phone", "password");
        // dd($credentials);die();
        if (! $token = Auth::attempt($credentials)) {
            $status = false;
            $errors = [
                "login" => "Invalid username or password",
            ];
            $message = "0";
        }else{

            $udata = new User();
            $user_data = $udata->where('phone',$request->phone)->first();
            $token_val = 'essential'.rand(11111111,99999999);
            $checkaudata = DB::table('android_user_check')->where('user_id',$user_data->id)->first();
            
            if($checkaudata){
                $audata = DB::table('android_user_check')->where('user_id',$user_data->id)->update([
                    'user_id'=>$user_data->id,
                    'token' => $token_val,
                    'phone' => $request->phone,
                    'last_login_time'=>date('Y-m-d H:s:i'),
                    
                    ]
                );
            }else{
                $audata = DB::table('android_user_check')->insert([
                    'user_id'=>$user_data->id,
                    'token' => $token_val,
                    'created_at'=>date('Y-m-d H:s:i'),
                    'phone' => $request->phone,
                    
                    'last_login_time'=>date('Y-m-d H:s:i'),
                    ]
                );
            }
        


            $message = "1";
            $data = [
                'user_data'=>$user_data->id,
                'access_token' => $token,
                'token'=>$token_val,
                'token_type' => 'bearer',
                // 'expires_in' => auth('api')->factory()->getTTL() * 60
            ];
        }
     
        $fdata['message'] = $message;
        $fdata['user_id'] = (string)$data['user_data'];
        $fdata['token'] = $data['token'];

        if($fdata){
            return response($fdata, 201);
        }
        
        // return $this->sendResult($message,$data,$errors,$status);


    }

    public function customerForgotPasswordOtpMobileApi($at,$token,Request $request){

        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        if($token_chk==null){  
            $data['message'] = 'Authentication Failed';
            $data['status'] = "0";
            // dd($data);die();
            if($data){return response($data, 201);}
            return response($data, 201);
        }

        $gs = Generalsetting::findOrFail(1);
        $input =  $request->all();
    
    if (User::where('phone', '=', $request->phone)->count() > 0) 
      {
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
                  'action'=>7,
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

                    $data['message'] = 'OTP Sent successfully';
                    $data['status'] = "1";
                    // dd($data);die();
                    if($data){return response($data, 201);}

                    return response()->json($dt);
                  }else{
                    $data['message'] = 'Something went wrong';
                    $data['status'] = "0";
                    // dd($data);die();
                    if($data){return response($data, 201);}

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
              
            }
    }

    }


    public function customerForgotPasswordOtpApi($at,$token,$otp,$phone){

        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        if($token_chk==null){  
            $data['message'] = 'Authentication failed';
            return response($data, 201);
        }

          // dd($request);die();
      $gs = Generalsetting::findOrFail(1);
      $input =  $request->all();
    
        // if ( User::where('phone', '=', $request->phone)->count() > 0) 
        if(1){


              $chkuser = DB::table('users_otp')->where('code',$otp)->where('number',$phone)->where('is_verified',0)->count() ;

              if ($chkuser > 0) {

                  $users_otp = DB::table('users_otp')->where('code',$otp)->where('number',$phone)->where('is_verified',0)
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
                  if($d){return response($d, 201);}
                  
      
                  

              }else{
                  $d = [];
                  $d['msg'] = 'OTP verified failed';
                  $d['status'] = 0;
                  if($d){return response($d, 201);}
                   
              }
      }else{
          $d = [];
          $d['msg'] = 'OTP verified failed';
          $d['status'] = 0;
          if($d){return response($d, 201);}
      }



    }

    


    public function customerForgotPasswordResetApi($at,$token,Request $request){

        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        if($token_chk==null){  
            $d = [];
            $d['msg'] = 'Authentication failed';
            $d['status'] = 0;
            if($d){return response($d, 201);}
        }

          
    // $user = Auth::user();
    // if ($request->cpass)
    $chkuser =0;
    if($request->otp!='' and $request->phone!='')
      $chkuser = DB::table('users_otp')->where('code',$request->otp)->where('number',$request->phone)->where('is_verified',1)->count() ;

    if($chkuser>0)
    {
     
        // if (Hash::check($request->cpass, $user->password))
        if(1){
            if (1){
                $user = new User();
                $user = $user->where('phone',$request->phone)->orderBy('id','desc')->first();
                // dump( $user);die();
                $input['password'] = bcrypt($request->password);
                $user->update($input);
                $link = '/user/login';
                $d = [];
                $d['msg'] = 'Password Changed Successfully';
                $d['status'] = 1;
                if($d){return response($d, 201);}

            }else{
                $d = [];
                $d['msg'] = 'Password did not match';
                $d['status'] = 0;
                if($d){return response($d, 201);}    
            }
        }else{
            $d = [];
            $d['msg'] = 'Something went wrong';
            $d['status'] = 0;
            if($d){return response($d, 201);}   
        }
    }

    }

    public function customerPasswordResetApi($at,$token,$user_id,Request $request){

        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        if($token_chk==null){  
            $d = [];
            $d['msg'] = 'Authentication failed';
            $d['status'] = 0;
            if($d){return response($d, 201);}
        }

        
        $user = new User();
        $user =  $user->where('id',$user_id)->first();
        if ($request->cpass){
            if (Hash::check($request->cpass, $user->password)){
                if (1){
                    $input['password'] = Hash::make($request->newpass);
                }else{
                    $d = [];
                    $d['msg'] = 'Confirm password does not match.';
                    $d['status'] = 0;
                    if($d){return response($d, 201);}   
                    // return response()->json(array('errors' => [ 0 => 'Confirm password does not match.' ]));     
                }
            }else{

                $d = [];
                $d['msg'] = 'Current password Does not match.';
                $d['status'] = 0;
                if($d){return response($d, 201);}   
 
            }
        }

        if($user->update($input)){
            $d = [];
            $d['msg'] = 'Password changed successfully';
            $d['status'] = 1;
            if($d){return response($d, 201);}    
        }else{
            $d = [];
            $d['msg'] = 'Failed';
            $d['status'] = 0;
            if($d){return response($d, 201);}   

        }
    
    }



    public function customerLogout($at,$token){
       
        $chk = $this->ATC($at);
       
        $checkaudata = DB::table('android_user_check')->where('token',$token)->first();
        $data = [];
        if($checkaudata){
            $upaudata = DB::table('android_user_check')->where('token',$token)->update([
                'token'=>null,
                'last_logout_time'=>date('Y-m-d h:s:i'),
                'logout_count'=> $checkaudata->logout_count+1
            ]);
            if($upaudata){
                $data['message'] = 'Logout Successful!';
                $data['status'] = "1";

                if($data){
                    return response($data, 201);
                }
            }else{
                $data['message'] = 'Logout failed!';
                $data['status'] = "0";

                    if($data){
                        return response($data, 201);
                    }
            }
          
        }else{
            $data['message'] = 'Logout failed!';
            $data['status'] = "0";

            if($data){
                return response($data, 201);
            }

        }
    }


    public function customerInfo($at,$token,$id){

        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        if($token_chk==null){  
            $data['message'] = 'Authentication failed';
            return response($data, 201);
        }

        $user = new User();
        $user_data = $user->where('id',$id)
        ->select('id','name','photo','phone','email','address','wallet')
        ->first();
        $data =   $user_data;

        if($data){
            return response($data, 201);
        }

    }


    public function customerInfoUpdate($at,$token,$id,Request $request){
        // echo 'found';die();
        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        if($token_chk==null){  
            $data['message'] = 'Authentication failed';
            return response($data, 201);
        }
        
        if($request){
            $user = new User();
            $user_data = $user->where('id',$id)
            ->update([
                'name'=>$request->name,
                'email'=>$request->email,
                'address'=>$request->address,
                'zip'=>$request->zip,
                'city'=>$request->city
                
            ]);
            $data =   $user_data;
            $mdata = [];
            if($data){
                $mdata['message'] = 'Success';
                return response($mdata, 201);
            }else{
                $mdata['message'] = 'Failed';
                return response($mdata, 201);
            }
        }else{
            $mdata['message'] = 'Failed';
            return response($mdata, 201);
            
        }
  

    }


  

    public function addWishList($at,$token,$user_id,$product_id){
        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        $mdata = [];
        if($token_chk==null){  
            $data['message'] = 'Authentication failed';
            $data['status'] = "0";
            return response($data, 201);
        }

        $checkwdata = DB::table('wishlists')->where('user_id',$user_id)->where('product_id',$product_id)->first();

        if($checkwdata){
            $mdata['message'] = 'This product has been added before.';
            $mdata['status'] = "0";
            return response($mdata, 201);
        }else{

            $data =   DB::table('wishlists')->insert([
                'user_id'=>$user_id,
                'product_id'=>$product_id
            ]);
            
    
            $data = new ProjectResource($data);
            
    
            if($data){
                $mdata['message'] = 'Data inserted successfully';
                $mdata['status'] = "1";
                return response($mdata, 201);
            }else{
                $mdata['message'] = 'Data insert failed';
                $mdata['status'] = "0";
                return response($mdata, 201);
            }

        }

      
    }


    public function showWishList($at,$token,$user_id){
        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        $mdata = [];
        if($token_chk==null){  
            $data['message'] = 'Authentication failed';
            $data['status'] = "0";
            return response($data, 201);
        }

        $checkwdata = DB::table('wishlists')->where('user_id',$user_id)->get();
        // dd($checkwdata); die();

        if($checkwdata){
        
            $wproducts = [];
            $i = 0;
          
            foreach($checkwdata as $wp){
                // echo $wp->product_id.' ';
                $wpres = Product::where('id','=',$wp->product_id)
                ->orderBy('id','desc')
                ->select($this->product_fields)->first();  
                // $wproducts[$i+] =  $wpres;
                array_push($wproducts, $wpres);
            }
            // dd($wproducts);
            // $wproducts = (object) $wproducts;

            // $mdata['products'] = $wproducts;
            // $mdata['message'] = 'This product has been added before.';
            // $mdata['status'] = "0";
            return response($wproducts, 201);
        }
        // else{
            
        //         $mdata['products'] = '';
        //         $mdata['message'] = 'Data not found';
        //         $mdata['status'] = "1";
        //         return response($mdata, 201);
        

        // }

      
    }


    public function deleteWishList($at,$token,$user_id,$product_id){
        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        $mdata = [];
        if($token_chk==null){  
            $data['message'] = 'Authentication failed';
            $data['status'] = "0";
            return response($data, 201);
        }

        $checkwdata = DB::table('wishlists')->where('user_id',$user_id)->where('product_id',$product_id)->first();

        if($checkwdata){
            
            $deletewdata = DB::table('wishlists')->where('user_id',$user_id)->where('product_id',$product_id)->delete();

            if($deletewdata){
                $mdata['message'] = 'Wishlist product has been deleted.';
                $mdata['status'] = "1";
                return response($mdata, 201);
            }else{
                $mdata['message'] = 'Wishlist product delete failed.';
                $mdata['status'] = "0";
                return response($mdata, 201);
            }
      
        }else{

                $mdata['message'] = 'Data not found';
                $mdata['status'] = "0";
                return response($mdata, 201);
       

        }

      
    }



    
    public function orderList($at,$token,$user_id){

        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        $mdata = [];
        if($token_chk==null){  
            $data['message'] = 'Authentication failed';
            $data['status'] = "0";
            return response($data, 201);
        }

        $checkorderdata = DB::table('orders')->where('user_id',$user_id)
        ->select('id','order_number','pay_amount','status','created_at')
        ->orderBy('id','desc')->get();
     
        // $cart =   unserialize(bzdecompress(utf8_decode($data['cart']))) ; 
        // dump($checkorderdata);
        // die();

        if($checkorderdata){
            return response()->json($checkorderdata, 201);
        }


    }

    public function singleOrderList($at,$token,$user_id,$order_id){
        
        $chk = $this->ATC($at);
        $token_chk = $this->customerTokenChk($token);
        $data = [];
        $mdata = [];
        if($token_chk==null){  
            $data['message'] = 'Authentication failed';
            $data['status'] = "0";
            return response($data, 201);
        }

        $checkorderdata = DB::table('orders')->where('id',$order_id)->where('user_id',$user_id)
        ->orderBy('id','desc')->first();

        if($checkorderdata){
            $cart= unserialize(bzdecompress(utf8_decode($checkorderdata->cart))) ; 
            $t = [];
            $i =0;
            foreach($cart->items as $product){
                $t[$i]['product_id'] = $product['item']['id'];
                $t[$i]['license'] = $product['license'] ;
                $t[$i]['slug'] = $product['item']['slug'];
                $t[$i]['name'] = $product['item']['name'];
                $t[$i]['type'] = $product['item']['type'];
                $t[$i]['file'] = $product['item']['file'];
                $t[$i]['link'] = $product['item']['link'] ;
                $t[$i]['qty'] = $product['qty'];
                $t[$i]['measure'] = $product['item']['measure'] ;
                $t[$i]['color'] = $product['color'];
                $t[$i]['keys'] = $product['keys'];
                $t[$i]['values'] = $product['values'];
                $t[$i]['price'] = $product['item']['price'];
                $i++;
              

            }
            // dump($t);die();

            $data =  $checkorderdata ;
            $data->cart= unserialize(bzdecompress(utf8_decode($checkorderdata->cart))) ; 
            $data->product_list = $t;
          

            return response()->json($data, 201);

        }




    }






    public function topSliderBannerApi($at){
        $chk = $this->ATC($at);

        $data =   DB::table('sliders')->get();;
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }



    public function singleProductsApi($at,$slug){
        $chk = $this->ATC($at);
    
        $data =  DB::table('products')->where('slug','=',$slug)
        ->select(
            'id',
            'sku',
            'product_type',
            'user_id',
            'category_id',
            'subcategory_id',
            'childcategory_id',
            'name',
            'slug',
            'photo',
            'thumbnail',
            'color',
            'price',
            'previous_price',
            'details',
            'stock',
            'measure',
            'status',
            'views',
            'features',
            'product_condition',
            'ship',
            'youtube',
            'type',
            'featured',
            'is_discount',
            'discount_date',
            'is_catalog',
            'catalog_id',
            'cashback',
            'product_payment_method',
            'size',
            'size_qty',
            'size_price',
            'product_tax',
            'product_tax_status'


        )
        ->first();
        
        
        $gdata =  DB::table('products')->where('slug','=',$slug)
        ->join('galleries','products.id','galleries.product_id')
        ->select('galleries.*')
        ->get();
        // dd($gdata);die();
  

    
        $p =  $data->photo;
    
        $cnt = 1;
        
        $gg =$data->photo;

        if(count($gdata)){

            
            foreach($gdata as $g){
                $gg =$gg.'<+=+>'.$g->photo;
       
                // array_push($data->gallery,$g->photo);
            }
        }

        $gg = explode('<+=+>',$gg);
        $data->gallery = $gg;

                if($data->color==""){
         
                    $data->color=(array) $data->color;
        }else{
            $data->color = explode(",",  $data->color);
        }

        if( $data->size == "")   $data->size = [];
        else    $data->size = explode(',',$data->size);

        if( $data->size_qty == "")   $data->size_qty = [];
        else    $data->size_qty = explode(',',$data->size_qty);

        if( $data->size_price == "")   $data->size_price = [];
        else    $data->size_price = explode(',',$data->size_price);
        // dd($data->size);die();

        // $data->size['size'] = $data->size;
        // $data->size['size_qty'] = $data->size_qty;
        // $data->size['size'] =  $data->size_price;

        if($data){
            return response()->json($data, 201);
        }
    }


    public function categoryApi($at){
        $chk = $this->ATC($at);
       
        $data = Category::where('status','=',1)->get();
      
        
        $md = [];
        $fd = [];
        foreach($data as $d){
            $checksubcat = DB::table('subcategories')->where('category_id',$d->id)->first();
            
            if($checksubcat){
                $md = $d;
                $md['subcat_status']="1";
                array_push($fd,$md);
            }else{
                $md = $d;
                $md['subcat_status']="0";
                array_push($fd,$md);
            }
        }
      
        $data = $fd;


        
        if($data){
            return response($data, 201);
        }
        
    }

    
    public function subCategoryApi($at,$cat_id){
        $chk = $this->ATC($at);


       
        $data = DB::table('subcategories')->where('status','=',1)->where('category_id',$cat_id)->get();
        $md = [];
        $fd = [];

        foreach($data as $d){
            $checksubcat = DB::table('childcategories')->where('subcategory_id',$d->id)->first();
            
            if($checksubcat){
                $md = (array)$d;
                $md['childcat_status']="1";
                array_push($fd,$md);
            }else{
                $md = (array)$d;
                $md['childcat_status']="0";
                array_push($fd,$md);
            }
        }
      
        $data = $fd;
        
        if($data){
            return response($data, 201);
        }
        
    }

    public function subCategoryWiseProductApi($at,$subcat_slug){
        $chk = $this->ATC($at);

        $c = DB::table('subcategories')->where('slug',$subcat_slug)->first();
       
        $data = Product::where('status','=',1)
        ->where('subcategory_id',$c->id)
        ->select($this->product_fields)
        ->get();

        
        if($data){
            return response($data, 201);
        }
        
    }

    public function childCategoryWiseProductApi($at,$childcat_slug){
        $chk = $this->ATC($at);

        $c = DB::table('childcategories')->where('slug',$childcat_slug)->first();
       
        $data = Product::where('status','=',1)
        ->where('childcategory_id',$c->id)
        ->select($this->product_fields)
        ->get();

        
        if($data){
            return response($data, 201);
        }
        
    }


    public function childCategoryApi($at,$subcat_id){
        $chk = $this->ATC($at);


       
        $data = DB::table('childcategories')->where('status','=',1)->where('subcategory_id',$subcat_id)->get();

        
        if($data){
            return response($data, 201);
        }
        
    }





    public function shippingListApi($at){
        $chk = $this->ATC($at);
        $data = DB::table('shippings')->get();
        
        if($data){
            return response($data, 201);
        }
    }

    public function categoryWiseProductApi($at,$cat_slug){
        $chk = $this->ATC($at);

        $c = Category::where('slug',$cat_slug)->first();
       
        $data = Product::where('status','=',1)
        ->where('category_id',$c->id)
        ->select($this->product_fields)
        ->get();

        
        if($data){
            return response($data, 201);
        }
        
    }

    public function couponApi($at){
        $chk = $this->ATC($at);
        $dt = Carbon::create();
        // dd($dt->toDateString());die();
        $data = DB::table('coupons')
          ->where('start_date','<=',$dt->toDateString())
        ->where('end_date','>=',$dt->toDateString() )
        ->where('status',1)->get();
   

        
        if($data){
            return response($data, 201);
        }
    }

    public function ProductSearchApi($at,$searchterm){
     
//         User::query()
//    ->where('role', 'admin')
//    ->whereLike(['name', 'email'], 'john') //for category wise search may be it can be used
//    ->get();

        $chk = $this->ATC($at);

       
        $data = Product::where('status','=',1)
        ->where('name', 'LIKE', "%{$searchterm}%")
        ->select($this->product_fields)
        ->get();

        
        if($data){
            return response($data, 201);
        }
        
    }

    public function randomProductApi($at){
        
        $chk = $this->ATC($at);
        $data = Product::where('status','=',1)->orderBy('id','desc')
        ->select($this->product_fields)
        ->get();
        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    public function flashedApi($at){
        // dd($at);die();
        $chk = $this->ATC($at);

        $data = Product::where('is_discount','=',1)->where('status','=',1)->orderBy('id','desc')
        ->select($this->product_fields)
        ->take(8)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    public function featuredApi($at){
        // dd($at);die();
        $chk = $this->ATC($at);

        $data =  Product::where('featured','=',1)->where('status','=',1)->orderBy('id','desc')
        ->select($this->product_fields)
        ->take(8)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }
    
    // public function bestProductApi($at){
    //     $chk = $this->ATC($at);

    //     $data = Product::where('best','=',1)->where('status','=',1)->orderBy('id','desc')->take(6)->get();
        

    //     $data = new ProjectResource($data);

    //     if($data){
    //         return response($data, 201);
    //     }
    // }

    public function bottomSmallBannersApi($at){
        $chk = $this->ATC($at);

        $data = DB::table('banners')->where('type','=','BottomSmall')->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    public function reviewsApi($at){
        $chk = $this->ATC($at);

        $data =  DB::table('reviews')->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    public function discountProductsApi($at){
        $chk = $this->ATC($at);

        $data = Product::where('is_discount','=',1)->where('status','=',1)->orderBy('id','desc')->select($this->product_fields)->take(8)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    public function bestProductsApi($at){
        $chk = $this->ATC($at);

        $data =  Product::where('best','=',1)->where('status','=',1)->orderBy('id','desc')->select($this->product_fields)->take(6)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    public function topProductsApi($at){

        $chk = $this->ATC($at);

        $data = Product::where('top','=',1)->where('status','=',1)->orderBy('id','desc')->select($this->product_fields)->take(8)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    public function bigProductsApi($at){
        $chk = $this->ATC($at);

        $data =Product::where('big','=',1)->where('status','=',1)->orderBy('id','desc')->select($this->product_fields)->take(6)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    public function hotProductsApi($at){
        $chk = $this->ATC($at);

        $data =  Product::where('hot','=',1)->where('status','=',1)->orderBy('id','desc')->select($this->product_fields)->take(3)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }


    public function latestProductsApi($at){

        $chk = $this->ATC($at);

        $data = Product::where('latest','=',1)->where('status','=',1)->orderBy('id','desc')->select($this->product_fields)->take(3)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    
    public function trendingProductsApi($at){

        $chk = $this->ATC($at);

        $data = Product::where('trending','=',1)->where('status','=',1)->orderBy('id','desc')->select($this->product_fields)->take(3)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
    }

    
    public function salesProductsApi($at){
        $chk = $this->ATC($at);

        $data = Product::where('sale','=',1)->where('status','=',1)->orderBy('id','desc')->select($this->product_fields)->take(3)->get();
        

        $data = new ProjectResource($data);

        if($data){
            return response($data, 201);
        }
        
    }


    
    /* POST */
    public function orderApi($at,Request $request){
        


        $chk = $this->ATC($at);
        $tsslorders = 0;
        $tuserwallet = 0;
        $torder = 0;
        $tvorder = 0;
        $tproduct = 0;
        $tcashback = 0;
        $ttrack = 0;
        $tnotification = 0;
        $tcoupon = 0;
        $tproductstock = 0;
        $tproductstocknotification = 0;
        $tfnotific = 0;
        $cmail = 0;
        $amail = 0;
        
     
        
        if($request){
          
          
          /**********
           * 

           SSL ORDER START
           ***

           */
            //    dump($request);die();
           
            # CUSTOMER INFORMATION

            $au = User::findOrFail($request->user_id);
           
       

            #Before  going to initiate the payment order status need to insert or update as Pending.
            $update_product = DB::table('sslorders')
                ->where('transaction_id', $request->ssl_transaction_id)
                ->updateOrInsert([
                    'name' => $au->name,
                    'email' => $request->email,
                    'phone' => $au->phone,
                    'amount' => $request->total_price,
                    'status' => 'Pending',
                    'address' => $request->address,
                    'transaction_id' =>$request->ssl_transaction_id,
                    'currency' => "BDT",
                    'user_id'=>$request->user_id
                ]);

              
            if($update_product)  $tsslorders =1;

            // ***********************************
            // ***********************************
            // ***********************************
            // ***********************************
            // ***********************************
            // ***********************************
            // ***********************************




                /*CHECKOUT CODE*/


           
            $gs = Generalsetting::findOrFail(1);

            $mCart = new \stdClass();
            $mCart->items = [];
            $aa =   new \stdClass();
            // dump($request );die();
            foreach($request->order_list as $prod){
           
                $cp = Product::findOrFail($prod['id']); 
                $aa = $prod;
                $cp = (object)$cp;
                $aa['item'] = $cp;

                $aa['size_key'] = 0;
                $aa['size_qty'] = 0;
                $aa['size_price'] = 0;
                $aa['size'] = 0;
                $aa['license'] = 0;
                $aa['dp'] = 0;
                $aa['keys'] = 0;
                $aa['values'] = 0;
                


                // $mCart['items'][$cp->id] = [];
                // array_push($mCart->items[$cp->id],$aa);
               $mCart->items[$cp->id]=$aa;
               
            }
            // dd($mCart);die();
            $mCart->totalPrice = $request->total_price;
            $mCart->totalQty = $request->totalQty;
            // array_push($mCart['totalPrice'],$request->total_price);
            // array_push($mCart['totalQty'],$request->totalQty);

            // $oldCart = json_decode(json_encode($mCart)) ;
            $oldCart = $mCart ;
            // dump(gettype($oldCart));die();
            $cart = new Cart($oldCart);
            // dump($mCart);die();

            foreach($request->order_list as $prod)
            {
                $cp = Product::findOrFail($prod['id']); 
                if(!empty( $cp->license) && !empty( $cp->license_qty ))
                {
                    foreach($cp->license_qty as $ttl => $dtl)
                    {
                        if($dtl != 0)
                            {
                                $dtl--;
                                $produc = Product::findOrFail($prod['id']);
                                $temp = $produc->license_qty;
                                $temp[$ttl] = $dtl;
                                $final = implode(',', $temp);
                                $produc->license_qty = $final;
                                $produc->update();
                                $temp =  $produc->license;
                                $license = $temp[$ttl];
                            
                                break;
                            }                    
                    }
                }
            }
          
            $order = new Order;
            
            $order['user_id'] = $request->user_id;
            $order['ssl_transaction_id'] = $request->ssl_transaction_id;
            $order['cart'] =  utf8_encode(bzcompress(serialize($cart), 9)); ; 
            $order['totalQty'] = $request->totalQty;
            $order['pay_amount'] = round($request->total_price, 2);
            // $order['method'] = $request->method;
            $order['method'] = "Online Payment";
            $order['shipping'] ="shipto";
            // $order['pickup_location'] = $request->pickup_location;
            $order['customer_email'] = $au->email;
            $order['customer_name'] = $au->name;
            $order['shipping_cost'] = $request->shipping_cost;
            $order['packing_cost'] = 0;
            $order['tax'] = $request->tax;
            $order['customer_phone'] = $au->phone;
            // $order['order_number'] = str_random(4).time();
            
        $lastorder = Order::latest()->first();
        $lastorderid= 0;
        if(!isset( $lastorder->id )) $lastorderid= 1;
        else   $lastorderid= $lastorder->id ;
        $item_number = 'BR'.time().str_random(2).'00'.$lastorderid;
        $order['order_number'] =  $item_number ;

            $order['customer_address'] = $request->address;
            $order['customer_country'] = "Bangladesh";
            $order['customer_city'] = $request->city;
            
            $order['customer_zip'] = $request->zip;
            $order['shipping_email'] = $request->shipping_email;
            $order['shipping_name'] = $request->shipping_name;
            $order['shipping_phone'] = $request->shipping_phone;
            $order['shipping_address'] = $request->shipping_address;
            $order['shipping_country'] = "Bangladesh";
            $order['shipping_city'] = $request->shipping_city;
            $order['shipping_zip'] = $request->shipping_zip;
            $order['order_note'] = $request->order_notes;
            $order['coupon_code'] = $request->coupon_code;
            $order['coupon_discount'] = $request->coupon_discount;
            $order['dp'] = "0";
            $order['payment_status'] = "Pending";
            $order['currency_sign'] = "৳";
            $order['currency_value'] = "1";
            $order['vendor_shipping_id'] = "0";
            $order['vendor_packing_id'] = "0";
            // $order['total_cashback'] =  (string)$request->total_cashback;



            $uw = User::where('id',$request->user_id)->first();
            // dump($uw);die();

            if($request->left_wallet!=''){
            if((float)$uw->wallet>$request->left_wallet){
              
                $user_used_w = User::where('id',$request->user_id)->update([
                // 'wallet' =>(string)((float)$uw->wallet - $request->used_wallet ) /* EIT code */
                'wallet' =>(string)(number_format((float)$request->left_wallet, 2, '.', '') )  
                ]);
                if($user_used_w) $tuserwallet = 1;
            }
            }


            // $uc = User::where('id',$request->user_id)->first();

            // $w = 0;
            // if($uc->wallet==null){
            // $w = 0;
            // }else{
            // $w = (float)$uc->wallet;
            // }
            // $user_w = User::where('id',$request->user_id)->update([
            // 'wallet' =>(string)($w+(float)$request->total_cashback)
            //  /* EIT code */
            // ]);

            // if($user_w) $tcashback = 1;
    

            $ordersave = $order->save();
            if($ordersave)  $torder = 1;
           

            $track = new OrderTrack;
            $track->title = 'Pending';
            $track->text = 'You have successfully placed your order.';
            $track->order_id = $order->id;
            if($track->save()) $ttrack = 1;
          
         
            $notification = new Notification;
            $notification->order_id = $order->id;
            if($notification->save()) $tnotification = 1;

        

            if($request->coupon_id != "")
            {
            $coupon = Coupon::findOrFail($request->coupon_id);
            $coupon->used++;
            if($coupon->times != null)
            {
            $i = (int)$coupon->times;
            $i--;
            $coupon->times = (string)$i;
            }
            if($coupon->update()) $tcoupon = 1;
          
            }

            // foreach($request->order_list as $prod)
            // {
            //  $x = (string)$prod['size_qty'];
            //  $cp = Product::findOrFail($prod->id); 
            //     if(!empty($x))
            //     {
            //     $product = Product::findOrFail($prod['item']['id']);
            //     $x = (int)$x;
            //     $x = $x - $prod['qty'];
            //     $temp = $product->size_qty;
            //     $temp[$prod['size_key']] = $x;
            //     $temp1 = implode(',', $temp);
            //     $product->size_qty =  $temp1;
            //     $product->update();               
            //     }
            // }


            foreach($request->order_list as $prod)
            {
                $cp = Product::findOrFail($prod['id']); 
                $x = (string)$cp->stock;
                    if($x != null)
                    {

                    $product = Product::findOrFail($prod['id']);
                    $product->stock =  $product->stock - $prod['qty'];
                   if($product->update())  $tproductstock = 1;
                        if($product->stock <= 5)
                        {
                            $notification = new Notification;
                            $notification->product_id = $product->id;
                            if($notification->save()) $tproductstocknotification = 1;                    
                        }              
                }
            }
        
            $notf = null;

            foreach($request->order_list as $prod)
            {
            if($prod['vendor_user_id'] != 0)
            {

            $vendor_product = Product::findOrFail($prod['id']);


            $vorder =  new VendorOrder;
            $vorder->order_id = $order->id;
            $vorder->user_id = $prod['vendor_user_id'];
            $notf[] = $prod['vendor_user_id'];
            $vorder->qty =$prod['qty'];
            $vorder->price = $prod['price'];
            $vorder->order_number = $order->order_number; 

            if($vendor_product->product_tax_status==1){
                $vorder->vorder_tax =  $prod['qty']*((float)$vorder->price*$vendor_product->product_tax/100);    
            }

            $vt = 0;
            if( $vorder->vorder_tax) $vt = $vorder->vorder_tax;
            $pp = round($prod['price']  - $vt,2);
            $vorder->vorder_commission =  $prod['qty']*$vendor_product->commission + $gs->fixed_commission + ($pp/100) * $gs->percentage_commission ; 

             if($vorder->save()) $tvorder = 1;
            }

            }

            if(!empty($notf))
            {
            $users = array_unique($notf);
            foreach ($users as $user) {
            $notification = new UserNotification;
            $notification->user_id = $user;
            $notification->order_number = $order->order_number;
            if($notification->save())  $tfnotific = 1;  
            }
            }

            //Sending Email To Buyer

            if($gs->is_smtp == 1)
            {
            $data = [
            'to' => $request->email,
            'type' => "new_order",
            'cname' => $request->name,
            'oamount' => "",
            'aname' => "",
            'aemail' => "",
            'wtitle' => "",
            'onumber' => $order->order_number,
            ];

            // $mailer = new GeniusMailer();
            // $mailer->sendAutoOrderMail($data,$order->id);            
            }
            else
            {
                $to = $request->email;
                $subject = "Your Order Placed!!";
                $msg = "Hello ".$request->name."!\nYou have placed a new order.\nYour order number is ".$order->order_number.".Please wait for your delivery. \nThank you.";
                $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
                mail($to,$subject,$msg,$headers);            
            }
            //Sending Email To Admin
            if($gs->is_smtp == 1)
            {
            $data = [
            'to' => $gs->email,
            'subject' => "New Order Recieved!!",
            'body' => "Hello Admin!<br>Your store has received a new order.<br>Order Number is ".$order->order_number.".Please login to your panel to check. <br>Thank you.",
            ];

            // $mailer = new GeniusMailer();
            // $mailer->sendCustomMail($data);            
            }
            else
            {
            $to = $gs->email;
            $subject = "New Order Recieved!!";
            $msg = "Hello Admin!\nYour store has recieved a new order.\nOrder Number is ".$order->order_number.".Please login to your panel to check. \nThank you.";
            $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
            mail($to,$subject,$msg,$headers);
            }

            
            // $fdata['tsslorders'] = $tsslorders;
            // $fdata['tuserwallet'] = $tuserwallet;
            // $fdata['torder'] = $torder;
            // $fdata['tvorder'] = $tvorder;
            // $fdata['tcashback'] = $tcashback;
            //  $fdata['ttrack'] = $ttrack;
            //  $fdata['tnotification'] = $tnotification;
            //  $fdata['tcoupon'] = $tcoupon;
            //  $fdata['tproductstock'] = $tproductstock;
            //  $fdata['tproductstocknotification'] = $tproductstocknotification;
            //  $fdata['tfnotific'] = $tfnotific;
            //  $fdata['cmail'] = $cmail;
            //  $fdata['amail'] = $amail;

            $fdata['status'] = "1";

            // $fdata['request'] = $request->all();
            $fdata['msg'] = ' Data passed successfully';
        


     return response($fdata);
    }else{
                    
            // $fdata['tsslorders'] = $tsslorders;
            // $fdata['tuserwallet'] = $tuserwallet;
            // $fdata['torder'] = $torder;
            // $fdata['tvorder'] = $tvorder;
            // $fdata['tcashback'] = $tcashback;
            // $fdata['ttrack'] = $ttrack;
            // $fdata['tnotification'] = $tnotification;
            // $fdata['tcoupon'] = $tcoupon;
            // $fdata['tproductstock'] = $tproductstock;
            // $fdata['tproductstocknotification'] = $tproductstocknotification;
            // $fdata['tfnotific'] = $tfnotific;
            // $fdata['cmail'] = $cmail;
            // $fdata['amail'] = $amail;
            // $fdata = array();
            // $fdata[] = '';
            // $fdata['request'] = $request->all();
            $fdata['msg'] = 'Failed';
            $fdata['status'] = "0";
            return response($fdata);
        
    }






// ***********************
// ***********************************
// ***********************************
// ***********************************

// *********************************************************************************************************
// ******************************************************************************************************************************************************************************************************************


                /*CHECKOUT CODE END*/
                
                

           /****
            * SSL ORDER END
            */
        
    } /* Order API function end */


    /**************************************
     * 
     * 
     * 
     * 
     * 



                API END


      * 
     * 
     * 
     * 
     * 
     *    * 
     * 
     * 
     * 
     * 
     *    * 
     * 
     * 
     * 
     * 
     *    * 
     * 
     * 
     * 
     * 
     *    * 
     * 
     * 
     * 
     * 
     *    * 
     * 
     * 
     * 
     * 
     *    * 
     * 
     * 
     * 
     * 
     * 
                */

    



} /* Class  end */
