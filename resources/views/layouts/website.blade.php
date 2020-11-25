<!DOCTYPE html>
<html lang="{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @php
        $basic=App\Basic::where('basic_status',1)->where('basic_id',1)->firstOrFail();
        $social=App\SocialMedia::where('sm_status',1)->where('sm_id',1)->firstOrFail();
        $coninfo=App\ContactInformation::where('ci_status',1)->where('id',1)->firstOrFail();
    @endphp
    <title> @stack('title') | {{$basic->basic_title}}</title>
    <link rel="icon" href="{{asset('uploads/'.$basic->basic_favicon)}}">
    <link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/main.css">
    <link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/blue.css">
    <link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/owl.carousel.css">
    <link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/owl.transitions.css">
    <link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/animate.min.css">
    <link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/rateit.css">
    <link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/bootstrap-select.min.css">
    <link href="{{asset('contents/website')}}/assets/css/lightbox.css" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('contents/website')}}/assets/css/font-awesome.css">
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    @stack('css')
  </head>
  <body class="cnt-home">
    <header class="header-style-1">
      <div class="top-bar animate-dropdown">
        <div class="container">
          <div class="header-top-inner">
            <div class="cnt-account">
              <ul class="list-unstyled">
                <li><a href="#"><i class="icon fa fa-user"></i>My Account</a></li>
                <li><a href="#"><i class="icon fa fa-heart"></i>Wishlist</a></li>
                <li><a href="#"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
                <li><a href="#"><i class="icon fa fa-check"></i>Checkout</a></li>
                <li><a href="#"><i class="icon fa fa-lock"></i>Login</a></li>
              </ul>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
      <div class="main-header">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
              <div class="logo"> <a href="{{url('/')}}"> <img src="{{asset('uploads/'.$basic->basic_logo)}}" alt="logo"> </a> </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-7 top-search-holder">
              <div class="search-area">
                <form>
                  <div class="control-group">
                    <ul class="categories-filter animate-dropdown">
                      <li class="dropdown"> <a class="dropdown-toggle"  data-toggle="dropdown" href="category.html">Categories <b class="caret"></b></a>
                        <ul class="dropdown-menu" role="menu" >
                          <li class="menu-header">Computer</li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">- Clothing</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">- Electronics</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">- Shoes</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">- Watches</a></li>
                        </ul>
                      </li>
                    </ul>
                    <input class="search-field" placeholder="Search here..." />
                    <a class="search-button" href="#" ></a> </div>
                </form>
              </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row">
              <div class="dropdown dropdown-cart"> <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
                <div class="items-cart-inner">
                  <div class="basket"> <i class="glyphicon glyphicon-shopping-cart"></i> </div>
                  <div class="basket-item-count"><span class="count">{{ count(Cart::content()) }}</span></div>
                  <div class="total-price-basket"> <span class="lbl">cart -</span> <span class="total-price"> <span class="sign">$</span><span class="value">{{ Cart::subtotal() }}</span> </span> </div>
                </div>
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <div class="cart-item product-summary">
                      <div class="row">
                        <div class="col-xs-4">
                          <div class="image"> <a href="detail.html"><img src="{{asset('contents/website')}}/assets/images/cart.jpg" alt=""></a> </div>
                        </div>
                        <div class="col-xs-7">
                          <h3 class="name"><a href="index8a95.html?page-detail">Simple Product</a></h3>
                          <div class="price">$600.00</div>
                        </div>
                        <div class="col-xs-1 action"> <a href="#"><i class="fa fa-trash"></i></a> </div>
                      </div>
                    </div>
                    <div class="clearfix"></div>
                    <hr>
                    <div class="clearfix cart-total">
                      <div class="pull-right"> <span class="text">Sub Total :</span><span class='price'>$600.00</span> </div>
                      <div class="clearfix"></div>
                      <a href="checkout.html" class="btn btn-upper btn-primary btn-block m-t-20">Checkout</a> </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="header-nav animate-dropdown">
        <div class="container">
          <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
           <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
           <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            </div>
            <div class="nav-bg-class">
              <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                <div class="nav-outer">
                  @php
                      $allMainCate=App\MainCategory::where('mcate_status',1)->where('mcate_top_menu',1)->orderBy('mcate_position','ASC')->get();
                  @endphp
                  <ul class="nav navbar-nav">
                    <li class="active dropdown yamm-fw"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Home</a> </li>
                    @foreach($allMainCate as $hm)
                    <li class="dropdown yamm mega-menu"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">{{$hm->mcate_name}}</a>
                      <ul class="dropdown-menu container">
                        <li>
                          <div class="yamm-content ">
                            <div class="row">
                              <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                                <h2 class="title">Men</h2>
                                <ul class="links">
                                  <li><a href="#">Dresses</a></li>

                                </ul>
                              </div>
                              <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                                <h2 class="title">Women</h2>
                                <ul class="links">
                                  <li><a href="#">Handbags</a></li>
                                </ul>
                              </div>
                              <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                                <h2 class="title">Boys</h2>
                                <ul class="links">
                                  <li><a href="#">Toys & Games</a></li>
                                </ul>
                              </div>
                              <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                                <h2 class="title">Girls</h2>
                                <ul class="links">
                                  <li><a href="#">Sandals </a></li>
                                </ul>
                              </div>
                              <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image"> <img class="img-responsive" src="{{asset('contents/website')}}/assets/images/banners/top-menu-banner.jpg" alt=""> </div>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </li>
                    @endforeach
                    <li class="dropdown"> <a href="contact.html">Kids & Girls</a> </li>
                    <li class="dropdown  navbar-right special-menu"> <a href="#">Todays offer</a> </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
      @yield('content')
    <footer id="footer" class="footer color-bg">
      <div class="footer-bottom">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-3">
              <div class="module-heading">
                <h4 class="module-title">Contact Us</h4>
              </div>
              <div class="module-body">
                <ul class="toggle-footer" style="">
                  <li class="media">
                    <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i> </span> </div>
                    <div class="media-body">
                      <p>{{$coninfo->ci_add1}}</p>
                    </div>
                  </li>
                  <li class="media">
                    <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i class="fa fa-mobile fa-stack-1x fa-inverse"></i> </span> </div>
                    <div class="media-body">
                      <p>
                        <a href="tel:{{$coninfo->ci_phone1}}">{{$coninfo->ci_phone1}}</a>
                        <a href="tel:{{$coninfo->ci_phone2}}">{{$coninfo->ci_phone2}}</a>
                      </p>
                    </div>
                  </li>
                  <li class="media">
                    <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i class="fa fa-envelope fa-stack-1x fa-inverse"></i> </span> </div>
                    <div class="media-body">
                      <span>
                        <a href="mailto:{{$coninfo->ci_email1}}">{{$coninfo->ci_email1}}</a>
                      </span>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
              <div class="module-heading">
                <h4 class="module-title">Customer Service</h4>
              </div>
              <div class="module-body">
                <ul class='list-unstyled'>
                  <li class="first"><a href="#" title="Contact us">My Account</a></li>
                  <li><a href="#" title="About us">Order History</a></li>
                  <li><a href="#" title="faq">FAQ</a></li>
                  <li><a href="#" title="Popular Searches">Specials</a></li>
                  <li class="last"><a href="#" title="Where is my order?">Help Center</a></li>
                </ul>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
              <div class="module-heading">
                <h4 class="module-title">Corporation</h4>
              </div>
              <div class="module-body">
                <ul class='list-unstyled'>
                  <li class="first"><a title="Your Account" href="#">About us</a></li>
                  <li><a title="Information" href="#">Customer Service</a></li>
                  <li><a title="Addresses" href="#">Company</a></li>
                  <li><a title="Addresses" href="#">Investor Relations</a></li>
                  <li class="last"><a title="Orders History" href="#">Advanced Search</a></li>
                </ul>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
              <div class="module-heading">
                <h4 class="module-title">Why Choose Us</h4>
              </div>
              <div class="module-body">
                <ul class='list-unstyled'>
                  <li class="first"><a href="#" title="About us">Shopping Guide</a></li>
                  <li><a href="#" title="Blog">Blog</a></li>
                  <li><a href="#" title="Company">Company</a></li>
                  <li><a href="#" title="Investor Relations">Investor Relations</a></li>
                  <li class=" last"><a href="contact-us.html" title="Suppliers">Contact Us</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="copyright-bar">
        <div class="container">
          <div class="col-xs-12 col-sm-6 no-padding social">
            <ul class="link">
              @if($social->sm_facebook!='')
              <li class="fb pull-left"><a target="_blank" rel="nofollow" href="{{$social->sm_facebook}}" title="Facebook"></a></li>
              @endif
              @if($social->sm_twitter!='')
              <li class="tw pull-left"><a target="_blank" rel="nofollow" href="{{$social->sm_twitter}}" title="Twitter"></a></li>
              @endif
              @if($social->sm_google!='')
              <li class="googleplus pull-left"><a target="_blank" rel="nofollow" href="{{$social->sm_google}}" title="GooglePlus"></a></li>
              @endif
              @if($social->sm_rss!='')
              <li class="rss pull-left"><a target="_blank" rel="nofollow" href="{{$social->sm_rss}}" title="RSS"></a></li>
              @endif
              @if($social->sm_pinterest!='')
              <li class="pintrest pull-left"><a target="_blank" rel="nofollow" href="{{$social->sm_pinterest}}" title="PInterest"></a></li>
              @endif
              @if($social->sm_linkedin!='')
              <li class="linkedin pull-left"><a target="_blank" rel="nofollow" href="{{$social->sm_linkedin}}" title="Linkedin"></a></li>
              @endif
              @if($social->sm_youtube!='')
              <li class="youtube pull-left"><a target="_blank" rel="nofollow" href="{{$social->sm_youtube}}" title="Youtube"></a></li>
              @endif
            </ul>
          </div>
          <div class="col-xs-12 col-sm-6 no-padding">
            <div class="clearfix payment-methods">
              <ul>
                <li><img src="{{asset('contents/website')}}/assets/images/payments/1.png" alt=""></li>
                <li><img src="{{asset('contents/website')}}/assets/images/payments/2.png" alt=""></li>
                <li><img src="{{asset('contents/website')}}/assets/images/payments/3.png" alt=""></li>
                <li><img src="{{asset('contents/website')}}/assets/images/payments/4.png" alt=""></li>
                <li><img src="{{asset('contents/website')}}/assets/images/payments/5.png" alt=""></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <script src="{{asset('contents/website')}}/assets/js/jquery-1.11.1.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/bootstrap.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/bootstrap-hover-dropdown.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/owl.carousel.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/echo.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/jquery.easing-1.3.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/bootstrap-slider.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="{{asset('contents/website')}}/assets/js/lightbox.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/bootstrap-select.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/wow.min.js"></script>
    <script src="{{asset('contents/website')}}/assets/js/scripts.js"></script>

    @stack('js')
  </body>
</html>
