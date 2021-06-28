<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Socialite;
use Auth;
use Exception;
use App\Models\User;
use Illuminate\Support\Facades\Redirect;

class LoginWithGoogleController extends Controller
{
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
    {
        try {
      
            $user = Socialite::driver('google')->user();
            
       
            $finduser = User::where('google_id', $user->id)->first();
            if($finduser){
       
                Auth::login($finduser);
                return redirect('dashboard');
                // return redirect()->intended('dashboard');
                // return Redirect::to('dashboard');
       
            }else{
                $newUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'google_id'=> $user->id,
                ]);
      
                Auth::login($newUser);
      return redirect('dashboard');
                // return redirect()->intended('dashboard');
                // return Redirect::to('https://brnnda.com/user/dashboard');
            }
      
        } catch (Exception $e) {
            dd($e->getMessage());
        }

        // try {
        //     $user = Socialite::driver('google')->user();
        //     $finduser = User::where('google_id', $user->id)->first();
        //     if ($finduser) {
        //         Auth::login($finduser);
        //         return redirect('/home');
        //     } else {
        //         $newUser = User::create([
        //             'name' => $user->name,
        //             'email' => $user->email,
        //             'google_id' => $user->id
        //             ]);
        //         Auth::login($newUser);
        //         return redirect()->back();
        //         // return redirect('/home');
        //     }
        // }
        // catch(Exception $e) {
        //     return redirect('auth/google');     
        // }

    }
}
