<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Library\SslCommerz\SslCommerzNotification;
use Session;



use App\Classes\GeniusMailer;
use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Coupon;
use App\Models\Currency;
use App\Models\Generalsetting;
use App\Models\Notification;
use App\Models\Order;
use App\Models\OrderTrack;
use App\Models\PaymentGateway;
use App\Models\Pickup;
use App\Models\Product;
use App\Models\User;
use App\Models\UserNotification;
use App\Models\VendorOrder;
use Auth;
use Validator;


class SslCommerzPaymentController extends Controller
{

    public function exampleEasyCheckout()
    {
      
        return view('exampleEasycheckout');
    }

    public function exampleHostedCheckout()
    {
        return view('exampleHosted');
    }

    public function index(Request $request)
    {
        //    dump($request);die();
        $r =  $request->session()->all();
        Session::put('allrequest',$request->all());
                

        // dump(Session::get('allrequest'));die();
        $request->session()->save();



        // dd($r);die();
        // $r = Session::get('cart');
        // DB::table('session')->insert(['data'=>json_encode($r)]);

        // $sdat =  DB::table('session')->first();
        // $rr = json_decode($sdat->data);
        // dump($rr);
        //  dump($r);die();
        // Session::put('eitssl', $request->all() );

        // dd($request->session()); die();
      
          


        // dump(Session::get('eitssl'));die();

        # Here you have to receive all the order data to initate the payment.
        # Let's say, your oder transaction informations are saving in a table called "orders"
        # In "orders" table, order unique identity is "transaction_id". "status" field contain status of the transaction, "amount" is the order amount to be paid and "currency" is for storing Site Currency which will be checked with paid currency.

        $post_data = array();


        $post_data['user_id'] = $request->user_id;
        $post_data['total_amount'] = $request->total; # You cant not pay less than 10
        $post_data['currency'] = "BDT";
        $post_data['tran_id'] = uniqid(); // tran_id must be unique

        # CUSTOMER INFORMATION
        $post_data['cus_name'] = $request->personal_name; 
        $post_data['cus_email'] = $request->personal_email;
        $post_data['cus_add1'] = $request->address;
        $post_data['cus_add2'] = $request->pickup_location;
        $post_data['cus_city'] = $request->city;
        $post_data['cus_state'] = $request->personal_name;
        $post_data['cus_postcode'] = $request->zip;
        $post_data['cus_country'] = "Bangladesh";
        $post_data['cus_phone'] = $request->phone;
        $post_data['cus_fax'] = "";

        # SHIPMENT INFORMATION
        $post_data['ship_name'] =  $request->shipping_name;
        $post_data['ship_add1'] =  $request->shipping_address;
        $post_data['ship_add2'] =  $request->shipping_address;
        $post_data['ship_city'] =  $request->shipping_city;
        $post_data['ship_state'] = "Dhaka";
        $post_data['ship_postcode'] = $request->shipping_zip;
        $post_data['ship_phone'] = "";
        $post_data['ship_country'] = "Bangladesh";

        $post_data['shipping_method'] = "NO";
        $post_data['product_name'] = "Computer";
        $post_data['product_category'] = "Goods";
        $post_data['product_profile'] = "physical-goods";

        # OPTIONAL PARAMETERS
        $post_data['value_a'] = $request->order_notes;
        $post_data['value_b'] = json_encode([$request->all()]);
        $post_data['value_c'] = "ref003";
        $post_data['value_d'] = "ref004";
        
        #Before  going to initiate the payment order status need to insert or update as Pending.
        $update_product = DB::table('sslorders')
            ->where('transaction_id', $post_data['tran_id'])
            ->updateOrInsert([
                'name' => $post_data['cus_name'],
                'email' => $post_data['cus_email'],
                'phone' => $post_data['cus_phone'],
                'amount' => $post_data['total_amount'],
                'status' => 'Pending',
                'address' => $post_data['cus_add1'],
                'transaction_id' => $post_data['tran_id'],
                'currency' => $post_data['currency'],
                'user_id'=>$post_data['user_id']
            ]);




        $sslc = new SslCommerzNotification();
        # initiate(Transaction Data , false: Redirect to SSLCOMMERZ gateway/ true: Show all the Payement gateway here )
        $payment_options = $sslc->makePayment($post_data, 'hosted');


        if (!is_array($payment_options)) {
          
            print_r($payment_options);
            $payment_options = array();
        }

        if( $payment_options ){
            echo 'going to success';
        }

    }

  

