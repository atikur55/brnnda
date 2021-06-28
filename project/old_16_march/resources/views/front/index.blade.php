@extends('layouts.front')

@section('content')

	@if($ps->slider == 1)

		@if(count($sliders))

			@include('includes.slider-style')
		@endif
	@endif

	@if($ps->slider == 1)
		<!-- Hero Area Start -->
		<section class="hero-area">
			@if($ps->slider == 1)

				@if(count($sliders))
					<div class="hero-area-slider">
						<div class="slide-progress"></div>
						<div class="intro-carousel">
							@foreach($sliders as $data)
								<div class="intro-content {{$data->position}}" style="background-image: url({{asset('assets/images/sliders/'.$data->photo)}})">
									<div class="container">
										<div class="row">
											<div class="col-lg-12">
												<div class="slider-content">
													<!-- layer 1 -->
													<div class="layer-1">
														<h4 style="font-size: {{$data->subtitle_size}}px; color: {{$data->subtitle_color}}" class="subtitle subtitle{{$data->id}}" data-animation="animated {{$data->subtitle_anime}}">{{$data->subtitle_text}}</h4>
														<h2 style="font-size: {{$data->title_size}}px; color: {{$data->title_color}}" class="title title{{$data->id}}" data-animation="animated {{$data->title_anime}}">{{$data->title_text}}</h2>
													</div>
													<!-- layer 2 -->
													<div class="layer-2">
														<p style="font-size: {{$data->details_size}}px; color: {{$data->details_color}}"  class="text text{{$data->id}}" data-animation="animated {{$data->details_anime}}">{{$data->details_text}}</p>
													</div>
													<!-- layer 3 -->
													<div class="layer-3">
														<a href="{{$data->link}}" target="_blank" class="mybtn1"><span>{{ $langg->lang25 }} <i class="fas fa-chevron-right"></i></span></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							@endforeach
						</div>
					</div>
				@endif

			@endif

		</section>
		<!-- Hero Area End -->
	@endif

	{{-- @if(isset($vendor))
	<section class="slider-buttom-category d-none d-md-block">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 remove-padding">
					<div class="section-top">
						<h2 class="section-title">
							Featured Brands
						</h2>
				
					</div>
				</div>
			</div>
			<div class="row ">
				<div class="col-xl-12 col-lg-12 col-md-12 sc-common-padding" >
				<div class="trending-item-slider">
			
				@foreach($vendor as $v)
						<a href="{{  route('front.vendor',$v->shop_name)}}" class="single-category">
							<div class="left" >
								<h5 class="title">
									{{ $v->name }}
								</h5>
								<p class="count">
									{{ count($v->products) }} 
							
									  Item(s)
								</p> 
							</div>
							<div class="right">
								<img src="{{asset('assets/images/users/'.$v->photo) }}" alt="">
							</div>
						</a>
				
				@endforeach
				</div>	
			</div>
			</div>
		</div>
	</section>
	@endif --}}
	@if($ps->featured_category == 1)

	{{-- Slider buttom Category Start --}}
	{{-- <section class="slider-buttom-category d-none d-md-block">
		<div class="container-fluid">
			<div class="row">
				@foreach($categories->where('is_featured','=',1) as $cat)
					<div class="col-xl-2 col-lg-3 col-md-4 sc-common-padding">
						<a href="{{ route('front.category',$cat->slug) }}" class="single-category">
							<div class="left">
								<h5 class="title">
									{{ $cat->name }}
								</h5>
								<p class="count">
									{{ count($cat->products) }} {{ $langg->lang4 }}
								</p>
							</div>
							<div class="right">
								<img src="{{asset('assets/images/categories/'.$cat->image) }}" alt="">
							</div>
						</a>
					</div>
				@endforeach
			</div>
		</div>
	</section> --}}
	{{-- Slider buttom banner End --}}

	@endif

	@if($ps->featured == 1)
		<!-- Trending Item Area Start -->
		<section  class="trending">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="section-top">
							<h2 class="section-title">
							
								Featured Brands 
							</h2>
							{{-- <a href="#" class="link">View All</a> --}}
						</div>
					</div>
				</div>
				<div class="row">

					<div class="col-lg-12 remove-padding">
						<div class="trending-item-slider">
							@foreach($vendor as $v)
							<a href="{{  route('front.vendor',$v->shop_name)}}" class="single-category" >
								{{-- <div class="left " style="display: none">
									<h5 class="title">
										{{ $v->name }}
									</h5>
									<p class="count">
										{{ count($v->products) }} 
								
										  Item(s)
									</p> 
								</div>
								<div class="right" style="border: 1px solid #bbbbbb;
								box-shadow: 0 0 10px #bbbbbb;">
									<img src="{{asset('assets/images/users/'.$v->photo) }}" alt="">
								</div> --}}

								<div style="
									height: 250px;
									width: 90%;
									box-shadow: 0 0 10px #00000054;
									margin-left:15px;
									padding:25px;
									background: white;">
									<img style="height: 100%;" src="{{asset('assets/images/users/'.$v->photo) }}" alt="">
								</div>

							</a>
					
					@endforeach
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- Tranding Item Area End -->
	@endif



		<!-- Trending Item Area Start -->
		<section  class="trending">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="section-top">
							<h2 class="section-title">
								{{-- {{ $langg->lang26 }} --}}
								NEW ARRIVAL
							</h2>
							{{-- <a href="#" class="link">View All</a> --}}
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="trending-item-slider" style="padding: 0 13px !important;">
							@foreach($feature_products as $prod)
								@include('includes.product.slider-product')
							@endforeach
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- Tranding Item Area End -->



	<!-- Trending Item Area Start -->
	<section  class="trending">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 remove-padding">
					<div class="section-top">
						<h2 class="section-title">
							{{-- {{ $langg->lang26 }} --}}
							FEATURED
						</h2>
						{{-- <a href="#" class="link">View All</a> --}}
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 remove-padding">
					<div class="trending-item-slider" style="padding: 0 13px !important;">
						@foreach($feature_products as $prod)
							@include('includes.product.slider-product')
						@endforeach
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Tranding Item Area End -->




