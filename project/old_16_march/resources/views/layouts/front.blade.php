<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    @if(isset($page->meta_tag) && isset($page->meta_description))
        <meta name="keywords" content="{{ $page->meta_tag }}">
        <meta name="description" content="{{ $page->meta_description }}">
		<title>{{$gs->title}}</title>
    @elseif(isset($blog->meta_tag) && isset($blog->meta_description))
        <meta name="keywords" content="{{ $blog->meta_tag }}">
        <meta name="description" content="{{ $blog->meta_description }}">
		<title>{{$gs->title}}</title>
    @elseif(isset($productt))
		<meta name="keywords" content="{{ !empty($productt->meta_tag) ? implode(',', $productt->meta_tag ): '' }}">
		<meta name="description" content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}">
	    <meta property="og:title" content="{{$productt->name}}" />
	    <meta property="og:description" content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}" />
	    <meta property="og:image" content="{{asset('assets/images/'.$productt->photo)}}" />
	    <meta name="author" content="GeniusOcean">
    	<title>{{substr($productt->name, 0,11)."-"}}{{$gs->title}}</title>
    @else
	    <meta name="keywords" content="{{ $seo->meta_keys }}">
	    <meta name="author" content="GeniusOcean">
		<title>{{$gs->title}}</title>

    @endif
	<!-- favicon -->
	<link rel="icon"  type="image/x-icon" href="{{asset('assets/images/'.$gs->favicon)}}"/>
	<!-- bootstrap -->
	<link rel="stylesheet" href="{{asset('assets/front/css/bootstrap.min.css')}}">
	<!-- Plugin css -->
	<link rel="stylesheet" href="{{asset('assets/front/css/plugin.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/css/animate.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/css/toastr.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/css/toastr.css')}}">

	<!-- jQuery Ui Css-->
	<link rel="stylesheet" href="{{asset('assets/front/jquery-ui/jquery-ui.min.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/jquery-ui/jquery-ui.structure.min.css')}}">

@if($langg->rtl == "1")

	<!-- stylesheet -->
	<link rel="stylesheet" href="{{asset('assets/front/css/rtl/style.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/css/rtl/custom.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/css/common.css')}}">
	<!-- responsive -->
	<link rel="stylesheet" href="{{asset('assets/front/css/rtl/responsive.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/css/common-responsive.css')}}">

    <!--Updated CSS-->
 <link rel="stylesheet" href="{{ asset('assets/front/css/rtl/styles.php?color='.str_replace('#','',$gs->colors).'&amp;'.'header_color='.str_replace('#','',$gs->header_color).'&amp;'.'footer_color='.str_replace('#','',$gs->footer_color).'&amp;'.'copyright_color='.str_replace('#','',$gs->copyright_color).'&amp;'.'menu_color='.str_replace('#','',$gs->menu_color).'&amp;'.'menu_hover_color='.str_replace('#','',$gs->menu_hover_color)) }}">

@else

	<!-- stylesheet -->
	<link rel="stylesheet" href="{{asset('assets/front/css/style.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/css/custom.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/css/common.css')}}">
	<!-- responsive -->
	<link rel="stylesheet" href="{{asset('assets/front/css/responsive.css')}}">
	<link rel="stylesheet" href="{{asset('assets/front/css/common-responsive.css')}}">

    <!--Updated CSS-->
 <link rel="stylesheet" href="{{ asset('assets/front/css/styles.php?color='.str_replace('#','',$gs->colors).'&amp;'.'header_color='.str_replace('#','',$gs->header_color).'&amp;'.'footer_color='.str_replace('#','',$gs->footer_color).'&amp;'.'copyright_color='.str_replace('#','',$gs->copyright_color).'&amp;'.'menu_color='.str_replace('#','',$gs->menu_color).'&amp;'.'menu_hover_color='.str_replace('#','',$gs->menu_hover_color)) }}">

@endif



	@yield('styles')

	<style>
		@media only screen and (max-width: 767px){
		.top-header .content .left-content ul li{
			text-align: center !important;
		}
	}
	.top-header .content .left-content .list ul li a::after {
		content: "";
	}
			.top-social-links ul li a{
				color:#ccc;
				margin-left: 12px;
				transition: 0.4s;
	
			}
			.top-social-links ul li a:hover{
				color:#fff
	
			}
	
			.brnnda_color{
				background:#0e2141;
			}
	
		.categoris{
				background:white!important;
			}
		.logo-header .search-box .search-form input {
			background:white!important;
			}
			.logo-header .search-box .search-form button {
				background:#ee222b!important;
				margin-top:0.1px!important;
					}
	
		.header-icon{
			color:white!important;
	
		}
		.header-icon-val{
			color:white!important;
			background:#ee222b!important;
	
		}
	
		.categories_title {
		background:#ee222b!important; 
	}
	
	.mainmenu-area .core-nav .wrap-core-nav-list.right {
		text-align: left;
		height:39px;
		background: #0c1725;
		z-index: 0;
	}
	@media (max-width: 991px){
		.mainmenu-area .core-nav .wrap-core-nav-list.right {
		height:162px;
	}
	}
	
	nav .menu li a {
		color:#fff!important;
	}
	nav .menu li a:hover{
		background-color: #ffffff31;
		color: white !important;
	}
	.brnnda_main_content{
		margin-top:111px;
	}
	.brnnda_bg_color{
		background: #0c1725  !important;
	}
	
	@media (max-width: 991px){
	  .logo a img {
		width: 50%;
		margin-top: -5px;
	}
	}
	@media (max-width: 768px){
	  .logo a img {
		width: 25%;
		margin-top: -5px;
	}
	}
	
	@media (max-width: 575px){
	  .logo a img {
		width: 103px;
		margin-top: -5px;
	}
	}
	@media (max-width: 1220px){
		.hero-area .hero-area-slider .intro-carousel .intro-content{
		  height: 75vh !important;
		}
	}
	.top-header .content .right-content .list li {
		font-size: 14px;
	}
	
	.logo-header .search-box .search-form button {
				font-size: 12px;
				width: 75px;
			}
		@media (max-width:768px){
			.logo-responsive-app{
		text-align: center;
	}
		}
		 @media (width:768px){
			.logo-responsive-app{
				text-align: left;
			}
			.logo a img {
				width: 38%;
				margin-top: -5px;
			}
		}
	
	
	/*.banner-effect img{*/
	/*    max-width:97.5%;*/
	/*}*/
		</style>

