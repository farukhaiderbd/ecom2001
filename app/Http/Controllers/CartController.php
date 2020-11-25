<?php

namespace App\Http\Controllers;

use App\Coupon;
use Illuminate\Http\Request;
use App\Product;
use App\Model\Wishlist;
use Cart;
use Response;
use DB;
use Auth;
use Session;
class CartController extends Controller
{
    // ajax request to add cart add here start
    // public function AddCart($id)
    // {
    //   $product = Product::findorfail($id);
    //   $data = array();
    //   if ($product->discount_price == NULL) {
    // 	  	            $data['id']=$product->id;
    // 	                $data['name']=$product->product_name;
    // 	                $data['qty']=1;
    // 	                $data['price']= $product->selling_price;
    // 	 				        $data['weight']=1;
    // 	                $data['options']['image']=$product->image_one;
    //                   $data['options']['color']='';
    //                   $data['options']['size']='';
    // 	               Cart::add($data);
    // 	               return response()->json(['success' => 'Successfully Added on your Cart']);
    // 	   }else{
    // 	               $data['id']=$product->id;
    // 	                $data['name']=$product->product_name;
    // 	                $data['qty']=1;
    // 	                $data['price']= $product->discount_price;
    // 	 				        $data['weight']=1;
    // 	                $data['options']['image']=$product->image_one;
    //                     $data['options']['color']='';
    //                     $data['options']['size']='';
    //
    // 	                Cart::add($data);
    // 	              return response()->json(['success' => 'Successfully Added on your Cart']);
    // 	 }
    //
    //
    //
    // }
    // ajax request to add cart add here end

     public function check()
   {
    $content= Cart::content();
      return response()->json($content);
    }

    public function ViewProduct($id)
    {
      $product=DB::table('products')
                                    ->join('main_categories','products.main_cate_id','main_categories.mcate_id')
                                    ->join('product_categories','products.product_cat_id','product_categories.pcate_id')
                                    ->select('products.*','main_categories.mcate_name','product_categories.pcate_name')
                                    ->where('products.id',$id)->first();

              $color =$product->product_color;
              $product_color = explode(',', $color);

              $size =$product->product_size;
              $product_size = explode(',', $size);

             // return response()->json($product_color);
              return response::json(array(
                      'product' => $product,
                      'color' => $product_color,
                       'size' => $product_size,
               ));
    }
    public function InsertCart(Request $request)
    {
        // dd($request->all());
      $id =$request->product_id;
      $color =$request->color;
      $size =$request->size;
      $qty =$request->qty;
      $product = Product::where('product_stock', 'Available')->find($id);
      $data = array();
      if ($product) {
      if ($product->discount_price == NULL) {
    	  	            $data['id']=$product->id;
    	                $data['name']=$product->product_name;
    	                $data['qty']=$qty;
    	                $data['price']= $product->selling_price;
    	 				$data['weight']=1;
    	                $data['options']['image']=$product->image_one;
                        $data['options']['color']=$color;
                        $data['options']['size']=$size;
                       Cart::add($data);
                     $notification=array(
                              'messege'=>'Successfully Done',
                               'alert-type'=>'success'
                         );
                         return redirect()->back()->with($notification);
    	   }else{
    	                $data['id']=$product->id;
    	                $data['name']=$product->product_name;
    	                $data['qty']=$qty;
    	                $data['price']= $product->discount_price;
    	 				$data['weight']=1;
    	                $data['options']['image']=$product->image_one;
                        $data['options']['color']=$color;
                        $data['options']['size']=$size;
                        Cart::add($data);
                      $notification=array(
                                'messege'=>'Successfully Done',
                                 'alert-type'=>'success'
                           );
                           return redirect()->back()->with($notification);
    	 }
     }else {
       $notification=array(
                 'messege'=>'This product Out of Stock',
                  'alert-type'=>'error'
            );
            return redirect()->back()->with($notification);
     }
    }
    public function InsertwishlistCart(Request $request)
    {
      $id =$request->product_id;
      $wishlist_id =$request->wishlist_id;
      $wishlist = Wishlist::findorfail($wishlist_id);
      $product = Product::where('product_stock', 'Available')->find($id);
      $data = array();
      if ($product) {
      if ($product->discount_price == NULL) {
                      $data['id']=$product->id;
                      $data['name']=$product->product_name;
                      $data['qty']=$request->qty;
                      $data['price']= $product->selling_price;
                      $data['weight']=1;
                      $data['options']['image']=$product->image_one;
                      $data['options']['color']=$request->color;
                      $data['options']['size']=$request->size;
                     Cart::add($data);
                     $wishlist->delete();
                     $notification=array(
                              'messege'=>'Successfully Added in cart',
                               'alert-type'=>'success'
                         );
                         return redirect()->back()->with($notification);
         }else{
                     $data['id']=$product->id;
                      $data['name']=$product->product_name;
                      $data['qty']=$request->qty;
                      $data['price']= $product->discount_price;
                      $data['weight']=1;
                      $data['options']['image']=$product->image_one;
                        $data['options']['color']=$request->color;
                        $data['options']['size']=$request->size;

                      Cart::add($data);
                      $wishlist->delete();
                      $notification=array(
                                'messege'=>'Successfully Added in cart',
                                 'alert-type'=>'success'
                           );
                           return redirect()->back()->with($notification);
       }
     }else {
       $notification=array(
                 'messege'=>'This product Out of Stock',
                  'alert-type'=>'error'
            );
            return redirect()->back()->with($notification);
     }


    }

    public function showcart()
    {
      $cart = Cart::content();
      return view('website.cart', compact('cart'));
    }
    public function cartremove($id)
    {
      $cart =Cart::remove($id);
      $notification=array(
                'messege'=>'This iteam deleted',
                 'alert-type'=>'error'
           );
           return redirect()->back()->with($notification);
    }
    public function UpdateCart(Request $request)
    {
      $rowId = $request->id;
      $qty = $request->qty;
      Cart::update($rowId, $qty);
      return redirect()->back();;

    }

    public function Wishlist()
    {
      $id = Auth::id();
      $product =Wishlist::where('user_id', 1)->get();
    //   dd($product);
      return view('pages.wishlist', compact('product'));
    }
    public function checkout()
    {
        return view('website.checkout');
    }
    public function applycoupon(Request $request)
    {
        $coupon= $request->coupon;
    $check = Coupon::where('code', $coupon)->where('status', 1)->first();


    if ($check) {
        session::put('coupon',[
            'name' => $check->code,
            'price' => $check->price,
            'balance' => Cart::Subtotal() - $check->price
        ]);
            $notification=array(
                            'messege'=>'apply your coupon',
                                'alert-type'=>'success'
                        );
                            return redirect()->back()->with($notification);
    }
    $notification=array(
                        'messege'=>'Invalied Coupon',
                        'alert-type'=>'success'
                    );
                    return redirect()->back()->with($notification);
        }
        public function removecoupon()
        {
            session::forget('coupon');
            return redirect()->back();
        }
}
