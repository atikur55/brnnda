<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Generalsetting;
use App\Models\Currency;
use Illuminate\Support\Facades\Session;

use Nexmo\Laravel\Facade\Nexmo as Nexmo;

class Eitnexmo extends Model
{

    

    public static function sendsms($to,$from,$text)
    {
     // $send = Nexmo::message()->send([
				// 	'to'   => $to ,
					// 	'from' => $from,
					// 	'text' => $text
					// ]);	
        $send = 1;
        return $send;
    }

   


}