</head>

<body>
<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root" class="d-none d-md-block" style="z-index:99999" ></div>
<script>
  window.fbAsyncInit = function() {
	FB.init({
	  xfbml            : true,
	  version          : 'v9.0'
	});
  };
						
  (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
						
<!-- Your Chat Plugin code -->
<div class="fb-customerchat"
  attribution="setup_tool"
  page_id="177441787152131"
  theme_color="#ee222b">
</div>

@if($gs->is_loader == 1)
	<div class="preloader" id="preloader" style="background: url({{asset('assets/images/'.$gs->loader)}}) no-repeat scroll center center #FFF;"></div>
@endif

@if($gs->is_popup== 1)

@if(isset($visited))
    <div style="display:none">
        <img src="{{asset('assets/images/'.$gs->popup_background)}}">
    </div>

    <!--  Starting of subscribe-pre-loader Area   -->
    <div class="subscribe-preloader-wrap" id="subscriptionForm" style="display: none;">
        <div class="subscribePreloader__thumb" style="background-image: url({{asset('assets/images/'.$gs->popup_background)}});">
            <span class="preload-close"><i class="fas fa-times"></i></span>
            <div class="subscribePreloader__text text-center">
                <h1>{{$gs->popup_title}}</h1>
                <p>{{$gs->popup_text}}</p>
                <form action="{{route('front.subscribe')}}" id="subscribeform" method="POST">
                    {{csrf_field()}}
                    <div class="form-group">
                        <input type="email" name="email"  placeholder="{{ $langg->lang741 }}" required="">
                        <button id="sub-btn" type="submit">{{ $langg->lang742 }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--  Ending of subscribe-pre-loader Area   -->

@endif

@endif


	<section class="d-none d-md-block top-header" style="background-color: #0c1725">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 remove-padding">
					<div class="content">
						<div class="left-content">
							<div class="list">
							    
								<ul>
									<li>
										<div class="language-selector" style="padding-left:0">
											<a class="sell-btn" style="background-color: #0c1725;margin-left:0" ><i style="font-size:20px;color:#ee222b" class="fas fa-phone-volume"></i><span>+8801886060861</span> </a>
										</div>
									</li>
									<li>
										<div class="language-selector" style="padding-left:0">
											<a class="sell-btn" style="background-color: #0c1725;margin-left:0" ><i style="font-size:20px;color:#ee222b" class="far fa-envelope"></i><span>support@brnnda.com</span> </a>
										</div>
									</li>

								</ul>
							</div>
						</div>
						<div class="right-content">
							<div class="list">
								<ul>
						

									<li>

										<div class="top-social-links">
											<ul>
											              <li>
															<a href="">
																<i class="far fa-arrow-alt-circle-down" style="color:#ee222b"></i><span>Download Our App</span>
															</a>
														  </li>
															@if(App\Models\Socialsetting::find(1)->f_status == 1)
														  <li>
															<a href="{{ App\Models\Socialsetting::find(1)->facebook }}" class="facebook" target="_blank">
																<i class="fab fa-facebook-f"></i>
															</a>
														  </li>
														  @endif
					
														  @if(App\Models\Socialsetting::find(1)->g_status == 1)
														  <li>
															<a href="{{ App\Models\Socialsetting::find(1)->gplus }}" class="google-plus" target="_blank">
																<i class="fab fa-google-plus-g"></i>
															</a>
														  </li>
														  @endif
					
														  @if(App\Models\Socialsetting::find(1)->t_status == 1)
														  <li>
															<a href="{{ App\Models\Socialsetting::find(1)->twitter }}" class="twitter" target="_blank">
																<i class="fab fa-twitter"></i>
															</a>
														  </li>
														  @endif
					
														  @if(App\Models\Socialsetting::find(1)->l_status == 1)
														  <li>
															<a href="{{ App\Models\Socialsetting::find(1)->linkedin }}" class="linkedin" target="_blank">
																<i class="fab fa-linkedin-in"></i>
															</a>
														  </li>
														  @endif
					
														  @if(App\Models\Socialsetting::find(1)->d_status == 1)
														  <li>
															<a href="{{ App\Models\Socialsetting::find(1)->dribble }}" class="dribbble" target="_blank">
																<i class="fab fa-dribbble"></i>
															</a>
														  </li>
														  @endif
					
											</ul>
										</div>
									</li>
                   


								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Top Header Area End -->

	
	<!--Main-Menu Area Start-->
	<div class="mainmenu-area mainmenu-bb ">
		<div class=" brnnda_bg_color">



			<!-- Logo Header Area Start -->
			<section class="logo-header brnnda_color" style="background-color: #0b1a2d">
				<div class="container">
					<div class="row ">
						<div class="col-lg-2 col-md-6 col-sm-12 col-12 remove-padding">
							<div class="logo logo-responsive-app">
								<a href="{{ route('front.index') }}">
									<img src="{{asset('assets/images/'.$gs->logo)}}" alt="">
								</a>
							</div>
						</div>
						<div class="col-lg-8 col-sm-12 remove-padding order-last order-sm-2 order-md-2" >
					<div class="search-box-wrapper">
						<div class="search-box" style="border-radius:30px;">
							<div class="categori-container" id="catSelectForm">
								<select name="category" id="category_select" class="categoris">
									<option value="">{{ $langg->lang1 }}</option>
									@foreach($categories as $data)
									<option value="{{ $data->slug }}" {{ Request::route('category') == $data->slug ? 'selected' : '' }}>{{ $data->name }}</option>
									@endforeach
								</select>
							</div>

							<form id="searchForm" class="search-form" action="{{ route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')]) }}" method="GET">
								@if (!empty(request()->input('sort')))
									<input type="hidden" name="sort" value="{{ request()->input('sort') }}">
								@endif
								@if (!empty(request()->input('minprice')))
									<input type="hidden" name="minprice" value="{{ request()->input('minprice') }}">
								@endif
								@if (!empty(request()->input('maxprice')))
									<input type="hidden" name="maxprice" value="{{ request()->input('maxprice') }}">
								@endif
								<input type="text" id="prod_name" name="search" placeholder="{{ $langg->lang2 }}" value="{{ request()->input('search') }}" autocomplete="off">
								<div class="autocomplete d-none d-md-block">
								  <div style="width: 91.5%" id="myInputautocomplete-list" class="autocomplete-items">
								  </div>
								</div>
								<button type="submit" style="border-radius:0px 30px 30px 0px;">SEARCH</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 col-7 remove-padding order-lg-last  d-none d-md-block">
					<div class="helpful-links">
						<ul class="helpful-links-inner">

						
			
							
								@if(!Auth::guard('web')->check())
									<li class="login">
										<a href="{{ route('user.login') }}" style="font-size:18px">
											{{-- <div class="links"> --}}
												{{-- <i style="color: white" class="far fa-user" ></i>	 --}}
												<img src="{{asset('assets/images/user (2).svg')}}" >
											{{-- </div> --}}
										</a>
									</li>
									@else

										@if(!Auth::user()->is_vendor==2)


										<li class="profilearea my-dropdown">
											<a href="javascript: ;" id="profile-icon" class="profile carticon" style="font-size:18px">
												<span class="text">
													{{-- <i style="color: white" class="far fa-user" ></i> --}}
													<img src="{{asset('assets/images/user (2).svg')}}" >	
													{{-- {{ $langg->lang11 }}
													<i class="fas fa-chevron-down"></i> --}}
												</span>
											</a>
											<div style="width: 180px; display:block;text-align:left;padding-left:4px;padding-top: 10px;padding-bottom: 10px;border-bottom-left-radius: 4px;border-bottom-right-radius: 4px;" class="my-dropdown-menu profile-dropdown">
												<ul class="profile-links">
													<li>
														<a href="{{ route('user-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang221 }}</a>
													</li>
													@if(Auth::user()->IsVendor())
													<li>
														<a href="{{ route('vendor-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang222 }}</a>
													</li>
													@endif

													<li>
														<a href="{{ route('user-profile') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang205 }}</a>
													</li>

													<li>
														<a href="{{ route('user-logout') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang223 }}</a>
													</li>
												</ul>
											</div>
										</li>
										@endif
									@endif

								@if(!Auth::guard('web')->check())

									<li class="my-dropdown"  data-toggle="tooltip" data-placement="top" title="{{ $langg->lang3 }}">
										<a href="javascript:;" class="cart carticon">
											<div class="icon ">
												{{-- <i class="icofont-cart header-icon"></i> --}}
												<img src="{{asset('assets/images/shopping-bag (1).svg')}}" >
												<span class="cart-quantity header-icon-val" id="cart-count">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
											</div>

										</a>

										<div class="my-dropdown-menu" id="cart-items">
											@include('load.cart')
										</div>
									</li>
								<li class="wishlist"  data-toggle="tooltip" data-placement="top" title="{{ $langg->lang9 }}">
									@if(Auth::guard('web')->check())
										<a href="{{ route('user-wishlists') }}" class="wish">
											{{-- <i style="font-size:18px" class="far fa-heart header-icon"></i> --}}
											<img src="{{asset('assets/images/heart (2).svg')}}" >
											<span id="wishlist-count" class="header-icon-val">{{ count(Auth::user()->wishlists) }}</span>
										</a>
									@else
										<a href="javascript:;" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" class="wish">
											{{-- <i style="font-size:18px" class="far fa-heart header-icon"></i> --}}
											<img src="{{asset('assets/images/heart (2).svg')}}" >
											<span id="wishlist-count" class="header-icon-val">0</span>
										</a>
									@endif
								</li>
								<li class="compare"  data-toggle="tooltip" data-placement="top" title="{{ $langg->lang10 }}">
									<a href="{{ route('product.compare') }}" class="wish compare-product">
										<div class="icon">
											<i style="font-size:18px" class="fas fa-exchange-alt header-icon"></i>
											<span id="compare-count" class="header-icon-val">{{ Session::has('compare') ? count(Session::get('compare')->items) : '0' }}</span>
										</div>
									</a>
								</li>
								@else 
									@if(!Auth::user()->is_vendor==2)
									<li class="my-dropdown"  data-toggle="tooltip" data-placement="top" title="{{ $langg->lang3 }}">
										<a href="javascript:;" class="cart carticon">
											<div class="icon ">
												{{-- <i class="icofont-cart header-icon"></i> --}}
												<img src="{{asset('assets/images/shopping-bag (1).svg')}}" >
												<span class="cart-quantity header-icon-val" id="cart-count">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
											</div>

										</a>

										<div class="my-dropdown-menu" id="cart-items">
											@include('load.cart')
										</div>
									</li>
								<li class="wishlist"  data-toggle="tooltip" data-placement="top" title="{{ $langg->lang9 }}">
									@if(Auth::guard('web')->check())
										<a href="{{ route('user-wishlists') }}" class="wish">
											{{-- <i style="font-size:18px" class="far fa-heart header-icon"></i> --}}
											<img src="{{asset('assets/images/shopping-bag (1).svg')}}" >
											<span id="wishlist-count" class="header-icon-val">{{ count(Auth::user()->wishlists) }}</span>
										</a>
									@else
										<a href="javascript:;" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" class="wish">
											{{-- <i style="font-size:18px" class="far fa-heart header-icon"></i> --}}
											<img src="{{asset('assets/images/shopping-bag (1).svg')}}" >
											<span id="wishlist-count" class="header-icon-val">0</span>
										</a>
									@endif
								</li>
								<li class="compare"  data-toggle="tooltip" data-placement="top" title="{{ $langg->lang10 }}">
									<a href="{{ route('product.compare') }}" class="wish compare-product">
										<div class="icon">
											<i style="font-size:18px" class="fas fa-exchange-alt header-icon"></i>
											<span id="compare-count" class="header-icon-val">{{ Session::has('compare') ? count(Session::get('compare')->items) : '0' }}</span>
										</div>
									</a>
								</li>
									@endif 
								@endif
					
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Logo Header Area End -->



	<div class="container" style="height:40px">


		<div class="row align-items-center mainmenu-area-innner">
			<div class="col-lg-3 col-md-6 categorimenu-wrapper remove-padding">
				<!--categorie menu start-->
				<div class="categories_menu">
					<div class="categories_title" style="margin-left:15px!important;">
							<h2 class="categori_toggle"><i class="fa fa-bars"></i>  {{ $langg->lang14 }} <i class="fa fa-angle-down arrow-down"></i></h2>
						</div>
						<div class="categories_menu_inner">
							<ul>
								@php
								$i=1;
								@endphp
								@foreach($categories as $category)

								<li class="{{count($category->subs) > 0 ? 'dropdown_list':''}} {{ $i >= 15 ? 'rx-child' : '' }}">
								@if(count($category->subs) > 0)
									<div class="img">
										<img src="{{ asset('assets/images/categories/'.$category->photo) }}" alt="">
									</div>
									<div class="link-area">
										<span><a href="{{ route('front.category',$category->slug) }}">{{ $category->name }}</a></span>
										@if(count($category->subs) > 0)
										<a href="javascript:;">
											<i class="fa fa-angle-right" aria-hidden="true"></i>
										</a>
										@endif
									</div>

								@else
									<a href="{{ route('front.category',$category->slug) }}"><img src="{{ asset('assets/images/categories/'.$category->photo) }}"> {{ $category->name }}</a>

								@endif
									@if(count($category->subs) > 0)

									@php
									$ck = 0;
									foreach($category->subs as $subcat) {
										if(count($subcat->childs) > 0) {
											$ck = 1;
											break;
										}
									}
									@endphp
									<ul class="{{ $ck == 1 ? 'categories_mega_menu' : 'categories_mega_menu column_1' }}">
										@foreach($category->subs as $subcat)
											<li>
												<a href="{{ route('front.subcat',['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug]) }}">{{$subcat->name}}</a>
												@if(count($subcat->childs) > 0)
													<div class="categorie_sub_menu">
														<ul>
															@foreach($subcat->childs as $childcat)
															<li><a href="{{ route('front.childcat',['slug1' => $childcat->subcategory->category->slug, 'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug]) }}">{{$childcat->name}}</a></li>
															@endforeach
														</ul>
													</div>
												@endif
											</li>
										@endforeach
									</ul>

									@endif

									</li>

									@php
									$i++;
									@endphp

									@if($i == 15)
						                <li>
						                <a href="{{ route('front.categories') }}"><i class="fas fa-plus"></i> {{ $langg->lang15 }} </a>
						                </li>
						                @break
									@endif


									@endforeach

							</ul>
						</div>
					</div>
					<!--categorie menu end-->
				</div>
				<div class="col-lg-9 col-md-6 mainmenu-wrapper remove-padding">
					<nav hidden>
						<div class="nav-header">
							<button class="toggle-bar"><span class="fa fa-bars"></span></button>
						</div>
						<ul class="menu">
							<li><a href="{{ route('front.allproducts') }}">ALL PRODUCTS</a></li>  
							<li><a href="{{ route('front.vendorlist') }}">BRANDS</a></li>  
							<li><a href="{{ route('front.allproducts') }}">OFFER OF THE DAY</a></li>  
							<li>
								@if($gs->reg_vendor == 1)
					
    								@if(Auth::check())
    									@if(Auth::guard('web')->user()->is_vendor == 2)
    										<a href="{{ route('vendor-dashboard') }}" style="color:white">
    										MERCHANT PANEL
    										</a>
    									@else
    										<a onclick="alert('You have to logout first')" href="{{  route('vendor.login') }}" style="color:white">
    										BE A MERCHANT
    										</a>
    									@endif
    						
    								@else
    					
    									<a  href="{{ route('vendor.login') }}" style="color:white">
    										BE A MERCHANT
    									</a>
    						
    								@endif
							    @endif
							</li>
							
						
							
						</ul>
					

					</nav>
				</div>
			</div>
		</div>
		</div>
	</div>
	<!--Main-Menu Area End-->


<div class="brnnda_main_content">
@yield('content')


</div>


	<!-- Footer Area Start -->
	<footer class="footer" id="footer">
		<div class="container">
			<div class="row" style="margin-bottom:30px">
				<div class="col-md-6">
					<div class="footer-logo">
						<a href="{{ route('front.index') }}" class="logo-link">
							<img src="{{asset('assets/images/'.$gs->footer_logo)}}" alt="" width="200px">
						</a>
					</div>
				</div>
				<div class="col-md-6">
								<!-- BRANDS -->


															
								<img src="{{asset('assets/images/payment.png')}}" alt="sad" style="margin-top: 36px;">



								<!-- BRANDS END -->
				</div>
			</div> <!-- row -->
			<div class="row mt-10">
				<div class="col-md-6 col-lg-3">
					<div class="footer-info-area">
					
						<div class="text">
							{{-- <p>
									{!! $gs->footer !!}
							</p> --}}
							<h4 class="title" style="color:white;font-weight:bold">
								{{-- {{ $langg->lang21 }} --}}
								CONTACT US
						</h4>
					
							<p>Mobile: 01xxxxxxxxxxx</p>
							<p> Email: email@gmail.com </p>
							<p>Location: Dhaka</p>
					
						
						</div>
					</div>
					<div class="fotter-social-links">
						<ul>

                               	     @if(App\Models\Socialsetting::find(1)->f_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->facebook }}" class="facebook" target="_blank">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                      </li>
                                      @endif

                                      @if(App\Models\Socialsetting::find(1)->g_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->gplus }}" class="google-plus" target="_blank">
                                            <i class="fab fa-google-plus-g"></i>
                                        </a>
                                      </li>
                                      @endif

                                      @if(App\Models\Socialsetting::find(1)->t_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->twitter }}" class="twitter" target="_blank">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                      </li>
                                      @endif

                                      @if(App\Models\Socialsetting::find(1)->l_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->linkedin }}" class="linkedin" target="_blank">
                                            <i class="fab fa-linkedin-in"></i>
                                        </a>
                                      </li>
                                      @endif

                                      @if(App\Models\Socialsetting::find(1)->d_status == 1)
                                      <li>
                                        <a href="{{ App\Models\Socialsetting::find(1)->dribble }}" class="dribbble" target="_blank">
                                            <i class="fab fa-dribbble"></i>
                                        </a>
                                      </li>
                                      @endif

						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="footer-widget info-link-widget">
						<h4 class="title">
								{{-- {{ $langg->lang21 }} --}}
							POLICIES & INFO
						</h4>
						<ul class="link-list">
							<li>
								<a href="{{ route('front.index') }}">
									<i class="fas fa-angle-double-right"></i>{{ $langg->lang22 }}
								</a>
							</li>

							@foreach(DB::table('pages')->where('footer','=',1)->get() as $data)
							<li>
								<a href="{{ route('front.page',$data->slug) }}">
									<i class="fas fa-angle-double-right"></i>{{ $data->title }}
								</a>
							</li>
							@endforeach

							<li>
								<a href="{{ route('front.contact') }}">
									<i class="fas fa-angle-double-right"></i>{{ $langg->lang23 }}
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="footer-widget info-link-widget">
						<h4 class="title">
								{{-- {{ $langg->lang21 }} --}}
								QUICK LINKS
						</h4>
						<ul class="link-list">
							<li>
								<a href="{{ route('front.blog') }}">
									<i class="fas fa-angle-double-right"></i>Blog
								</a>
							</li>

							{{-- @foreach(DB::table('pages')->where('footer','=',1)->get() as $data)
							<li>
								<a href="{{ route('front.page',$data->slug) }}">
									<i class="fas fa-angle-double-right"></i>{{ $data->title }}
								</a>
							</li>
							@endforeach --}}

							<li>
								<a href="{{ route('front.contact') }}">
									<i class="fas fa-angle-double-right"></i>Career
							</li>
							<li>
								<a href="{{ route('front.contact') }}">
									<i class="fas fa-angle-double-right"></i>Return Policy
								</a>
							</li>
							<li>
							
							@if($gs->reg_vendor == 1)
					
								@if(Auth::check())
									@if(Auth::guard('web')->user()->is_vendor == 2)
										<a href="{{ route('vendor-dashboard') }}" style="color:white">
									
										<i class="fas fa-angle-double-right"></i>	Marchent Panel
										</a>
									@else
										<a onclick="alert('you have to logout first')" href="{{ route('vendor.login') }}" style="color:white">
											<i class="fas fa-angle-double-right"></i>Be a Marchent
										</a>
									@endif
						
								@else
					
									<a  href="{{ route('vendor.login') }}" style="color:white">
										<i class="fas fa-angle-double-right"></i>Be a Marchent
									</a>
						
								@endif
							@endif
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="footer-widget recent-post-widget">
						<h4 class="title">
							DOWNLOAD
						</h4>
						
						<a href="">	
						<img src="{{asset('assets/images/google-play.png')}}" alt="" widht="50px" height="50px">
						</a>
						
						{{-- <ul class="post-list">
							@foreach (App\Models\Blog::orderBy('created_at', 'desc')->limit(3)->get() as $blog)
							<li>
								<div class="post">
								  <div class="post-img">
									<img style="width: 73px; height: 59px;" src="{{ asset('assets/images/blogs/'.$blog->photo) }}" alt="">
								  </div>
								  <div class="post-details">
									<a href="{{ route('front.blogshow',$blog->id) }}">
										<h4 class="post-title">
											{{strlen($blog->title) > 45 ? substr($blog->title,0,45)." .." : $blog->title}}
										</h4>
									</a>
									<p class="date">
										{{ date('M d - Y',(strtotime($blog->created_at))) }}
									</p>
								  </div>
								</div>
							  </li>
							@endforeach
						</ul> --}}
					</div>
				</div>
			</div>



		</div>

		<div class="copy-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
							<div class="content">
								<div class="content">
									<p>{!! $gs->copyright !!}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Area End -->

	<!-- Back to Top Start -->
	<div class="bottomtotop">
		<i class="fas fa-chevron-right"></i>
	</div>
	<!-- Back to Top End -->

	<!-- LOGIN MODAL -->
	<div class="modal fade" id="comment-log-reg" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
		aria-hidden="true">
		<div class="modal-dialog  modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<nav class="comment-log-reg-tabmenu">
						<div class="nav nav-tabs" id="nav-tab" role="tablist">
							<a class="nav-item nav-link login active" id="nav-log-tab1" data-toggle="tab" href="#nav-log1"
								role="tab" aria-controls="nav-log" aria-selected="true">
								{{ $langg->lang197 }}
							</a>
							<a class="nav-item nav-link" id="nav-reg-tab1" data-toggle="tab" href="#nav-reg1" role="tab"
								aria-controls="nav-reg" aria-selected="false">
								{{ $langg->lang198 }}
							</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-log1" role="tabpanel"
							aria-labelledby="nav-log-tab1">
							<div class="login-area">
								<div class="header-area">
									<h4 class="title">{{ $langg->lang172 }}</h4>
								</div>
								<div class="login-form signin-form">
									@include('includes.admin.form-login')
									<form class="mloginform" action="{{ route('user.login.submit') }}" method="POST">
										{{ csrf_field() }}
										<div class="form-input">
											<input type="text" name="phone" placeholder="Mobile number"
												required="">
											<i class="icofont-user-alt-5"></i>
										</div>
										<div class="form-input">
											<input type="password" class="Password" name="password"
												placeholder="{{ $langg->lang174 }}" required="">
											<i class="icofont-ui-password"></i>
										</div>
										<div class="form-forgot-pass">
											<div class="left">
												<input type="checkbox" name="remember" id="mrp"
													{{ old('remember') ? 'checked' : '' }}>
												<label for="mrp">{{ $langg->lang175 }}</label>
											</div>
											<div class="right">
												<a href="javascript:;" id="show-forgot">
													{{ $langg->lang176 }}
												</a>
											</div>
										</div>
										<input type="hidden" name="modal" value="1">
										<input class="mauthdata" type="hidden" value="{{ $langg->lang177 }}">
										<button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
										@if(App\Models\Socialsetting::find(1)->f_check == 1 ||
										App\Models\Socialsetting::find(1)->g_check == 1)
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
												<li>
													<a href="{{ route('social-provider','google') }}">
														<i class="fab fa-google-plus-g"></i>
													</a>
												</li>
												@endif
											</ul>
										</div>
										@endif
									</form>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="nav-reg1" role="tabpanel" aria-labelledby="nav-reg-tab1">
							<div class="login-area signup-area">
								<div class="header-area">
									<h4 class="title">{{ $langg->lang181 }}</h4>
								</div>
								<div class="login-form signup-form">
									@include('includes.admin.form-login')
									<form class="mregisterform" action="{{route('user-register-submit')}}"
										method="POST">
										{{ csrf_field() }}

										<div class="form-input">
											<input type="text" class="User Name" name="name"
												placeholder="{{ $langg->lang182 }}" required="">
											<i class="icofont-user-alt-5"></i>
										</div>

										<div class="form-input">
											<input type="email" class="User Name" name="email"
												placeholder="{{ $langg->lang183 }}" required="">
											<i class="icofont-email"></i>
										</div>

										<div class="form-input">
											<input type="text" class="User Name" name="phone"
												placeholder="{{ $langg->lang184 }}" required="">
											<i class="icofont-phone"></i>
										</div>

										<div class="form-input">
											<input type="text" class="User Name" name="address"
												placeholder="{{ $langg->lang185 }}" required="">
											<i class="icofont-location-pin"></i>
										</div>

										<div class="form-input">
											<input type="password" class="Password" name="password"
												placeholder="{{ $langg->lang186 }}" required="">
											<i class="icofont-ui-password"></i>
										</div>

										<div class="form-input">
											<input type="password" class="Password" name="password_confirmation"
												placeholder="{{ $langg->lang187 }}" required="">
											<i class="icofont-ui-password"></i>
										</div>


										@if($gs->is_capcha == 1)

										<ul class="captcha-area">
											<li>
												<p><img class="codeimg1"
														src="{{asset("assets/images/capcha_code.png")}}" alt=""> <i
														class="fas fa-sync-alt pointer refresh_code "></i></p>
											</li>
										</ul>

										<div class="form-input">
											<input type="text" class="Password" name="codes"
												placeholder="{{ $langg->lang51 }}" required="">
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
	</div>
	<!-- LOGIN MODAL ENDS -->

	<!-- FORGOT MODAL -->
	<div class="modal fade" id="forgot-modal" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
		aria-hidden="true">
		<div class="modal-dialog  modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="login-area">
						<div class="header-area forgot-passwor-area">
							<h4 class="title">{{ $langg->lang191 }} </h4>
							<p class="text">{{ $langg->lang192 }} </p>
						</div>
						<div class="login-form">
							@include('includes.admin.form-login')
							<form id="mforgotform" action="{{route('user-forgot-submit')}}" method="POST">
								{{ csrf_field() }}
								<div class="form-input">
									<input type="email" name="email" class="User Name"
										placeholder="{{ $langg->lang193 }}" required="">
									<i class="icofont-user-alt-5"></i>
								</div>
								<div class="to-login-page">
									<a href="javascript:;" id="show-login">
										{{ $langg->lang194 }}
									</a>
								</div>
								<input class="fauthdata" type="hidden" value="{{ $langg->lang195 }}">
								<button type="submit" class="submit-btn">{{ $langg->lang196 }}</button>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- FORGOT MODAL ENDS -->


<!-- VENDOR LOGIN MODAL -->
	<div class="modal fade" id="vendor-login" tabindex="-1" role="dialog" aria-labelledby="vendor-login-Title" aria-hidden="true">
  <div class="modal-dialog  modal-dialog-centered" style="transition: .5s;" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
				<nav class="comment-log-reg-tabmenu">
					<div class="nav nav-tabs" id="nav-tab1" role="tablist">
						<a class="nav-item nav-link login active" id="nav-log-tab11" data-toggle="tab" href="#nav-log11" role="tab" aria-controls="nav-log" aria-selected="true">
							{{ $langg->lang234 }}
						</a>
						<a class="nav-item nav-link" id="nav-reg-tab11" data-toggle="tab" href="#nav-reg11" role="tab" aria-controls="nav-reg" aria-selected="false">
							{{ $langg->lang235 }}
						</a>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-log11" role="tabpanel" aria-labelledby="nav-log-tab">
				        <div class="login-area">
				          <div class="login-form signin-form">
				                @include('includes.admin.form-login')
				            <form class="mloginform" action="{{ route('user.login.submit') }}" method="POST">
				              {{ csrf_field() }}
				              <div class="form-input">
				                <input type="text" name="phone" placeholder="Mobile Number" required="">
				                <i class="icofont-user-alt-5"></i>
				              </div>
				              <div class="form-input">
				                <input type="password" class="Password" name="password" placeholder="{{ $langg->lang174 }}" required="">
				                <i class="icofont-ui-password"></i>
				              </div>
				              <div class="form-forgot-pass">
				                <div class="left">
				                  <input type="checkbox" name="remember"  id="mrp1" {{ old('remember') ? 'checked' : '' }}>
				                  <label for="mrp1">{{ $langg->lang175 }}</label>
				                </div>
				                <div class="right">
				                  <a href="javascript:;" id="show-forgot1">
				                    {{ $langg->lang176 }}
				                  </a>
				                </div>
				              </div>
				              <input type="hidden" name="modal"  value="1">
				               <input type="hidden" name="vendor"  value="1">
				              <input class="mauthdata" type="hidden"  value="{{ $langg->lang177 }}">
				              <button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
					              @if(App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check == 1)
					              {{-- <div class="social-area">
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
					                    <li>
					                      <a href="{{ route('social-provider','google') }}">
					                        <i class="fab fa-google-plus-g"></i>
					                      </a>
					                    </li>
					                    @endif
					                  </ul>
					              </div> --}}
					              @endif
				            </form>
				          </div>
				        </div>
					</div>
					<div class="tab-pane fade" id="nav-reg11" role="tabpanel" aria-labelledby="nav-reg-tab">
                <div class="login-area signup-area">
                    <div class="login-form signup-form">
                       @include('includes.admin.form-login')
                        <form class="mregisterform" action="{{route('user-register-submit')}}" method="POST">
                          {{ csrf_field() }}

                          <div class="row">

                          <div class="col-lg-6">
                            <div class="form-input">
                                <input type="text" class="User Name" name="name" placeholder="{{ $langg->lang182 }}" required="">
                                <i class="icofont-user-alt-5"></i>
                            	</div>
                           </div>

                           <div class="col-lg-6">
 <div class="form-input">
                                <input type="email" class="User Name" name="email" placeholder="{{ $langg->lang183 }}" required="">
                                <i class="icofont-email"></i>
                            </div>

                           	</div>
                           <div class="col-lg-6">
    <div class="form-input">
                                <input type="text" class="User Name" name="phone" placeholder="{{ $langg->lang184 }}" required="">
                                <i class="icofont-phone"></i>
                            </div>

                           	</div>
                           <div class="col-lg-6">

