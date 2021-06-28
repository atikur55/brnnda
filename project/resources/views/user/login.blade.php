@extends('layouts.front')

@section('content')

<section class="login-signup">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-6">
        <nav class="comment-log-reg-tabmenu"  style="z-index:0">
          <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <a class="nav-item nav-link login active" id="nav-log-tab" data-toggle="tab" href="#nav-log" role="tab"
              aria-controls="nav-log" aria-selected="true">
              {{ $langg->lang197 }}
            </a>
            <a class="nav-item nav-link" id="nav-reg-tab" data-toggle="tab" href="#nav-reg" role="tab"
              aria-controls="nav-reg" aria-selected="false">
              {{ $langg->lang198 }}
            </a>
          </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade show active" id="nav-log" role="tabpanel" aria-labelledby="nav-log-tab">
            <div class="login-area">
              <div class="header-area">
                <h4 class="title">
                {{-- {{ $langg->lang172 }} --}}
                Login Now
                </h4>
                  
                @if(session('success'))
                <h3 class="alert alert-success">{{session('success')}}</h3>
                 @endif
                @if(session('error'))
                <h3 class="alert alert-danger">{{session('error')}}</h3>
                @endif

              </div>
              <div class="login-form signin-form">
                @include('includes.admin.form-login')
                <form class="mloginform" action="{{ route('user.login.submit') }}" method="POST">
                  {{ csrf_field() }}
                  {{--  <div class="form-input">
                    <input type="email" name="email" placeholder="{{ $langg->lang173 }}" required="">
                    <i class="icofont-user-alt-5"></i>
                  </div>  --}}
                  
                  <div class="form-input">
                    <input type="text" name="phone" placeholder="Mobile number" required="">
                    <i class="icofont-user-alt-5"></i>
                  </div>

                  <div class="form-input">
                    <input type="password" class="Password" name="password" id="loginpassshowhide" placeholder="{{ $langg->lang174 }}"
                      required="">
                    <i class="icofont-ui-password"></i>
                    <div class="togglepos">
                        <i class="bi bi-eye-slash" id="togglePassword"></i>
                    </div>
                    
                  </div>
                  <div class="form-forgot-pass">
                    <div class="left">
                      <input type="checkbox" name="remember" id="mrp" {{ old('remember') ? 'checked' : '' }}>
                      <label for="mrp">{{ $langg->lang175 }}</label>
                    </div>
                    <div class="right">
                      <a href="{{ route('user-forgot') }}">
                        {{ $langg->lang176 }}
                      </a>
                    </div>
                  </div>
                  <input type="hidden" name="modal" value="1">
                  <input class="mauthdata" type="hidden" value="{{ $langg->lang177 }}">
                  <button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
                  @if(App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check ==
                  1)
                  <div class="social-area">
                    <h3 class="title">{{ $langg->lang179 }}</h3>
                    <p class="text">{{ $langg->lang180 }}</p>
                    <ul class="social-links">
                      @if(App\Models\Socialsetting::find(1)->f_check == 1)
                      <li>
                        <a href="{{ route('social-provider','facebook') }}">
                          <i class="fab fa-facebook-f"></i>
                        </a>
                      </li>
                      @endif
                      @if(App\Models\Socialsetting::find(1)->g_check == 1)
                      <!--<li>-->
                      <!--  <a href="{{ route('social-provider','google') }}">-->
                      <!--    <i class="fab fa-google-plus-g"></i>-->
                      <!--  </a>-->
                      <!--</li>-->
                      @endif
                       <li>
                        <a href="{{ url('auth/google') }}">
                          <i class="fab fa-google-plus-g"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                  @endif
                </form>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="nav-reg" role="tabpanel" aria-labelledby="nav-reg-tab">
            <div class="login-area signup-area">
              <div class="header-area">
                <h4 class="title">{{ $langg->lang181 }}</h4>
                
                @if(session('success'))
                <h3 class="alert alert-success">{{session('success')}}</h3>
                @elseif(session('error'))
                <h3 class="alert alert-danger">{{session('error')}}</h3>
                @endif

              </div>
              <div class="login-form signup-form">


                @include('includes.admin.form-login')
                <form class="mregisterform" action="{{route('user-register-submit')}}" method="POST">
                  {{ csrf_field() }}

                  <div class="form-input">
                    <input type="text" class="User Name" name="name" placeholder="{{ $langg->lang182 }}" required="">
                    <i class="icofont-user-alt-5"></i>
                  </div>

                  {{-- <div class="form-input">
                    <input type="email" class="User Name" name="email" placeholder="{{ $langg->lang183 }}" required="">
                    <i class="icofont-email"></i>
                  </div> --}}

                  <div class="form-input">
                    <input type="text" class="User Name" name="phone" placeholder="{{ $langg->lang184 }}" required="">
                    <i class="icofont-phone"></i>
                  </div>

                  <div class="form-input">
                    <input type="text" class="User Name" name="address" placeholder="{{ $langg->lang185 }}" required="">
                    <i class="icofont-location-pin"></i>
                  </div>

                  <div class="form-input">
                    <input type="password" class="Password" name="password" placeholder="{{ $langg->lang186 }}" id="loginpassshowhide1"
                      required="">
                    <i class="icofont-ui-password"></i>
                    <div class="togglepos">
                        <i class="bi bi-eye-slash" id="togglePassword1"></i>
                    </div>
                  </div>

                  <div class="form-input">
                    <input type="password" class="Password" name="password_confirmation" id="loginpassshowhide2"
                      placeholder="{{ $langg->lang187 }}" required="">
                    <i class="icofont-ui-password"></i>
                    <div class="togglepos">
                        <i class="bi bi-eye-slash" id="togglePassword2"></i>
                    </div>
                  </div>
                  
                  
                  <!--SHOW HIDE SCRIPT-->
                  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
                    <style>
                        .togglepos{
                            position:absolute!important;
                            right:50px;
                            top:50%;
                        }
                        .togglepos i{
                            font-size: 1.25rem;
                        }
                    </style>
                    
                  <script>
                        const togglePassword = document.querySelector('#togglePassword');
                        const password = document.querySelector('#loginpassshowhide');
                        
                        togglePassword.addEventListener('click', function (e) {
                            // toggle the type attribute
                            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                            password.setAttribute('type', type);
                            // toggle the eye / eye slash icon
                            this.classList.toggle('bi-eye');
                        });
                        
                        const togglePassword1 = document.querySelector('#togglePassword1');
                        const password1 = document.querySelector('#loginpassshowhide1');
                        
                        togglePassword1.addEventListener('click', function (e) {
                            // toggle the type attribute
                            const type = password1.getAttribute('type') === 'password' ? 'text' : 'password';
                            password1.setAttribute('type', type);
                            // toggle the eye / eye slash icon
                            this.classList.toggle('bi-eye');
                        });
                        
                        const togglePassword2 = document.querySelector('#togglePassword2');
                        const password2 = document.querySelector('#loginpassshowhide2');
                        
                        togglePassword2.addEventListener('click', function (e) {
                            // toggle the type attribute
                            const type = password2.getAttribute('type') === 'password' ? 'text' : 'password';
                            password2.setAttribute('type', type);
                            // toggle the eye / eye slash icon
                            this.classList.toggle('bi-eye');
                        });
                    </script>
                  <!--SHOW HIDE SCRIPT-->

                  @if($gs->is_capcha == 1)

                  <ul class="captcha-area">
                    <li>
                      <p><img class="codeimg1" src="{{asset("assets/images/capcha_code.png")}}" alt=""> <i
                          class="fas fa-sync-alt pointer refresh_code "></i></p>
                    </li>
                  </ul>

                  <div class="form-input">
                    <input type="text" class="Password" name="codes" placeholder="{{ $langg->lang51 }}" required="">
                    <i class="icofont-refresh"></i>
                  </div>

                  @endif

                  <input class="mprocessdata" type="hidden" value="{{ $langg->lang188 }}">
                  <button type="submit" class="submit-btn">{{ $langg->lang189 }}</button>

                </form>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>
  </div>
</section>

@endsection