<!-- Trending Item Area Start -->
<section  class="trending">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 remove-padding">
				<div class="section-top">
					<h2 class="section-title">
						{{-- {{ $langg->lang26 }} --}}
						ON SALE
					</h2>
					{{-- <a href="#" class="link">View All</a> --}}
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 remove-padding">
				<div class="trending-item-slider" style="padding: 0 13px !important;">
					@foreach($feature_products as $prod)
						@include('includes.product.slider-product')
					@endforeach
				</div>
			</div>

		</div>
	</div>
</section>
<!-- Tranding Item Area End -->



	@if($ps->small_banner == 1)

		<!-- Banner Area One Start -->
		<section class="banner-section">
			<div class="container">
				@foreach($top_small_banners->chunk(2) as $chunk)
					<div class="row" style="padding: 0 10px">
						@foreach($chunk as $img)
							<div class="col-lg-6 remove-padding">
								<div class="left">
									<a class="banner-effect" href="{{ $img->link }}" target="_blank">
										<img src="{{asset('assets/images/banners/'.$img->photo)}}" alt="">
									</a>
								</div>
							</div>
						@endforeach
					</div>
				@endforeach
			</div>
		</section>
		<!-- Banner Area One Start -->
	@endif

	<section id="extraData">
		<div class="text-center">
			<img src="{{asset('assets/images/'.$gs->loader)}}">
		</div>
	</section>


@endsection

@section('scripts')
	<script>
        $(window).on('load',function() {

            setTimeout(function(){

                $('#extraData').load('{{route('front.extraIndex')}}');

            }, 500);
        });

	</script>
@endsection