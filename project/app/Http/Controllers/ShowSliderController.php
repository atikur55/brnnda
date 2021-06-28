<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Slider;


class ShowSliderController extends Controller
{
    public function products_brands($id)
    {
    // echo $id;die();
    $slider_id = Slider::find($id);
    $category_name = $slider_id->category_id;
    $find_category_name = Category::where('name',$category_name)->first();
    $find_all_products = Product::where('category_id',$find_category_name->id)->get();
    return view('front.slider_category.product',compact('find_all_products'));
    // dd($find_all_products);die();
    // return response()->json($find_all_products);die();
    // $slidercount = Slider::where('slug',$slug)->count();
    // $Details = Slider::where(['slug'=>$slug])->first(); 
     
  
    // $category = Category::where('name',$Details->category_id)->first();
    // $products = Product::where('category_id',$category->id)->get();
//    return response()->json($products);
    

       
      
    
     
        //  return view('includes.product.slider-product');
   
    
    }
}
