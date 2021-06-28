@extends('layouts.front')

@section('content')

<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="pages">
                    <li>
                        <a href="{{ route('front.index') }}">
                            {{ $langg->lang17 }}
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('user-otp') }}">
                            {{-- {{ $langg->lang190 }} --}}
                            Verify OTP for {{$phone}}
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>


<section class="login-signup forgot-password">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="login-area">
                    <div class="header-area forgot-passwor-area">
                        <h4 class="title">
                        {{-- {{ $langg->lang191 }}  --}}
                        Verify OTP
                        </h4>
                        <p class="text">
                        {{-- {{ $langg->lang192 }}  --}}
                        Please type OTP Code
                        </p>
                    </div>
                    <div class="login-form">
                        @include('includes.admin.form-login')
                        <form  action="{{route('user-rotp-submit')}}" method="POST">
                            {{ csrf_field() }}
                            <div class="form-input">
                                <input type="text" name="otp" class="otp" placeholder="XXXX"
                                    required="">
                                <i class="icofont-user-alt-5"></i>
                            </div>
                            <div class="to-login-page">
                                {{-- <a href="{{ route('user.login') }}">
                                    {{ $langg->lang194 }}
                                </a> --}}
                                try 1111 for testing period
                            </div>
                            <input class="authdata" type="hidden" value="{{ $langg->lang195 }}">
                            <input name="phone" type="hidden" value="{{session('phone') }}">
                            <button type="submit" class="submit-btn">{{ $langg->lang196 }}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection