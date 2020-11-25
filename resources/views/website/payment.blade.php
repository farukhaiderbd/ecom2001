@extends('layouts.website')
@section('content')

<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_styles.css')}}">
<style>
    .d-none{
        display: none;
    }
</style>
    <div class="contact_form">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 "  style="border-right: 1px solid grey; padding: 20px;">
                    <div class="cart_container">
                    	<div class="contact_form_title text-center">Cart Products</div>
						<div class="cart_items">
							<ul class="cart_list">
							@foreach($cart as $row)
								<li class="cart_item clearfix">

									<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
										<div class="cart_item_name cart_info_col">
											<div class="cart_item_title">Name</div>
											<div class="cart_item_text">{{ $row->name }}</div>
										</div>
										@if($row->options->color == NULL)
										@else
										<div class="cart_item_color cart_info_col">
											<div class="cart_item_title">Color</div>
											<div class="cart_item_text">
													{{ $row->options->color }}
											</div>
										</div>
										@endif
										@if($row->options->size == NULL)
										@else
										<div class="cart_item_color cart_info_col">
											<div class="cart_item_title">Size</div>
											<div class="cart_item_text">
													{{ $row->options->size }}
											</div>
										</div>
										@endif



										<div class="cart_item_quantity cart_info_col">
											<div class="cart_item_title">Quantity</div>
											{{ $row->qty }}
										</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">Price</div>
											<div class="cart_item_text">${{ $row->price }}</div>
										</div>
										<div class="cart_item_total cart_info_col">
											<div class="cart_item_title">Total</div>
											<div class="cart_item_text">${{ $row->price * $row->qty }}</div>
										</div>

									</div>
								</li>
								@endforeach
							</ul>
						</div>
						   <br><br><hr>

                           <ul class="list-group col-lg-4" style="float: right;">
                            @if(Session::has('coupon'))
                                 <li class="list-group-item">Subtotal :  <span style="float: right;"> $ {{Cart::subtotal() }}</span> </li>
                                  <li class="list-group-item">Coupon : ({{   Session::get('coupon')['name'] }}) <a href="{{ route('coupon.remove') }}" class="btn btn-danger btn-sm">x</a> <span style="float: right;"> $  {{ Session::get('coupon')['price'] }} </span> </li>
                                @else
                                  <li class="list-group-item">Subtotal :  <span style="float: right;"> $ {{ Cart::Subtotal() }}</span> </li>
                                @endif

                            <li class="list-group-item">Shipping Charge: <span style="float: right;"> 00 </span></li>
                            <li class="list-group-item">Vat :  <span style="float: right;"> 0</span></li>
                            @if(Session::has('coupon'))
                            <li class="list-group-item">Total:  <span style="float: right;"> $ {{ Session::get('coupon')['balance'] }}</span> </li>
                            @else
                                 <li class="list-group-item">Total:  <span style="float: right;">${{Cart::subtotal() }}</span> </li>
                            @endif
                      </ul>
					</div>
                </div>

                 <div class="col-lg-5 " style=" padding: 20px;">
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">Billing and Shipping Address</div>
                        <label for="">If you use shipping address as a billing address</label>
                        <input type="checkbox" name="shipping_check" id="">
                        <form action="{{ route('payment.process') }}" id="contact_form" method="post">
                            @csrf
                           <div class="billing">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Full Name </label>
                                <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Full Name " name="name" required="">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Phone </label>
                                <input type="text" class="form-control " name="phone"  aria-describedby="emailHelp" placeholder="Phone "  required="">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email </label>
                                <input type="text" class="form-control " name="email"   aria-describedby="emailHelp" placeholder="Email " required="">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Address</label>
                                <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="address" name="address" required="">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">City</label>
                                <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="city" name="city" required="">
                            </div>
                           </div>

                           <div class="shipping d-none" >

                            <div class="form-group">
                                <label for="exampleInputEmail1">Shipping Name </label>
                                <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Full Name " name="ship_name" value="">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Shipping Phone </label>
                                <input type="text" class="form-control " name="ship_phone"  aria-describedby="emailHelp" placeholder="Phone " >
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Shipping Email </label>
                                <input type="text" class="form-control " name="ship_email"   aria-describedby="emailHelp" placeholder="Email ">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Address</label>
                                <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="address" name="ship_address">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">City</label>
                                <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="city" name="ship_city">
                            </div>
                           </div>
                            <div class="contact_form_title text-center">Payment By</div>
                           <div class="form-group">
                                <ul class="logos_list d-flex" >
                                            <li><input type="radio" name="payment" value="stripe"> <img src="{{ asset('contents/website/assets/images/mastercard.png') }}" style="width: 100px; height: 60px;"></li>
                                            <li><input type="radio" name="payment" value="paypal"> <img src="{{ asset('contents/website/assets/images/paypal.png') }}" style="width: 100px;"></li>
                                             <li><input type="radio" name="payment" value="ideal"> <img src="{{ asset('contents/website/assets/images/mollie.png') }}" style="width: 100px; height: 80px;"></li>
                                 </ul>
                            </div><br>
                            <div class="contact_form_button">
                                <button type="submit" class="btn btn-info">Pay Now</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
        <div class="panel"></div>
    </div>

@endsection

@push('js')

<script>

    $(document).ready(function(){
        $('input[name = "shipping_check"]').on('change',function(){
            var check = $(this).prop('checked');
        if(check == true){
            $('.shipping').removeClass('d-none');
            $('.billing').addClass('d-none');

        }
        if(check == false){
            $('.shipping').addClass('d-none');
            $('.billing').removeClass('d-none');

        }
        })

    });

</script>
@endpush
