@extends('layouts.front')

@section('styles')

<style type="text/css">
	    .root.root--in-iframe {
      background: #4682b447 !important;
    }
</style>

@endsection



@section('content')
<div class="container">
	<div class="row">

<div class="col-md-12" style="padding:50px;">

<form action="{{aamarpay_payment_url()}}" method="POST">

	{!!
		aamarpay_hidden_input([
			'store_id'=>$request->store_id,
			'signature_key'=>$request->signature_key,
			'tran_id'   =>$request->tran_id, // random number. if you don't set this it will be auto generate.
			'cus_name'  =>  $request->cus_name , // Customer name
			'cus_email' =>  $request->cus_email , // Customer email
			'cus_phone' =>  $request->cus_phone , // Customer Phone
			'amount' =>  $request->amount,
			'currency' => $request->currency,

			'success_url' => $request->success_url,

			'fail_url' =>  $request->fail_url,
			'cancel_url' => $request->cancel_url,
			'desc' =>  $request->desc,
		], $request->amount) 
	!!}
<center>
	<h4 style="color:black;">Make Payment with aamarPay. Click here:</h4>
<button class="btn btn-warning" type="submit"> <img src="{{asset('/assets/images/amarpay.png')}}" alt="">  </button>
</center> 
</form>

</div>

		
</div>
</div>
@endsection