<div class="form-input">
                                <input type="text" class="User Name" name="address" placeholder="{{ $langg->lang185 }}" required="">
                                <i class="icofont-location-pin"></i>
                            </div>
                           	</div>

                           <div class="col-lg-6">
 <div class="form-input">
                                <input type="text" class="User Name" name="shop_name" placeholder="{{ $langg->lang238 }}" required="">
                                <i class="icofont-cart-alt"></i>
                            </div>

                           	</div>
                           <div class="col-lg-6">

 <div class="form-input">
                                <input type="text" class="User Name" name="owner_name" placeholder="{{ $langg->lang239 }}" required="">
                                <i class="icofont-cart"></i>
                            </div>
                           	</div>
                           <div class="col-lg-6">

<div class="form-input">
                                <input type="text" class="User Name" name="shop_number" placeholder="{{ $langg->lang240 }}" required="">
                                <i class="icofont-shopping-cart"></i>
                            </div>
                           	</div>
                           <div class="col-lg-6">

 <div class="form-input">
                                <input type="text" class="User Name" name="shop_address" placeholder="{{ $langg->lang241 }}" required="">
                                <i class="icofont-opencart"></i>
                            </div>
                           	</div>
                           <div class="col-lg-6">

<div class="form-input">
                                <input type="text" class="User Name" name="reg_number" placeholder="{{ $langg->lang242 }}" required="">
                                <i class="icofont-ui-cart"></i>
                            </div>
                           	</div>
                           <div class="col-lg-6">

 <div class="form-input">
                                <input type="text" class="User Name" name="shop_message" placeholder="{{ $langg->lang243 }}" required="">
                                <i class="icofont-envelope"></i>
                            </div>
                           	</div>

                           <div class="col-lg-6">
  <div class="form-input">
                                <input type="password" class="Password" name="password" placeholder="{{ $langg->lang186 }}" required="">
                                <i class="icofont-ui-password"></i>
                            </div>

                           	</div>
                           <div class="col-lg-6">
 								<div class="form-input">
                                <input type="password" class="Password" name="password_confirmation" placeholder="{{ $langg->lang187 }}" required="">
                                <i class="icofont-ui-password"></i>
                            	</div>
                           	</div>

                            @if($gs->is_capcha == 1)

