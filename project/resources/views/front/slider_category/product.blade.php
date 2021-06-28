@extends('layouts.front')
@section('content')

    <div class="category-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bg-white">
                        @foreach ($find_all_products as $data)
                            {{-- <div class="sub-category-menu"> --}}
                                {{-- <h3 class="category-name"><a href="{{ route('front.category',$category->slug) }}">{{ $category->name }}</a></h3> --}}
                                <!-- Product -->
                                <div class="col-lg-4 col-md-4 col-6 remove-padding">
                                    <a class="item" href="https://brnnda.com/item/men-tshirt-anb8250ejk">
                                        <div class="item-img">
                                            <div class="extra-list">
                                                <ul style="margin-top:50px">
                                                    <li>
                                                        <span href="javascript:;" rel-toggle="tooltip" title=""
                                                            data-toggle="modal" id="wish-btn" data-target="#comment-log-reg"
                                                            data-placement="right" data-original-title="Add To Wishlist">
                                                            <i class="icofont-heart-alt"></i>
                                                        </span>
                                                    </li>
                                                    <li>
                                                        <span href="javascript:;" class="add-to-compare"
                                                            data-href="https://brnnda.com/item/compare/add/252"
                                                            data-toggle="tooltip" data-placement="right" title=""
                                                            data-original-title="Compare">
                                                            <i class="icofont-exchange"></i>
                                                        </span>
                                                    </li>
                                                </ul>
                                            </div>
                                            <img class="img-fluid"
                                                src="{{asset('assets/images/products/'.$data->photo)}}"
                                                alt="">
                                        </div>
                                        <div class="info">
                                            <div class="stars">
                                                <div class="ratings">
                                                    <div class="empty-stars"></div>
                                                    <div class="full-stars" style="width:0%"></div>
                                                </div>
                                            </div>
                                            <h4 class="price">{{$data->price}}৳ <del><small>{{$data->previous_price}}৳</small></del></h4>



                                            <h5 class="name">{{$data->name}}</h5>
                                            <h6 style="height: 41px;font-size: 14px;color: #0c182359;font-weight: 700;">
                                                classical shop
                                            </h6>
                                            <div class="item-cart-area">
                                                <span class="add-to-cart add-to-cart-btn"
                                                    data-href="https://brnnda.com/addcart/252">
                                                    <i class="icofont-cart"></i>
                                                    Add To Cart
                                                </span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- End PRoduct -->
                            {{-- </div> --}}
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