    public function success(Request $request)
    {


        $custom_request =(object) Session::get('allrequest');
        
        // dump( $custom_checkout );
        // die();
        // return redirect('/');
     

        // dd(Session::get('eitssl'));die();
        $tran_id = $request->input('tran_id');
        $amount = $request->input('amount');
        $currency = $request->input('currency');

        $sslc = new SslCommerzNotification();

    

        #Check order status in order tabel against the transaction id or order id.
        $order_detials = DB::table('sslorders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'status', 'currency', 'amount')->first();

        if ($order_detials->status == 'Pending') {
            $validation = $sslc->orderValidate($tran_id, $amount, $currency, $request->all());
                // echo $validation;die();
            // if ($validation == TRUE) {
                if(1){ /* Need to change after activated ssl */

                    // $success_url = action('Front\PaymentController@payreturn');  
                    // return redirect($success_url);
                    // echo 'done';die();
                    // $this->code_image();
                    // $sdat =  DB::table('session')->orderBy('id', 'DESC')->first();
                    // dump(json_decode($sdat->data,true));die();
                   
                
            

                        /*
                        That means IPN did not work or IPN URL was not set in your merchant panel. Here you need to update order status
                        in order table as Processing or Complete.
                        Here you can also sent sms or email for successfull transaction to customer
                        */
                    // $update_product = DB::table('sslorders')
                    //     ->where('transaction_id', $tran_id)
                    //     ->update(['status' => 'Processing']);












































       

// ***********************************
// ***********************************
// ***********************************
// ***********************************
// ***********************************
// ***********************************
// ***********************************




            /*CHECKOUT CODE*/

/* OLD CODE */
// dump($custom_request);die();
// if($custom_request->pass_check) {
    // $users = User::where('phone','=',$custom_request->phone)->get();
    // if(count($users) == 0) {
    // if ($custom_request->personal_pass == $custom_request->personal_confirm){
        // $user = new User;
        // $user->name = $custom_request->personal_name; 
        // $user->email = $custom_request->personal_email;   
        // $user->password = bcrypt($custom_request->personal_pass);
        // $token = md5(time().$custom_request->personal_name.$custom_request->personal_email);
        // $user->verification_link = $token;
        // $user->affilate_code = md5($custom_request->name.$custom_request->email);
        // $user->emai_verified = 'Yes';
        // $user->save();

        // Auth::guard('web')->login($user);                     
        // }else{
        //     return redirect()->back()->with('unsuccess',"Confirm Password Doesn't Match.");     
        // }
        // }
        // else {
        //     return redirect()->back()->with('unsuccess',"This Email Already Exist.");  
        // }
    // }
    
    
    if (!Session::has('cart')) {
        return redirect()->route('front.cart')->with('success',"You don't have any product to checkout.");
        }
        if (Session::has('currency')) 
        {
        $curr = Currency::find(Session::get('currency'));
        }
        else
        {
        $curr = Currency::where('is_default','=',1)->first();
        }
        $gs = Generalsetting::findOrFail(1);
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        foreach($cart->items as $key => $prod)
        {
        if(!empty($prod['item']['license']) && !empty($prod['item']['license_qty']))
        {
        foreach($prod['item']['license_qty']as $ttl => $dtl)
        {
        if($dtl != 0)
        {
        $dtl--;
        $produc = Product::findOrFail($prod['item']['id']);
        $temp = $produc->license_qty;
        $temp[$ttl] = $dtl;
        $final = implode(',', $temp);
        $produc->license_qty = $final;
        $produc->update();
        $temp =  $produc->license;
        $license = $temp[$ttl];
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->updateLicense($prod['item']['id'],$license);  
        Session::put('cart',$cart);
        break;
        }                    
        }
        }
        }
        $order = new Order;
        $success_url = action('Front\PaymentController@payreturn');
        $item_name = $gs->title." Order";
        $item_number = str_random(4).time();
        $order['user_id'] = $custom_request->user_id;
        $order['ssl_transaction_id'] = $tran_id;
        $order['cart'] = utf8_encode(bzcompress(serialize($cart), 9)); 
        $order['totalQty'] = $custom_request->totalQty;
        $order['pay_amount'] = round($custom_request->total / $curr->value, 2);
        // $order['method'] = $custom_request->method;
        $order['method'] = "Online Payment";
        $order['shipping'] = $custom_request->shipping;
        $order['pickup_location'] = $custom_request->pickup_location;
        $order['customer_email'] = $custom_request->email;
        $order['customer_name'] = $custom_request->name;
        $order['shipping_cost'] = $custom_request->shipping_cost;
        $order['packing_cost'] = $custom_request->packing_cost;
        $order['tax'] = $custom_request->tax;
        $order['customer_phone'] = $custom_request->phone;
        $order['order_number'] = str_random(4).time();
        $order['customer_address'] = $custom_request->address;
        $order['customer_country'] = $custom_request->customer_country;
        $order['customer_city'] = $custom_request->city;
        $order['customer_zip'] = $custom_request->zip;
        $order['shipping_email'] = $custom_request->shipping_email;
        $order['shipping_name'] = $custom_request->shipping_name;
        $order['shipping_phone'] = $custom_request->shipping_phone;
        $order['shipping_address'] = $custom_request->shipping_address;
        $order['shipping_country'] = $custom_request->shipping_country;
        $order['shipping_city'] = $custom_request->shipping_city;
        $order['shipping_zip'] = $custom_request->shipping_zip;
        $order['order_note'] = $custom_request->order_notes;
        $order['coupon_code'] = $custom_request->coupon_code;
        $order['coupon_discount'] = $custom_request->coupon_discount;
        $order['dp'] = $custom_request->dp;
        $order['payment_status'] = "Pending";
        $order['currency_sign'] = $curr->sign;
        $order['currency_value'] = $curr->value;
        $order['vendor_shipping_id'] = $custom_request->vendor_shipping_id;
        $order['vendor_packing_id'] = $custom_request->vendor_packing_id;
        $order['total_cashback'] =  (string)$custom_request->total_cashback;
        
        
        
        $uw = User::where('id',$custom_request->user_id)->first();
        // dump($uw);die();
        
        if($custom_request->left_wallet!=''){
        if((float)$uw->wallet>$custom_request->left_wallet){
        $user_used_w = User::where('id',$custom_request->user_id)->update([
            // 'wallet' =>(string)((float)$uw->wallet - $custom_request->used_wallet ) /* EIT code */
            'wallet' =>(string)(number_format((float)$custom_request->left_wallet, 2, '.', '') )  
        ]);
        }
        }
        
        
        $uc = User::where('id',$custom_request->user_id)->first();
        
        $w = 0;
        if($uc->wallet==null){
        $w = 0;
        }else{
        $w = (float)$uc->wallet;
        }
        $user_w = User::where('id',$custom_request->user_id)->update([
        'wallet' =>(string)($w+(float)$custom_request->total_cashback) /* EIT code */
        ]);
    
        // if (Session::has('affilate')) 
        // {
        // $val = $custom_request->total / 100;
        // $sub = $val * $gs->affilate_charge;
        // $user = User::findOrFail(Session::get('affilate'));
        
        // $user->affilate_income += $sub;
        
        // $user->update();
        // $order['affilate_user'] = $user->name;
        // $order['affilate_charge'] = $sub;
        // }
        
        $order->save();
        
        $track = new OrderTrack;
        $track->title = 'Pending';
        $track->text = 'You have successfully placed your order.';
        $track->order_id = $order->id;
        $track->save();
        
        $notification = new Notification;
        $notification->order_id = $order->id;
        $notification->save();
        if($custom_request->coupon_id != "")
        {
        $coupon = Coupon::findOrFail($custom_request->coupon_id);
        $coupon->used++;
        if($coupon->times != null)
        {
        $i = (int)$coupon->times;
        $i--;
        $coupon->times = (string)$i;
        }
        $coupon->update();
        
        }
        
        foreach($cart->items as $prod)
        {
        $x = (string)$prod['size_qty'];
        if(!empty($x))
        {
        $product = Product::findOrFail($prod['item']['id']);
        $x = (int)$x;
        $x = $x - $prod['qty'];
        $temp = $product->size_qty;
        $temp[$prod['size_key']] = $x;
        $temp1 = implode(',', $temp);
        $product->size_qty =  $temp1;
        $product->update();               
        }
        }
        
        
        foreach($cart->items as $prod)
        {
        $x = (string)$prod['stock'];
        if($x != null)
        {
        
        $product = Product::findOrFail($prod['item']['id']);
        $product->stock =  $prod['stock'];
        $product->update();  
        if($product->stock <= 5)
        {
        $notification = new Notification;
        $notification->product_id = $product->id;
        $notification->save();                    
        }              
        }
        }
        
        $notf = null;
        
        foreach($cart->items as $prod)
        {
        if($prod['item']['user_id'] != 0)
        {
        // $vorder =  new VendorOrder;
        // $vorder->order_id = $order->id;
        // $vorder->user_id = $prod['item']['user_id'];
        // $notf[] = $prod['item']['user_id'];
        // $vorder->qty = $prod['qty'];
        // $vorder->price = $prod['price'];
        // $vorder->order_number = $order->order_number;             
        // $vorder->save();
    
        $vendor_product = Product::findOrFail($prod['item']['id']);
    
    
        $vorder =  new VendorOrder;
        $vorder->order_id = $order->id;
        $vorder->user_id = $prod['item']['user_id'];
        $notf[] = $prod['item']['user_id'];
        $vorder->qty = $prod['qty'];
        $vorder->price = $prod['price'];
        $vorder->order_number = $order->order_number; 
    
        $vorder->vorder_commission =  $prod['qty']*$vendor_product->commission;    
        
        $vorder->save();
        }
        
        }
        
        if(!empty($notf))
            {
            $users = array_unique($notf);
            foreach ($users as $user) {
            $notification = new UserNotification;
            $notification->user_id = $user;
            $notification->order_number = $order->order_number;
            $notification->save();    
            }
        }
        
        Session::put('temporder',$order);
        Session::put('tempcart',$cart);
        
      
    
        // dump($custom_request->session());die();
        // $sesd = [];
        // $sesd['temporder'] = $order;
        // $sesd['tempcart'] = $cart;
    
        // dump(serialize($sesd));
        // DB::table('session')->insert(['data'=>$sesd]);
        // $sd = DB::table('session')->get();
        // dump($sd);
        // die();
    
        
        Session::forget('cart');
        
        Session::forget('already');
        Session::forget('coupon');
        Session::forget('coupon_total');
        Session::forget('coupon_total1');
        Session::forget('coupon_percentage');
        Session::forget('used_wallet');
        
        //Sending Email To Buyer
        
        if($gs->is_smtp == 1)
        {
        $data = [
        'to' => $custom_request->email,
        'type' => "new_order",
        'cname' => $custom_request->name,
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
        $to = $custom_request->email;
        $subject = "Your Order Placed!!";
        $msg = "Hello ".$custom_request->name."!\nYou have placed a new order.\nYour order number is ".$order->order_number.".Please wait for your delivery. \nThank you.";
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
        
        // $rd = Session::forget('insslreq');
        // return redirect($success_url);
        
    
    // ***********************
    // ***********************************
    // ***********************************
    // ***********************************
    
    // *********************************************************************************************************
    // ******************************************************************************************************************************************************************************************************************
    
    
                            /*CHECKOUT CODE END*/
                            
    
    
    
    
    $request->session()->save();

    if(Session::has('tempcart')){
        // echo 'Order found';die();
    $oldCart = Session::get('tempcart');
    $tempcart = new Cart($oldCart);
    $order = Session::get('temporder');

    // dump($order);
    // dump($tempcart);
    
    // die();

    }
    else{
        $tempcart = '';
        echo 'Order failed';die();
    }


































               

                    $order_update = DB::table('orders')
                    ->where('ssl_transaction_id',$tran_id)
                    ->update(['payment_status'=>'Paid']);

                    $update_product = DB::table('sslorders')
                    ->where('transaction_id',$tran_id)
                    ->update(['status' => 'Processing']);

                    // dump($order_update);
                    // dump($update_product);
                    // die();

                        if($update_product and  $order_update )
                        { 
                            return view('front.success',compact('tempcart','order'));
                        }else{
                            echo "<br >Something went wrong";
                        }

                echo "<br >Transaction is successfully Completed";
            } else {
                /*
                That means IPN did not work or IPN URL was not set in your merchant panel and Transation validation failed.
                Here you need to update order status as Failed in order table.
                */
                $update_product = DB::table('sslorders')
                    ->where('transaction_id', $tran_id)
                    ->update(['status' => 'Failed']);
                echo "validation Fail";
            }
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            /*
             That means through IPN Order status already updated. Now you can just show the customer that transaction is completed. No need to udate database.
             */
            echo "Transaction is successfully Completed";
        } else {
            #That means something wrong happened. You can redirect customer to your product page.
            echo "Invalid Transaction";
        }


    }

    public function fail(Request $request)
    {
        $tran_id = $request->input('tran_id');

        $order_detials = DB::table('sslorders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'status', 'currency', 'amount')->first();

        if ($order_detials->status == 'Pending') {
            $update_product = DB::table('sslorders')
                ->where('transaction_id', $tran_id)
                ->update(['status' => 'Failed']);
            echo "Transaction is Falied";
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            echo "Transaction is already Successful";
        } else {
            echo "Transaction is Invalid";
        }

    }

    public function cancel(Request $request)
    {
        $tran_id = $request->input('tran_id');

        $order_detials = DB::table('sslorders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'status', 'currency', 'amount')->first();

        if ($order_detials->status == 'Pending') {
            $update_product = DB::table('sslorders')
                ->where('transaction_id', $tran_id)
                ->update(['status' => 'Canceled']);
            echo "Transaction is Cancel";
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            echo "Transaction is already Successful";
        } else {
            echo "Transaction is Invalid";
        }


    }

    public function ipn(Request $request)
    {
        #Received all the payement information from the gateway
        if ($request->input('tran_id')) #Check transation id is posted or not.
        {

            $tran_id = $request->input('tran_id');

            #Check order status in order tabel against the transaction id or order id.
            $order_details = DB::table('sslorders')
                ->where('transaction_id', $tran_id)
                ->select('transaction_id', 'status', 'currency', 'amount')->first();

            if ($order_details->status == 'Pending') {
                $sslc = new SslCommerzNotification();
                $validation = $sslc->orderValidate($tran_id, $order_details->amount, $order_details->currency, $request->all());
                if ($validation == TRUE) {
                    /*
                    That means IPN worked. Here you need to update order status
                    in order table as Processing or Complete.
                    Here you can also sent sms or email for successful transaction to customer
                    */
                    $update_product = DB::table('sslorders')
                        ->where('transaction_id', $tran_id)
                        ->update(['status' => 'Processing']);

                    echo "Transaction is successfully Completed";
                } else {
                    /*
                    That means IPN worked, but Transation validation failed.
                    Here you need to update order status as Failed in order table.
                    */
                    $update_product = DB::table('sslorders')
                        ->where('transaction_id', $tran_id)
                        ->update(['status' => 'Failed']);

                    echo "validation Fail";
                }

            } else if ($order_details->status == 'Processing' || $order_details->status == 'Complete') {

                #That means Order status already updated. No need to udate database.

                echo "Transaction is already successfully Completed";
            } else {
                #That means something wrong happened. You can redirect customer to your product page.

                echo "Invalid Transaction";
            }
        } else {
            echo "Invalid Data";
        }
    }

}
