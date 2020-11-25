<?php

namespace App\Http\Controllers;

use App\Product;
use App\ProductCategory;
use Illuminate\Http\Request;
use Image;
use Illuminate\Support\Str;
class ProductController extends Controller
{
    public function index()
    {

    }
    public function create()
    {
        return view('admin.product.create');

    }
    public function store(Request $request)
    {
        $this->validate($request,[
            'product_name' => 'required',
        ],[
            'product_name.required' => 'This Product field required',
        ]);
            $slug = Str::slug($request->product_name);
            $product = new Product();
            $product->product_name = $request->product_name;
            $product->product_code = $request->product_code;
            $product->product_quantity = $request->product_quantity;
            $product->product_cat_id = $request->subcategory_id;
            $product->main_cate_id = $request->category_id;
            $product->product_slug = $slug;
            $product->product_details = $request->product_details;
            $product->product_color = $request->product_color;
            $product->product_size = $request->product_size;
            $product->selling_price = $request->selling_price;
            $product->discount_price = $request->discount_price;
            $product->video_link = $request->video_link;
            $product->main_slider= $request->main_slider;
            $product->hot_deal= $request->hot_deal;
            $product->best_rated= $request->best_rated;
            $product->trend= $request->trend;
            $product->mid_slider= $request->mid_slider;
            $product->hot_new= $request->hot_new;
            $product->buyone_getone= $request->buyone_getone;
            $image_one= $request->image_one;
            $image_two= $request->image_two;
            $image_three= $request->image_three;
            if ($image_one && $image_two && $image_three) {
              $image_one_name= hexdec(uniqid()).'.'.$image_one->getClientOriginalExtension();
              Image::make($image_one)->resize(300,300)->save('uploads/product/'.$image_one_name);
              $product->image_one='uploads/product/'.$image_one_name;

              $image_two_name= hexdec(uniqid()).'.'.$image_two->getClientOriginalExtension();
              Image::make($image_two)->resize(300,300)->save('uploads/product/'.$image_two_name);
              $product->image_two='uploads/product/'.$image_two_name;

              $image_three_name= hexdec(uniqid()).'.'.$image_three->getClientOriginalExtension();
              Image::make($image_three)->resize(300,300)->save('uploads/product/'.$image_three_name);
              $product->image_three='uploads/product/'.$image_three_name;
              $product->save();
              $notification = array(
                        'messege'   =>  'Add Product successfully!',
                            'alert-type'=>  'success'
                         );
                return redirect()->route('create_product')->with($notification);

             }



    }
    public function view()
    {

    }
    public function edit()
    {

    }
    public function update()
    {


    }
    public function softdelete()
    {

    }
    public function subcategory($id)
    {
        $cat =ProductCategory::where('pcate_status', 1)->where('mcate_id', $id)->get();

        return json_encode($cat);
    }
}
