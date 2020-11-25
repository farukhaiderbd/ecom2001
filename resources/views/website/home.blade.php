@extends('layouts.website')
@section('content')
    <div class="body-content outer-top-xs" id="top-banner-and-menu">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-3 sidebar">
            @component('website.includes.sidebar-menu')
            @endcomponent
            <div class="sidebar-widget hot-deals wow fadeInUp outer-bottom-xs">
              <h3 class="section-title">hot deals</h3>
              <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-ss">

                @foreach ($hot_deals as $item)
                <div class="item">
                    <div class="products">
                      <div class="hot-deal-wrapper">
                        <div class="image"> <img src="{{ URL::to($item->image_one) }}" alt=""> </div>
                        {{-- <div class="sale-offer-tag"><span>49%<br>
                          off</span>
                        </div> --}}
                        {{-- <div class="timing-wrapper">
                          <div class="box-wrapper">
                            <div class="date box"> <span class="key">120</span> <span class="value">DAYS</span> </div>
                          </div>
                          <div class="box-wrapper">
                            <div class="hour box"> <span class="key">20</span> <span class="value">HRS</span> </div>
                          </div>
                          <div class="box-wrapper">
                            <div class="minutes box"> <span class="key">36</span> <span class="value">MINS</span> </div>
                          </div>
                          <div class="box-wrapper hidden-md">
                            <div class="seconds box"> <span class="key">60</span> <span class="value">SEC</span> </div>
                          </div>
                        </div> --}}
                      </div>
                      <!-- /.hot-deal-wrapper -->

                      <div class="product-info text-left m-t-20">
                        <h3 class="name"><a href="detail.html">{{ $item->product_name }}</a></h3>
                        {{-- <div class="rating rateit-small"></div> --}}
                        <div class="product-price"> <span class="price"> @if($item->discount_price) {{ $item->discount_price }} @else {{ $item->selling_price }} @endif </span> <span class="price-before-discount">@if ($item->discount_price != '') {{ $item->selling_price }} @endif</span> </div>
                        <!-- /.product-price -->

                      </div>
                      <!-- /.product-info -->

                      <div class="cart clearfix animate-effect">
                        <div class="action">
                          <div class="add-cart-button btn-group">
                            <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                            {{-- <button class="btn btn-primary cart-btn" type="button">Add to cart</button> --}}
                            <button id="{{ $item->id }}" class="btn btn-primary cart-btn" data-toggle="modal" data-target="#cartmodal"  onclick="productview(this.id)">Add to Cart</button>
                          </div>
                        </div>
                        <!-- /.action -->
                      </div>
                      <!-- /.cart -->
                    </div>
                  </div>
                @endforeach


              </div>
              <!-- /.sidebar-widget -->
            </div>
            <!-- ============================================== HOT DEALS: END ============================================== -->

            <!-- ============================================== SPECIAL OFFER ============================================== -->

            <div class="sidebar-widget outer-bottom-small wow fadeInUp">
              <h3 class="section-title">Special Offer</h3>
              <div class="sidebar-widget-body outer-top-xs">
                <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                  <div class="item">
                    <div class="products special-product">
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p30.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p29.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p28.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="products special-product">
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p27.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p26.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p25.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="products special-product">
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p24.jpg"  alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p23.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->
                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p22.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.sidebar-widget-body -->
            </div>
            <!-- /.sidebar-widget -->
            <!-- ============================================== SPECIAL OFFER : END ============================================== -->
            <!-- ============================================== PRODUCT TAGS ============================================== -->
            <div class="sidebar-widget product-tag wow fadeInUp">
              <h3 class="section-title">Product tags</h3>
              <div class="sidebar-widget-body outer-top-xs">
                <div class="tag-list"> <a class="item" title="Phone" href="category.html">Phone</a> <a class="item active" title="Vest" href="category.html">Vest</a> <a class="item" title="Smartphone" href="category.html">Smartphone</a> <a class="item" title="Furniture" href="category.html">Furniture</a> <a class="item" title="T-shirt" href="category.html">T-shirt</a> <a class="item" title="Sweatpants" href="category.html">Sweatpants</a> <a class="item" title="Sneaker" href="category.html">Sneaker</a> <a class="item" title="Toys" href="category.html">Toys</a> <a class="item" title="Rose" href="category.html">Rose</a> </div>
                <!-- /.tag-list -->
              </div>
              <!-- /.sidebar-widget-body -->
            </div>
            <!-- /.sidebar-widget -->
            <!-- ============================================== PRODUCT TAGS : END ============================================== -->
            <!-- ============================================== SPECIAL DEALS ============================================== -->

            <div class="sidebar-widget outer-bottom-small wow fadeInUp">
              <h3 class="section-title">Special Deals</h3>
              <div class="sidebar-widget-body outer-top-xs">
                <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                  <div class="item">
                    <div class="products special-product">
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p28.jpg"  alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p15.jpg"  alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p26.jpg"  alt="image"> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="products special-product">
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p18.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p17.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p16.jpg" alt=""> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->
                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="products special-product">
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p15.jpg" alt="images">
                                  <div class="zoom-overlay"></div>
                                  </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p14.jpg"  alt="">
                                  <div class="zoom-overlay"></div>
                                  </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                            <!-- /.col -->
                          </div>
                          <!-- /.product-micro-row -->
                        </div>
                        <!-- /.product-micro -->

                      </div>
                      <div class="product">
                        <div class="product-micro">
                          <div class="row product-micro-row">
                            <div class="col col-xs-5">
                              <div class="product-image">
                                <div class="image"> <a href="#"> <img src="{{asset('contents/website')}}/assets/images/products/p13.jpg" alt="image"> </a> </div>
                                <!-- /.image -->

                              </div>
                              <!-- /.product-image -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-xs-7">
                              <div class="product-info">
                                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                                <div class="rating rateit-small"></div>
                                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                                <!-- /.product-price -->

                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="sidebar-widget newsletter wow fadeInUp outer-bottom-small">
              <h3 class="section-title">Newsletters</h3>
              <div class="sidebar-widget-body outer-top-xs">
                <p>Sign Up for Our Newsletter!</p>
                <form>
                  <div class="form-group">
                    <label class="sr-only" for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Subscribe to our newsletter">
                  </div>
                  <button class="btn btn-primary">Subscribe</button>
                </form>
              </div>
            </div>
            <div class="sidebar-widget  wow fadeInUp outer-top-vs ">
              <div id="advertisement" class="advertisement">
                <div class="item">
                  <div class="avatar"><img src="{{asset('contents/website')}}/assets/images/testimonials/member1.png" alt="Image"></div>
                  <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
                  <div class="clients_author">John Doe <span>Abc Company</span> </div>
                </div>
                <div class="item">
                  <div class="avatar"><img src="{{asset('contents/website')}}/assets/images/testimonials/member3.png" alt="Image"></div>
                  <div class="testimonials"><em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
                  <div class="clients_author">Stephen Doe <span>Xperia Designs</span> </div>
                </div>
                <div class="item">
                  <div class="avatar"><img src="{{asset('contents/website')}}/assets/images/testimonials/member2.png" alt="Image"></div>
                  <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer.<em>"</em></div>
                  <div class="clients_author">Saraha Smith <span>Datsun &amp; Co</span> </div>
                </div>
              </div>
            </div>
            <div class="home-banner"> <img src="{{asset('contents/website')}}/assets/images/banners/LHS-banner.jpg" alt="Image"> </div>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
            <div id="hero">
              @php
                  $allBanner=App\Banner::where('ban_status',1)->orderBy('ban_id','DESC')->take(2)->get();
              @endphp
              <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
                @foreach($allBanner as $banner)
                <div class="item" style="background-image: url({{asset('uploads/'.$banner->ban_image)}}">
                  <div class="container-fluid">
                    <div class="caption bg-color vertical-center text-left">
                      <div class="slider-header fadeInDown-1">Top Brands</div>
                      <div class="big-text fadeInDown-1">{{$banner->ban_title}}</div>
                      <div class="excerpt fadeInDown-2 hidden-xs"> <span>{{$banner->ban_subtitle}}</span> </div>
                      <div class="button-holder fadeInDown-3"> <a href="{{$banner->ban_url}}" class="btn-lg btn btn-uppercase btn-primary shop-now-button">{{$banner->ban_btn}}</a> </div>
                    </div>
                  </div>
                </div>
                @endforeach
              </div>
            </div>
            <div class="info-boxes wow fadeInUp">
              <div class="info-boxes-inner">
                <div class="row">
                  <div class="col-md-6 col-sm-4 col-lg-4">
                    <div class="info-box">
                      <div class="row">
                        <div class="col-xs-12">
                          <h4 class="info-box-heading green">money back</h4>
                        </div>
                      </div>
                      <h6 class="text">30 Days Money Back Guarantee</h6>
                    </div>
                  </div>
                  <!-- .col -->

                  <div class="hidden-md col-sm-4 col-lg-4">
                    <div class="info-box">
                      <div class="row">
                        <div class="col-xs-12">
                          <h4 class="info-box-heading green">free shipping</h4>
                        </div>
                      </div>
                      <h6 class="text">Shipping on orders over $99</h6>
                    </div>
                  </div>
                  <!-- .col -->

                  <div class="col-md-6 col-sm-4 col-lg-4">
                    <div class="info-box">
                      <div class="row">
                        <div class="col-xs-12">
                          <h4 class="info-box-heading green">Special Sale</h4>
                        </div>
                      </div>
                      <h6 class="text">Extra $5 off on all items </h6>
                    </div>
                  </div>
                  <!-- .col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.info-boxes-inner -->

            </div>
            <!-- /.info-boxes -->
            <!-- ============================================== INFO BOXES : END ============================================== -->
            <!-- ============================================== SCROLL TABS ============================================== -->
            <div id="product-tabs-slider" class="scroll-tabs outer-top-vs wow fadeInUp">
              <div class="more-info-tab clearfix ">
                <h3 class="new-product-title pull-left">New Products</h3>
                <ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
                    @php
                        $categories = App\MainCategory::where('mcate_status', 1)->limit(5)->get();
                    @endphp
                    <li class="active"><a data-transition-type="backSlide" href="#all" data-toggle="tab">All</a></li>
                    @foreach ($categories as $item)
                    <li class=""><a data-transition-type="backSlide" href="#{{ $item->mcate_slug }}" data-toggle="tab">{{ $item->mcate_name }}</a></li>
                    @endforeach

                </ul>
                <!-- /.nav-tabs -->
              </div>
              <div class="tab-content outer-top-xs">
                <div class="tab-pane in active" id="all">
                  <div class="product-slider">
                    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> <a href="detail.html"><img  src="{{asset('contents/website')}}/assets/images/products/p1.jpg" alt=""></a> </div>
                              <!-- /.image -->

                              <div class="tag new"><span>new</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price -->

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a data-toggle="tooltip" class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action -->
                            </div>
                            <!-- /.cart -->
                          </div>
                          <!-- /.product -->

                        </div>
                        <!-- /.products -->
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> <a href="detail.html"><img  src="{{asset('contents/website')}}/assets/images/products/p2.jpg" alt=""></a> </div>
                              <!-- /.image -->

                              <div class="tag hot"><span>hot</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price -->

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action -->
                            </div>
                            <!-- /.cart -->
                          </div>
                          <!-- /.product -->

                        </div>
                        <!-- /.products -->
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> <a href="detail.html"><img  src="{{asset('contents/website')}}/assets/images/products/p4.jpg" alt=""></a> </div>
                              <!-- /.image -->

                              <div class="tag sale"><span>sale</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price -->

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action -->
                            </div>
                            <!-- /.cart -->
                          </div>
                          <!-- /.product -->

                        </div>
                        <!-- /.products -->
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> <a href="detail.html"><img  src="{{asset('contents/website')}}/assets/images/products/p3.jpg" alt=""></a> </div>
                              <!-- /.image -->

                              <div class="tag sale"><span>sale</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price -->

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action -->
                            </div>
                            <!-- /.cart -->
                          </div>
                          <!-- /.product -->

                        </div>
                        <!-- /.products -->
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> <a href="detail.html"><img  src="{{asset('contents/website')}}/assets/images/products/p30.jpg" alt=""></a> </div>
                              <!-- /.image -->

                              <div class="tag hot"><span>hot</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price -->

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action -->
                            </div>
                            <!-- /.cart -->
                          </div>
                          <!-- /.product -->

                        </div>
                        <!-- /.products -->
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> <a href="detail.html"><img  src="{{asset('contents/website')}}/assets/images/products/p29.jpg" alt=""></a> </div>
                              <!-- /.image -->

                              <div class="tag new"><span>new</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price -->

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action -->
                            </div>
                            <!-- /.cart -->
                          </div>
                          <!-- /.product -->

                        </div>
                        <!-- /.products -->
                      </div>
                      <!-- /.item -->
                    </div>
                    <!-- /.home-owl-carousel -->
                  </div>
                  <!-- /.product-slider -->
                </div>
                <!-- /.tab-pane -->

                @foreach ($categories as $item)
                <div class="tab-pane" id="{{ $item->mcate_slug }}">
                  <div class="product-slider">
                    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                        {{-- @php
                            $products = App\Product::where('mcate_id' ,$item->mcate_id)->orderBy('id', 'DESC')->get();
                        @endphp --}}

                        @foreach ($item->products as $product)
                        <div class="item item-carousel">
                            <div class="products">
                              <div class="product">
                                <div class="product-image">
                                  <div class="image"> <a href="detail.html"><img  src="{{ URL::to($product->image_one) }}" alt=""></a> </div>
                                  <!-- /.image -->

                                  {{-- <div class="tag sale"><span>sale</span></div> --}}
                                </div>
                                <!-- /.product-image -->

                                <div class="product-info text-left">
                                  <h3 class="name"><a href="detail.html">{{ $product->product_name }}</a></h3>
                                  <div class="rating rateit-small"></div>
                                  <div class="description"></div>
                                    <div class="product-price"> <span class="price"> @if($product->discount_price) {{ $product->discount_price }} @else {{ $product->selling_price }} @endif </span> <span class="price-before-discount">@if ($product->discount_price != '') {{ $product->selling_price }} @endif</span> </div>

                                  <!-- /.product-price -->

                                </div>
                                <!-- /.product-info -->
                                <div class="cart clearfix animate-effect">
                                  <div class="action">
                                    <ul class="list-unstyled">
                                      <li class="add-cart-button btn-group">
                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                      </li>
                                      <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                      <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                    </ul>
                                  </div>
                                  <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                              </div>
                              <!-- /.product -->

                            </div>
                            <!-- /.products -->
                          </div>
                        @endforeach

                      <!-- /.item -->

                    </div>
                    <!-- /.home-owl-carousel -->
                  </div>
                  <!-- /.product-slider -->
                </div>
                @endforeach

              </div>
              <!-- /.tab-content -->
            </div>
            <!-- /.scroll-tabs -->
            <!-- ============================================== SCROLL TABS : END ============================================== -->
            <!-- ============================================== WIDE PRODUCTS ============================================== -->
            <div class="wide-banners wow fadeInUp outer-bottom-xs">
              <div class="row">
                <div class="col-md-7 col-sm-7">
                  <div class="wide-banner cnt-strip">
                    <div class="image"> <img class="img-responsive" src="{{asset('contents/website')}}/assets/images/banners/home-banner1.jpg" alt=""> </div>
                  </div>
                  <!-- /.wide-banner -->
                </div>
                <!-- /.col -->
                <div class="col-md-5 col-sm-5">
                  <div class="wide-banner cnt-strip">
                    <div class="image"> <img class="img-responsive" src="{{asset('contents/website')}}/assets/images/banners/home-banner2.jpg" alt=""> </div>
                  </div>
                  <!-- /.wide-banner -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.wide-banners -->

            <!-- ============================================== WIDE PRODUCTS : END ============================================== -->
            <!-- ============================================== FEATURED PRODUCTS ============================================== -->
            <section class="section featured-product wow fadeInUp">
              <h3 class="section-title">Featured products</h3>
              <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">

                @foreach ($featured_products as $product)
                <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> <a href="detail.html"><img  src="{{ URL::to($product->image_one) }}" alt=""></a> </div>
                          <!-- /.image -->

                          {{-- <div class="tag sale"><span>sale</span></div> --}}
                        </div>
                        <!-- /.product-image -->

                        <div class="product-info text-left">
                          <h3 class="name"><a href="detail.html">{{ $product->product_name }}</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                            <div class="product-price"> <span class="price"> @if($product->discount_price) {{ $product->discount_price }} @else {{ $product->selling_price }} @endif </span> <span class="price-before-discount">@if ($product->discount_price != '') {{ $product->selling_price }} @endif</span> </div>

                          <!-- /.product-price -->

                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                            </ul>
                          </div>
                          <!-- /.action -->
                        </div>
                        <!-- /.cart -->
                      </div>
                      <!-- /.product -->

                    </div>
                    <!-- /.products -->
                  </div>
                @endforeach

                <!-- /.item -->
              </div>
              <!-- /.home-owl-carousel -->
            </section>
            <!-- /.section -->
            <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
            <!-- ============================================== WIDE PRODUCTS ============================================== -->
            <div class="wide-banners wow fadeInUp outer-bottom-xs">
              <div class="row">
                <div class="col-md-12">
                  <div class="wide-banner cnt-strip">
                    <div class="image"> <img class="img-responsive" src="{{asset('contents/website')}}/assets/images/banners/home-banner.jpg" alt=""> </div>
                    <div class="strip strip-text">
                      <div class="strip-inner">
                        <h2 class="text-right">New Mens Fashion<br>
                          <span class="shopping-needs">Save up to 40% off</span></h2>
                      </div>
                    </div>
                    <div class="new-label">
                      <div class="text">NEW</div>
                    </div>
                    <!-- /.new-label -->
                  </div>
                  <!-- /.wide-banner -->
                </div>
                <!-- /.col -->

              </div>
              <!-- /.row -->
            </div>
            <!-- /.wide-banners -->
            <!-- ============================================== WIDE PRODUCTS : END ============================================== -->
            <!-- ============================================== BEST SELLER ============================================== -->

            <div class="best-deal wow fadeInUp outer-bottom-xs">
              <h3 class="section-title">Best seller</h3>
              <div class="sidebar-widget-body outer-top-xs">
                <div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
                    @foreach ($trend_products as $product)
                    <div class="item">
                      <div class="products best-product">
                        <div class="product">
                          <div class="product-micro">
                            <div class="row product-micro-row">
                              <div class="col col-xs-5">
                                <div class="product-image">
                                  <div class="image"> <a href="#"> <img src="{{ URL::to($product->image_one) }}" alt=""> </a> </div>
                                  <!-- /.image -->

                                </div>
                                <!-- /.product-image -->
                              </div>
                              <!-- /.col -->
                              <div class="col2 col-xs-7">
                                <div class="product-info">
                                  <h3 class="name"><a href="#">{{ $product->product_name }}</a></h3>
                                  <div class="rating rateit-small"></div>
                                  <div class="product-price"> <span class="price"> {{ $product->selling_price }} </span> </div>
                                  <!-- /.product-price -->

                                </div>
                              </div>
                              <!-- /.col -->
                            </div>
                            <!-- /.product-micro-row -->
                          </div>
                          <!-- /.product-micro -->

                        </div>

                      </div>
                    </div>
                    @endforeach

                </div>
              </div>
              <!-- /.sidebar-widget-body -->
            </div>
            <!-- /.sidebar-widget -->
            <!-- ============================================== BEST SELLER : END ============================================== -->

            <!-- ============================================== BLOG SLIDER ============================================== -->
            <section class="section latest-blog outer-bottom-vs wow fadeInUp">
              <h3 class="section-title">latest form blog</h3>
              <div class="blog-slider-container outer-top-xs">
                <div class="owl-carousel blog-slider custom-carousel">
                  <div class="item">
                    <div class="blog-post">
                      <div class="blog-post-image">
                        <div class="image"> <a href="blog.html"><img src="{{asset('contents/website')}}/assets/images/blog-post/post1.jpg" alt=""></a> </div>
                      </div>
                      <!-- /.blog-post-image -->

                      <div class="blog-post-info text-left">
                        <h3 class="name"><a href="#">Voluptatem accusantium doloremque laudantium</a></h3>
                        <span class="info">By Jone Doe &nbsp;|&nbsp; 21 March 2016 </span>
                        <p class="text">Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
                        <a href="#" class="lnk btn btn-primary">Read more</a> </div>
                      <!-- /.blog-post-info -->

                    </div>
                    <!-- /.blog-post -->
                  </div>
                  <!-- /.item -->

                  <div class="item">
                    <div class="blog-post">
                      <div class="blog-post-image">
                        <div class="image"> <a href="blog.html"><img src="{{asset('contents/website')}}/assets/images/blog-post/post2.jpg" alt=""></a> </div>
                      </div>
                      <!-- /.blog-post-image -->

                      <div class="blog-post-info text-left">
                        <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                        <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                        <p class="text">Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
                        <a href="#" class="lnk btn btn-primary">Read more</a> </div>
                      <!-- /.blog-post-info -->

                    </div>
                    <!-- /.blog-post -->
                  </div>
                  <!-- /.item -->

                  <!-- /.item -->

                  <div class="item">
                    <div class="blog-post">
                      <div class="blog-post-image">
                        <div class="image"> <a href="blog.html"><img src="{{asset('contents/website')}}/assets/images/blog-post/post1.jpg" alt=""></a> </div>
                      </div>
                      <!-- /.blog-post-image -->

                      <div class="blog-post-info text-left">
                        <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                        <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                        <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                        <a href="#" class="lnk btn btn-primary">Read more</a> </div>
                      <!-- /.blog-post-info -->

                    </div>
                    <!-- /.blog-post -->
                  </div>
                  <!-- /.item -->

                  <div class="item">
                    <div class="blog-post">
                      <div class="blog-post-image">
                        <div class="image"> <a href="blog.html"><img src="{{asset('contents/website')}}/assets/images/blog-post/post2.jpg" alt=""></a> </div>
                      </div>
                      <!-- /.blog-post-image -->

                      <div class="blog-post-info text-left">
                        <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                        <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                        <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                        <a href="#" class="lnk btn btn-primary">Read more</a> </div>
                      <!-- /.blog-post-info -->

                    </div>
                    <!-- /.blog-post -->
                  </div>
                  <!-- /.item -->

                  <div class="item">
                    <div class="blog-post">
                      <div class="blog-post-image">
                        <div class="image"> <a href="blog.html"><img src="{{asset('contents/website')}}/assets/images/blog-post/post1.jpg" alt=""></a> </div>
                      </div>
                      <!-- /.blog-post-image -->

                      <div class="blog-post-info text-left">
                        <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                        <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                        <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                        <a href="#" class="lnk btn btn-primary">Read more</a> </div>
                      <!-- /.blog-post-info -->

                    </div>
                    <!-- /.blog-post -->
                  </div>
                  <!-- /.item -->

                </div>
                <!-- /.owl-carousel -->
              </div>
              <!-- /.blog-slider-container -->
            </section>
            <!-- /.section -->
            <!-- ============================================== BLOG SLIDER : END ============================================== -->

            <!-- ============================================== FEATURED PRODUCTS ============================================== -->
            <section class="section wow fadeInUp new-arriavls">
              <h3 class="section-title">New Arrivals</h3>
              <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
                @php
                   $products  = App\Product::where('status',1)->orderBy('id' , 'DESC')->limit(10)->get();
                @endphp
                @foreach ($products as $product)
                <div class="item item-carousel">
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> <a href="detail.html"><img  src="{{ URL::to($product->image_one) }}" alt=""></a> </div>
                          <!-- /.image -->

                          {{-- <div class="tag sale"><span>sale</span></div> --}}
                        </div>
                        <!-- /.product-image -->

                        <div class="product-info text-left">
                          <h3 class="name"><a href="detail.html">{{ $product->product_name }}</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                            <div class="product-price"> <span class="price"> @if($product->discount_price) {{ $product->discount_price }} @else {{ $product->selling_price }} @endif </span> <span class="price-before-discount">@if ($product->discount_price != '') {{ $product->selling_price }} @endif</span> </div>

                          <!-- /.product-price -->

                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                            </ul>
                          </div>
                          <!-- /.action -->
                        </div>
                        <!-- /.cart -->
                      </div>
                      <!-- /.product -->

                    </div>
                    <!-- /.products -->
                  </div>
                @endforeach

              </div>
            </section>
          </div>
        </div>
        <div id="brands-carousel" class="logo-slider wow fadeInUp">
          <div class="logo-slider-inner">
            <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
              <div class="item m-t-15"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand1.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
              <div class="item m-t-10"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand2.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
              <div class="item"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand3.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
              <div class="item"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand4.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
              <div class="item"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand5.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
              <div class="item"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand6.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
              <div class="item"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand2.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
              <div class="item"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand4.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
              <div class="item"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand1.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
              <div class="item"> <a href="#" class="image"> <img data-echo="{{asset('contents/website')}}/assets/images/brands/brand5.png" src="{{asset('contents/website')}}/assets/images/blank.gif" alt=""> </a> </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--product cart add modal-->

<!-- Modal -->
<div class="modal fade " id="cartmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title text-center" id="exampleModalLabel">Product Short Description</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
         <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 16rem;">
                <img src="" class="card-img-top" id="pimage" style="height: 240px;">
                <div class="card-body">

                </div>
              </div>
            </div>
            <div class="col-md-4 ml-auto">
                <ul class="list-group">
                  <li class="list-group-item"> <h5 class="card-title" id="pname"></h5></span></li>
               <li class="list-group-item">Product code: <span id="pcode"> </span></li>
                <li class="list-group-item">Category:  <span id="pcat"> </span></li>
                <li class="list-group-item">SubCategory:  <span id="psubcat"> </span></li>
                <li class="list-group-item">Brand: <span id="pbrand"> </span></li>
                <li class="list-group-item">Stock: <span class="badge" id="stock" style="background: green; color:white;"></span></li>
              </ul>
            </div>
            <div class="col-md-4 ">
                <form action="{{route('insert.into.cart') }}" method="post">
                  @csrf
                  <input type="hidden" name="product_id" id="product_id">
                  <div class="form-group" id="colordiv">
                    <label for="">Color</label>
                    <select name="color" class="form-control">
                    </select>
                  </div>
                   <div class="form-group" id="sizediv" >
                    <label for="exampleInputEmail1">Size</label>
                    <select name="size" class="form-control" id="size">
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Quantity</label>
                    <input type="number" class="form-control" value="1" name="qty">
                  </div>
                  <button type="submit" class="btn btn-primary">Add To Cart</button>
                </form>
             </div>
           </div>
        </div>
      </div>
    </div>
  </div>

