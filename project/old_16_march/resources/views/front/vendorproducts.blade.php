@extends('layouts.front')

@section('content')

<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
      <!-- Breadcrumb Area End -->

			  <ul class="pages">
          <li>
            <a href="{{ route('front.index') }}">
              {{ $langg->lang17 }}
            </a>
          </li>
          <li>
            <a href="{{ route('front.vendorlist') }}">
            Brands
            </a>
          </li>
        </ul>

	

      </div>
    </div>
  </div>
</div>



    <div class="container">
      <div class="row " >
       <div class="col-md-12">
	   	<div class="row">
			@foreach($vendor as $v)
		
			<div style="padding:5px; border:1px solid #ccc;margin-left:10px;margin-bottom:10px;" class="col-md-2">
						<a href="{{ route('front.vendor',$v->shop_name) }}" class="single-vegory" style="text-align:center">
							<div class="left">
								<h5 class="title">
									{{ $v->name }}
								</h5>
								{{--  <p class="count">
									{{ count($v->products) }} {{ $langg->lang4 }}
								</p>  --}}
							</div>
							<div class="right">
								<img src="{{asset('assets/images/users/'.$v->photo) }}" alt="" style="height:50; width:50;" height="50px" width="50px">
							</div>
						</a>
			</div>
			
				@endforeach
		</div>
	{{-- Slider buttom banner End --}}
	{{-- Slider buttom banner End --}}
     </div>
      </div>
    </div>

  <!-- faq Area End-->
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