<div class="col-lg-6">


                            <ul class="captcha-area">
                                <li>
                                 	<p>
                                 		<img class="codeimg1" src="{{asset("assets/images/capcha_code.png")}}" alt=""> <i class="fas fa-sync-alt pointer refresh_code "></i>
                                 	</p>

                                </li>
                            </ul>


</div>

<div class="col-lg-6">

 <div class="form-input">
                                <input type="text" class="Password" name="codes" placeholder="{{ $langg->lang51 }}" required="">
                                <i class="icofont-refresh"></i>

                            </div>



                          </div>

                          @endif

				            <input type="hidden" name="vendor"  value="1">
                            <input class="mprocessdata" type="hidden"  value="{{ $langg->lang188 }}">
                            <button type="submit" class="submit-btn">{{ $langg->lang189 }}</button>

                           	</div>




                        </form>
                    </div>
                </div>
					</div>
				</div>
      </div>
    </div>
  </div>
</div>
<!-- VENDOR LOGIN MODAL ENDS -->

<!-- Product Quick View Modal -->

	  <div class="modal fade" id="quickview" tabindex="-1" role="dialog"  aria-hidden="true">
		<div class="modal-dialog quickview-modal modal-dialog-centered modal-lg" role="document">
		  <div class="modal-content">
			<div class="submit-loader">
				<img src="{{asset('assets/images/'.$gs->loader)}}" alt="">
			</div>
			<div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
			<div class="modal-body">
				<div class="container quick-view-modal">

				</div>
			</div>
		  </div>
		</div>
	  </div>
