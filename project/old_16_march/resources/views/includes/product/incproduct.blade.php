
											<a class="item" href="{{ route('front.product', $prod->slug) }}">
												<div class="item-img">
												@if(!empty($prod->features))
														<div class="sell-area">
													
														@foreach($prod->features as $key => $data1)
															<span class="sale" style="background-color:{{ $prod->colors[$key] }}">{{ $prod->features[$key] }}</span>
															@break
															@endforeach 
														</div>
													@endif
														<div class="extra-list">
															<ul style="margin-top:50px">

															
																<li>
																	@if(Auth::guard('web')->check())
	
																	<span href="javascript:;" class="add-to-wish" data-href="{{ route('user-wishlist-add',$prod->id) }}" data-toggle="tooltip" data-placement="right" title="{{ $langg->lang54 }}" data-placement="right"><i class="icofont-heart-alt" ></i>
																	</span>
	
																	@else 
	
																	<span href="javascript:;" rel-toggle="tooltip" title="{{ $langg->lang54 }}" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" data-placement="right">
																		<i class="icofont-heart-alt"></i>
																	</span>
	
																	@endif
																</li>
																{{-- <li>
																<span class="quick-view" rel-toggle="tooltip" title="{{ $langg->lang55 }}" href="javascript:;" data-href="{{ route('product.quick',$prod->id) }}" data-toggle="modal" data-target="#quickview" data-placement="right"> <i class="icofont-eye"></i>
																</span>
																</li> --}}
																<li>
																	<span href="javascript:;" class="add-to-compare" data-href="{{ route('product.compare.add',$prod->id) }}"  data-toggle="tooltip" data-placement="right" title="{{ $langg->lang57 }}" data-placement="right">
																		<i class="icofont-exchange"></i>
																	</span>
																</li>
															</ul>
														</div>
													<img class="img-fluid" src="{{ $prod->photo ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png') }}" alt="">
												</div>
												<div class="info">
													<div class="stars">
														<div class="ratings">
																<div class="empty-stars"></div>
																<div class="full-stars" style="width:{{App\Models\Rating::ratings($prod->id)}}%"></div>
														</div>
													</div>
													<h4 class="price">{{ $prod->showPrice() }} <del><small>{{ $prod->showPreviousPrice() }}</small></del></h4>

													{{-- <p class="badge badge-pill badge-warning">Cashback - {{ $prod->cashback }} ৳</p>

													@if($prod->product_payment_method == 1)
													<p class="badge badge-pill badge-success">Online payment only</p>
												@elseif($prod->product_payment_method == 2)
													<p class="badge badge-pill badge-info">Cash on delivery only</p>
												@endif --}}

													<h5 class="name">{{ $prod->showName() }}</h5>
													
													@php 
													$vendor_ck = '';
													if(isset(Auth::user()->id)){
														if(Auth::user()->is_vendor==2)
														$vendor_ck = 1;
													}
													@endphp

													<div class="item-cart-area">
														@if(	$vendor_ck == 1)
															{{-- <span class="add-to-cart-btn affilate-btn"
																data-href="{{ route('affiliate.product', $prod->slug) }}"><i class="icofont-cart"></i>
																{{ $langg->lang251 }}
															</span> --}}
															
														@else
															@if($prod->emptyStock())
															<span class="add-to-cart-btn cart-out-of-stock">
																<i class="icofont-close-circled"></i> {{ $langg->lang78 }}
															</span>													
															@else
															<span class="add-to-cart add-to-cart-btn" data-href="{{ route('product.cart.add',$prod->id) }}">
																<i class="icofont-cart"></i> 
                                                                {{-- {{ $langg->lang56 }} --}}
                                                                Add To Cart
															</span>
															{{-- <span class="add-to-cart-quick add-to-cart-btn"
																data-href="{{ route('product.cart.quickadd',$prod->id) }}">
																<i class="icofont-cart"></i> {{ $langg->lang251 }}
															</span> --}}
															@endif
														@endif
													</div>
												</div>

                                    

											</a>