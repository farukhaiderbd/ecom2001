<?php

namespace App\Http\Controllers;

use App\MainCategory;
use App\Product;
use Illuminate\Http\Request;

class WebsiteController extends Controller{
    public function __construct(){

    }

    public function index(){



        $hot_deals = Product::where('hot_deal', 1)->where('status',1)->orderBy('id' , 'DESC')->limit(10)->get();
        $featured_products = Product::where('best_rated', 1)->where('status',1)->orderBy('id' , 'DESC')->limit(10)->get();
        $trend_products = Product::where('trend', 1)->where('status',1)->orderBy('id' , 'DESC')->limit(10)->get();

        return view('website.home', compact('hot_deals','featured_products','trend_products'));
    }

    public function contact(){
        return view('website.contact');
    }

    public function product(){
        return view('website.product.index');
    }

    public function product_details(){
        return view('website.product.details');
    }

    public function categoryproduct($slug){
        $cat = MainCategory::where('mcate_status',1)->where('mcate_slug',$slug)->first();
        $products = Product::where('main_cate_id',$cat->mcate_id)->paginate(12);
        return view('website.category',compact('products'));
    }
}
