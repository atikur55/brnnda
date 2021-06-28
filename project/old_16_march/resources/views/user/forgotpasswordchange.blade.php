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
                        <a href="{{ route('user-forgot') }}">
                            {{ $langg->lang190 }}
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
                        <h4 class="title">{{ $langg->lang191 }} </h4>
                        <p class="text">
                            {{--  {{ $langg->lang192 }}  --}}
                            Please write your mobile number
                          </p>
                    </div>
                    <div class="login-form">
                                                <form  action="{{route('forgot-reset-submit')}}" method="POST" enctype="multipart/form-data">
                                                    {{ csrf_field() }}
                                                    @include('includes.admin.form-both') 
                                                    {{--  <div class="row">
                                                        <div class="col-lg-12">
                                                                <input type="password" name="cpass"  class="input-field" placeholder="{{ $langg->lang273 }}" value="" required="">
                                                        </div>
                                                    </div>  --}}
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                                <input type="password" name="newpass"  class="input-field" placeholder="{{ $langg->lang274 }}" value="" required="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                                <input type="password" name="renewpass"  class="input-field" placeholder="{{ $langg->lang275 }}" value="" required="">
                                                        </div>
                                                    </div>

                                                        <div class="form-links">

                                                            <input type="text" name="otp" value="{{session('code')}}" readonly>
                                                            <input type="text" name="phone" value="{{session('phone')}}" readonly>

                                                            <button class="submit-btn" type="submit">{{ $langg->lang276 }}</button>
                                                        </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        
                        @endsection