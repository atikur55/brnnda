<?php


namespace App\Classes;

use Illuminate\Support\Facades\DB;

class AndroidTokenCheck{
    public function __construct()
    {
        $chk = DB::table('android_token')->where('android_token',$request->android_token)->first();
        if($chk){
            return $next($request);
        }else{
            return 'Unauthenticated app';die();
        }
    }
}