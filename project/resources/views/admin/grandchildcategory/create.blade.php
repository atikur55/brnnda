@extends('layouts.load')

@section('content')

            <div class="content-area">

              <div class="add-product-content">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="product-description">
                      <div class="body-area">
                        @include('includes.admin.form-error')  
                      <form id="geniusformdata" action="{{route('admin-grandchildcat-create')}}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Category') }} *</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                              <select id="cat" required="">
                                  <option value="">{{ __('Select Category') }}</option>
                                    @foreach($cats as $cat)
                                      <option data-href="{{ route('admin-subcat-load',$cat->id) }}" value="{{ $cat->id }}">{{ $cat->name }}</option>
                                    @endforeach
                                </select>
                          </div>
                        </div>

                        
												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __('Sub Category') }}*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="subcat" name="subcategory_id" disabled="">
                                                  				<option value="">{{ __('Select Sub Category') }}</option>
															</select>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __('Child Category') }}*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="childcat" name="childcategory_id" disabled="">
                                                  				<option value="">{{ __('Select Child Category') }}</option>
															</select>
													</div>
                        </div>
                        
                        {{-- <div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __('Grand Child Category') }}*</h4>
														</div>
													</div>
													<div class="col-lg-7">
															<select id="grandchildcat" name="grandchildcategory_id" disabled="">
                                                  				<option value="">{{ __('Select Child Category') }}</option>
															</select>
													</div>
												</div> --}}

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Name') }} *</h4>
                                <p class="sub-heading">{{ __('(In Any Language)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="name" placeholder="{{ __('Enter Name') }}" required="" value="">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Slug') }} *</h4>
                                <p class="sub-heading">{{ __('(In English)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="slug" placeholder="{{ __('Enter Slug') }}" required="" value="">
                          </div>
                        </div>

                        <br>
                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <button class="addProductSubmit-btn" type="submit">{{ __('Create') }}</button>
                          </div>
                        </div>
                      </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

@endsection