<!-- Product Quick View Modal -->

<!-- Order Tracking modal Start-->
    <div class="modal fade" id="track-order-modal" tabindex="-1" role="dialog" aria-labelledby="order-tracking-modal" aria-hidden="true">
        <div class="modal-dialog  modal-lg" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title"> <b>{{ $langg->lang772 }}</b> </h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                        <div class="order-tracking-content">
                            <form id="track-form" class="track-form">
                                {{ csrf_field() }}
                                <input type="text" id="track-code" placeholder="{{ $langg->lang773 }}" required="">
                                <button type="submit" class="mybtn1">{{ $langg->lang774 }}</button>
                                <a href="#"  data-toggle="modal" data-target="#order-tracking-modal"></a>
                            </form>
                        </div>

                        <div>
				            <div class="submit-loader d-none">
								<img src="{{asset('assets/images/'.$gs->loader)}}" alt="">
							</div>
							<div id="track-order">

							</div>
                        </div>

            </div>
            </div>
        </div>
    </div>
<!-- Order Tracking modal End -->

<style>
    
	.mobile-app-icon-bar {
		position: fixed;
		bottom: 0;
		width: 100%;
		z-index:99;
		background-color: white;
		border-top: 1px solid #0b1a2d2e;
		box-shadow: 0 0 20px #0b1a2d59;
		padding: 15px 0;
	}
	
	.mobile-app-icon-bar button {
		border: none;
		color: #ee222b;
		font-size: 18px;
		background-color: transparent;
		border-radius: 85px;
		padding: 2px 8px;
		/*box-shadow: 0 0 8px #3c3c3cd1;*/
	}
	.mobile-app-icon-bar a {
		border: none;
		color: #ee222b;
		/*color: #0b1a2d;*/
		font-size: 18px;
		background-color: transparent;
		border-radius: 85px;
		padding: 2px 7px;
		/*box-shadow: 0 0 8px #3c3c3cd1;*/
	}
	
	.wishlist-count-foot, .cart-count-foot, .compare-count-foot {
		position: absolute;
		font-size: 15px;
		transform: translateY(-30%);
		font-weight: 600;
	}
