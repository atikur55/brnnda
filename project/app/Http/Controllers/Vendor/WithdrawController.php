<?php

namespace App\Http\Controllers\Vendor;

use App\Models\User;
use App\Models\Withdraw;
use App\Models\Generalsetting;
use App\Classes\GeniusMailer;
use Auth;
use App\Models\Currency;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class WithdrawController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

  	public function index()
    {
        $withdraws = Withdraw::where('user_id','=',Auth::guard('web')->user()->id)->where('type','=','vendor')->orderBy('id','desc')->get();
        $sign = Currency::where('is_default','=',1)->first();        
        return view('vendor.withdraw.index',compact('withdraws','sign'));
    }


    public function create()
    {
        $sign = Currency::where('is_default','=',1)->first();
        return view('vendor.withdraw.create' ,compact('sign'));
    }


    public function store(Request $request)
    {

        // dump($request);die();

        $from = User::findOrFail(Auth::guard('web')->user()->id);
        $withdrawcharge = Generalsetting::findOrFail(1);
        $charge = $withdrawcharge->withdraw_fee;
        $min_withdraw_amount = $withdrawcharge->vendor_min_withdraw_amount;

        // dump($withdrawcharge);die();
        if($request->amount > $min_withdraw_amount ){

            $amount = $request->amount;

            if ($from->current_balance > $amount){
                $fee = (($withdrawcharge->withdraw_charge / 100) * $amount) + $charge;
                // $fee = 0;
                $finalamount = $amount - $fee;
          
                $finalamount = number_format((float)$finalamount,2,'.','');

                $from->current_balance = $from->current_balance - $amount;
                $from->update();

                $newwithdraw = new Withdraw();
                $newwithdraw['user_id'] = Auth::user()->id;
                $newwithdraw['method'] = $request->methods;
                $newwithdraw['acc_email'] = $request->acc_email;
                $newwithdraw['iban'] = $request->iban;
                $newwithdraw['country'] = $request->acc_country;
                $newwithdraw['acc_name'] = $request->acc_name;
                $newwithdraw['address'] = $request->address;
                $newwithdraw['swift'] = $request->swift;
                $newwithdraw['reference'] = $request->reference;
                $newwithdraw['amount'] = $finalamount;
                $newwithdraw['fee'] = $fee;
                $newwithdraw['type'] = 'vendor';
                $newwithdraw->save();
                $gs = Generalsetting::findOrFail(1);
                if($gs->is_smtp == 1)
                {
                    $data = 0;
                    $datas = [
                            'to' => $from->email,
                            'subject' => 'withdraw',
                            'body' => 'harajada',
                    ];
        
                    $mailer = new GeniusMailer();
                    $mail = $mailer->sendCustomMail($datas);
                    if($mail) {
                        $data = 1;
                    }
                }
                else
                {
                    $data = 0;
                    $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
                    $mail = mail($from->email,'withdraw','harajada',$headers);
                    if($mail) {
                        $data = 1;
                    }
                }
        
                // return response()->json($data,235);

                return response()->json('Withdraw Request Sent Successfully.'); 

            }else{
                 return response()->json(array('errors' => [ 0 => 'Insufficient Balance.' ])); 
            }
        }
            return response()->json(array('errors' => [ 0 => 'Please enter amount more than '.$min_withdraw_amount.' tk' ])); 

    }
}