@endsection
@push('js')
{{-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"> --}}
{{-- </script> --}}
{{-- <script src="{{ asset('contents/admin') }}/assets/plugins/icheck/icheck.min.js"></script>
<script src="{{ asset('contents/admin') }}/assets/plugins/icheck/icheck.init.js"></script> --}}
{{-- <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script> --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.min.js" crossorigin="anonymous"></script>
<script type="text/javascript">

 function productview(id){
          $.ajax({
                     url: "{{  url('/cart/product/view/') }}/"+id,
                     type:"GET",
                     dataType:"json",
                     success:function(data) {
                       $('#pname').text(data.product.product_name);
                       $('#pimage').attr('src',data.product.image_one);
                       $('#pcat').text(data.product.category_name);
                       $('#psubcat').text(data.product.subcategory_name);
                       $('#pbrand').text(data.product.brand_name);
                       $('#pcode').text(data.product.product_code);
                       $('#product_id').val(data.product.id);
                       $('#stock').text(data.product.product_stock);
                        var d =$('select[name="size"]').empty();
                         $.each(data.size, function(key, value){
                             $('select[name="size"').append('<option value="'+ value +'">' + value + '</option>');
                              if (data.size == "") {
                                     $('#sizediv').hide();
                              }else{
                                    $('#sizediv').show();
                              }
                         });
                        var d =$('select[name="color"]').empty();
                         $.each(data.color, function(key, value){
                             $('select[name="color"').append('<option value="'+ value +'">' + value + '</option>');
                               if (data.color == "") {
                                     $('#colordiv').hide();
                              } else{
                                   $('#colordiv').show();
                              }
                         });
             }
      })
    }
</script>

@endpush