</style>
	<div class="mobile-app-icon-bar d-block d-md-none">
			<div class="container-fluid">
				
					<div class="row text-center">
						<div class="col">
							<a style="padding: 2px 5px" href="{{ route('product.compare') }}">
								<i class="fas fa-exchange-alt"></i>
								<span id="wishlist-count" class="wishlist-count-foot">{{ Session::has('compare') ? count(Session::get('compare')->items) : '0' }}</span>
							</a>
						</div>
						
						<!--Wish Btn-->
						<div class="col">
							@if(Auth::guard('web')->check())
							<a style="padding: 2px 5px" href="{{ route('user-wishlists') }}">
								<!--<i class="fas fa-heart"></i>-->
								<img src="{{asset('assets/images/heart.svg')}}" >
								<span id="mwishlist-count" class="wishlist-count-foot">{{ count(Auth::user()->wishlists) }}</span>
							</a>
							@else
							<a href="javascript:;" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" style="padding: 2px 5px">
								<!--<i class="fas fa-heart"></i>-->
								<img src="{{asset('assets/images/heart.svg')}}" >
								<span id="mwishlist-count" class="wishlist-count-foot">0</span>
							</a>
							@endif
						</div>
						
						<!--Homebtn-->
						<div class="col">
							<a href="/" style="background: white;height: 60px;width: 60px;position: absolute;transform: translate(-50%, -44%);box-shadow: 0 0 8px #3c3c3cd1;">
								<img src="{{asset('assets/images/br-bot.png')}}" style="background: white;height: 40px;width: 40px;position: absolute;transform: translate(-50%, 16%);"/>
							</a>
						</div>
						
						<!--Cart-->
						<div class="col">
								<a  class="cart carticon" href="{{ route('front.cart') }}">
									<!--<i class="fas fa-shopping-bag"></i>-->
									<img src="{{asset('assets/images/shopping-bag.svg')}}" >
									<span class="cart-quantity cart-count-foot" id="mcart-count">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
								</a>
						</div>

						{{-- show number of items when n > 1 --}}
						{{-- works on reload --}}
						{{-- <script>
							console.log(typeof(document.getElementById("cart-count").innerHTML))
							if(parseInt(document.getElementById("cart-count").innerHTML) <= 0 ){
								document.getElementById("cart-count").style.visibility = "hidden"
							}
							else{
								document.getElementById("cart-count").style.visibility = "visible"
							}
						</script> --}}
						
						<!--Profile-->
						<div class="col">
							@if(!Auth::guard('web')->check())
								<a href="{{ route('user.login') }}">
									<!--<i class="fas fa-user"></i>-->
									<img src="{{asset('assets/images/user(1).svg')}}" >
								</a>
							@else
								@if(!Auth::user()->is_vendor==2)
									<a href="{{ route('user-dashboard') }}">
										<!--<i class="fas fa-user"></i>-->
										<img src="{{asset('assets/images/user(1).svg')}}" >
									</a>
								@elseif(Auth::user()->IsVendor())
									<a href="{{ route('vendor-dashboard') }}">
										<!--<i class="fas fa-user"></i>-->
										<img src="{{asset('assets/images/user(1).svg')}}" >
									</a>
								@endif
							@endif
						</div>
					</div>
		</div>
	</div>

