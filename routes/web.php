<?php

use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/*
Route::get('/', function () {
    return view('welcome');
});
*/
Route::get('test/', function ()
{
   return view('layouts.test');
});

Auth::routes();
//website routes start
Route::get('/', 'WebsiteController@index')->name('');
Route::get('contact', 'WebsiteController@contact')->name('');
Route::get('product', 'WebsiteController@product')->name('');
Route::get('category/{slug}', 'WebsiteController@categoryproduct')->name('category_product');
Route::get('product/details', 'WebsiteController@product_details')->name('');
Route::get('cart/product/view/{id}','CartController@ViewProduct');
Route::get('/cart','CartController@showcart')->name('product_cart');
Route::get('/checkout','CartController@checkout')->name('product_checkout');
Route::post('/apply/coupon','CartController@applycoupon')->name('apply.coupon');
Route::get('/remove/coupon','CartController@removecoupon')->name('coupon.remove');
Route::get('/cart/remove/{id}','CartController@cartremove')->name('product_cart_remove');
Route::post('/cart/update','CartController@UpdateCart')->name('product_cart_update');
Route::post('insert/into/cart/','CartController@InsertCart')->name('insert.into.cart');

// // checkout
// Route::get('user/checkout/','CheckoutController@Checkout')->name('user.checkout');
// Route::post('user/apply/coupon/','CheckoutController@Coupon')->name('apply.coupon');
// Route::get('coupon/remove/','CheckoutController@CouponRemove')->name('coupon.remove');
Route::get('payment/page/','CheckoutController@PymentPage')->name('payment.step');

//payment methods
Route::post('payment/process/','PaymentController@payment')->name('payment.process');
Route::post('user/stripe/charge/','PaymentController@STripeCharge')->name('stripe.charge');

Route::get('success/list/','PaymentController@SuccessList')->name('success.orderlist');
Route::get('request/return/{id}','PaymentController@RequestReturn');
// 2checkout card payment
//admin panel routes start
Route::get('home', 'HomeController@index')->name('home');
Route::get('admin', 'AdminController@index')->name('');

Route::get('admin/user', 'UserController@index')->name('');
Route::get('admin/user/add', 'UserController@add')->name('');
Route::get('admin/user/edit/{id}', 'UserController@edit')->name('');
Route::post('admin/user/submit', 'UserController@insert')->name('');
Route::post('admin/user/update', 'UserController@update')->name('');

Route::get('admin/banner', 'BannerController@index')->name('');
Route::get('admin/banner/add', 'BannerController@add')->name('');
Route::get('admin/banner/edit/{slug}', 'BannerController@edit')->name('');
Route::get('admin/banner/view/{slug}', 'BannerController@view')->name('');
Route::post('admin/banner/submit', 'BannerController@insert')->name('');
Route::post('admin/banner/update', 'BannerController@update')->name('');
Route::post('admin/banner/softdelete', 'BannerController@softdelete')->name('');

Route::get('admin/manage/basic', 'ManageController@basic')->name('');
Route::post('admin/manage/basic/update', 'ManageController@update_basic')->name('');
Route::get('admin/manage/social/media', 'ManageController@social')->name('');
Route::post('admin/manage/social/media/update', 'ManageController@update_social')->name('');
Route::get('admin/manage/contact', 'ManageController@contact')->name('');
Route::post('admin/manage/contact', 'ManageController@update_contact')->name('');

Route::get('admin/contactus', 'ContactUsController@index')->name('');

Route::group(['prefix' => 'admin'], function () {
    Route::get('products', 'ProductController@index')->name('all_product');
    Route::get('product/create', 'ProductController@create')->name('create_product');
    Route::post('product/store', 'ProductController@store')->name('store_product');
    Route::get('product/view/{id}', 'ProductController@view')->name('view_product');
    Route::get('product/edit/{id}', 'ProductController@edit')->name('edit_product');
    Route::post('product/update', 'ProductController@update')->name('update_product');
    Route::get('product/softdelete/{id}', 'ProductController@softdelete')->name('softdelete_product');
    Route::get('product/delete/{id}', 'ProductController@delete')->name('delete_product');
    Route::get('product/publish/{id}', 'ProductController@publish')->name('publish_product');
    Route::get('product/unpublish/{id}', 'ProductController@unpublish')->name('unpublish_product');
    Route::get('get/subcategory/{id}', 'ProductController@subcategory')->name('get_prodcut_subcategory');
});

