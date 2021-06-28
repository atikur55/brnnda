<?php

namespace App\Http\Middleware;

use Closure;
use Request;

use Illuminate\Support\Facades\DB;

class androidToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $chk = DB::table('android_token')->where('android_token',$request->android_token)->first();
        if($chk){
            return $next($request);
        }else{
            return 'Unauthenticated app';die();
        }
   
    }
}
