<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//1
Route::get('{at}/category_api', 'Api\FrontendApiController@categoryApi');

//2
Route::get('{at}/featured_api', 'Api\FrontendApiController@featuredApi');

//3
Route::get('{at}/bottom_small_banners_api', 'Api\FrontendApiController@bottomSmallBannersApi');

//4
Route::get('{at}/reviews_api', 'Api\FrontendApiController@reviewsApi');

//5
Route::get('{at}/discount_products_api', 'Api\FrontendApiController@discountProductsApi');

//6
Route::get('{at}/best_products_api', 'Api\FrontendApiController@bestProductsApi');

//7
Route::get('{at}/top_products_api', 'Api\FrontendApiController@topProductsApi');

//8
Route::get('{at}/big_products_api', 'Api\FrontendApiController@bigProductsApi');

//9
Route::get('{at}/hot_products_api', 'Api\FrontendApiController@hotProductsApi');

//10
Route::get('{at}/latest_products_api', 'Api\FrontendApiController@latestProductsApi');

//11
Route::get('{at}/trending_products_api', 'Api\FrontendApiController@trendingProductsApi');

//12
Route::get('{at}/sales_products_api', 'Api\FrontendApiController@salesProductsApi');

//13
Route::get('{at}/single_products_api/{slug}', 'Api\FrontendApiController@singleProductsApi');

//14
Route::get('{at}/single_products_gallery_api/{slug}', 'Api\FrontendApiController@singleProductsGalleryApi');

//15
Route::get('{at}/top_slider_banner_api', 'Api\FrontendApiController@topSliderBannerApi');

//16
Route::get('{at}/flashed_products_api', 'Api\FrontendApiController@flashedApi');

//17
Route::get('{at}/random_products_api', 'Api\FrontendApiController@randomProductApi');

//18
Route::get('{at}/category_wise_product_api/{cat_slug}', 'Api\FrontendApiController@categoryWiseProductApi');

//19
Route::get('{at}/product_search_api/{searchterm}', 'Api\FrontendApiController@ProductSearchApi');

//20
Route::get('{at}/couponapi/', 'Api\FrontendApiController@couponApi');

//21
Route::get('{at}/shippinglistapi/', 'Api\FrontendApiController@shippingListApi');

//22
Route::post('{at}/orderapi/', 'Api\FrontendApiController@orderApi');

//23
Route::post('{at}/customer_reg_api/', 'Api\FrontendApiController@customerRegApi');

//24
Route::post('{at}/customer_login_api/', 'Api\FrontendApiController@customerLogin');

//25
Route::get('{at}/customer_logout_api/{token}', 'Api\FrontendApiController@customerLogout');

//26
Route::get('{at}/customer_info_api/{token}/{id}', 'Api\FrontendApiController@customerInfo');

//27
Route::get('{at}/add_wish_list/{token}/{user_id}/{product_id}', 'Api\FrontendApiController@addWishList');

//28
Route::get('{at}/delete_wish_list/{token}/{user_id}/{product_id}', 'Api\FrontendApiController@deleteWishList');

//29
Route::get('{at}/show_wish_list/{token}/{user_id}', 'Api\FrontendApiController@showWishList');

//30
Route::post('{at}/customer_info_update/{token}/{user_id}', 'Api\FrontendApiController@customerInfoUpdate');

//31
Route::get('{at}/customer_order/{token}/{user_id}', 'Api\FrontendApiController@orderList');

//32
Route::get('{at}/customer_single_order/{token}/{user_id}/{order_id}', 'Api\FrontendApiController@singleOrderList');


// 1/31/2021
//33
Route::get('{at}/sub_category_list/{cat_id}', 'Api\FrontendApiController@subCategoryApi');

//34
Route::get('{at}/child_category_list/{subcat_id}', 'Api\FrontendApiController@childCategoryApi');

//35
Route::get('{at}/sub_category_wise_product_api/{subcat_slug}', 'Api\FrontendApiController@subCategoryWiseProductApi');


//36
Route::get('{at}/child_category_wise_product_api/{childcat_slug}', 'Api\FrontendApiController@childCategoryWiseProductApi');

//37
Route::get('{at}/otp_api/{code}/{phone}', 'Api\FrontendApiController@otpApi');

/* 2/3/21 */

//38
Route::post('{at}/{token}/forgot_otp_mobile_api', 'Api\FrontendApiController@customerForgotPasswordOtpMobileApi');

//39
Route::get('{at}/{token}/forgot_otp_api/{code}/{phone}', 'Api\FrontendApiController@customerForgotPasswordOtpApi');

//40
Route::post('{at}/{token}/forgot_reset_api', 'User\ForgotController@forgotPasswordChangeResetSubmit');


//41
Route::post('{at}/{token}/{user_id}/password_reset_api', 'User\ForgotController@customerPasswordResetApi');


  // PRODCT SECTION
  Route::get('/item/{slug}','Front\CatalogController@product')->name('front.product');
  Route::get('/afbuy/{slug}','Front\CatalogController@affProductRedirect')->name('affiliate.product');
  Route::get('/item/quick/view/{id}/','Front\CatalogController@quick')->name('product.quick');
  Route::post('/item/review','Front\CatalogController@reviewsubmit')->name('front.review.submit');
  Route::get('/item/view/review/{id}','Front\CatalogController@reviews')->name('front.reviews');
  // PRODCT SECTION ENDS



Route::post('register', 'AuthController@register');
Route::post('login', 'AuthController@login');
Route::post('recover', 'AuthController@recover');

Route::group(['middleware' => ['jwt.auth']], function() {
    Route::get('logout', 'AuthController@logout');

    Route::get('test', function(){
        return response()->json(['foo'=>'bar']);
    });
});



// Route::group(['prefix' => '{android_token}'],function () {

// Route::group(['middleware' => ['jwt.auth']], function() {

  // echo 'hi';
  // dd($android_token);die();
  // $chk = DB::table('android_token')->where('android_token',$android_token)->first();

  // if($chk){
  //   echo 'dound';die();
  // }else{
  //   echo 'not';die();
  // }


// });

// });