<script type="text/javascript">
  var mainurl = "{{url('/')}}";
  var gs      = {!! json_encode($gs) !!};
  var langg    = {!! json_encode($langg) !!};

</script>

	<!-- jquery -->
	<script src="{{asset('assets/front/js/jquery.js')}}"></script>
	{{-- <script src="{{asset('assets/front/js/vue.js')}}"></script> --}}
	<script src="{{asset('assets/front/jquery-ui/jquery-ui.min.js')}}"></script>
	<!-- popper -->
	<script src="{{asset('assets/front/js/popper.min.js')}}"></script>
	<!-- bootstrap -->
	<script src="{{asset('assets/front/js/bootstrap.min.js')}}"></script>
	<!-- plugin js-->
	<script src="{{asset('assets/front/js/plugin.js')}}"></script>

	<script src="{{asset('assets/front/js/xzoom.min.js')}}"></script>
	<script src="{{asset('assets/front/js/jquery.hammer.min.js')}}"></script>
	<script src="{{asset('assets/front/js/setup.js')}}"></script>

	<script src="{{asset('assets/front/js/toastr.js')}}"></script>
	<!-- main -->
	<script src="{{asset('assets/front/js/main.js')}}"></script>
	<!-- custom -->
	<script src="{{asset('assets/front/js/custom.js')}}"></script>

    {!! $seo->google_analytics !!}

  @if($gs->is_talkto == 1)
    <!--Start of Tawk.to Script-->
      {!! $gs->talkto !!}
    <!--End of Tawk.to Script-->
  @endif

	@yield('scripts')

</body>

</html>