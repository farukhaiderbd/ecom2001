<div class="side-menu animate-dropdown outer-bottom-xs">
  <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>
  <nav class="yamm megamenu-horizontal">
    @php
        $allMainCate=App\MainCategory::where('mcate_status',1)->where('mcate_side_menu',1)->orderBy('mcate_position','ASC')->get();
    @endphp
    <ul class="nav">
      @foreach($allMainCate as $mc)
      <li class="dropdown menu-item"> <a href="{{ route('category_product',$mc->mcate_slug) }}" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa {{$mc->mcate_icon}}" aria-hidden="true"></i>{{$mc->mcate_name}}</a>
        @php
            $mID=$mc->mcate_id;
            $allProdCate=App\ProductCategory::where('pcate_status',1)->where('mcate_id',$mID)->orderBy('pcate_position','ASC')->get();
            $totalProdCate=App\ProductCategory::where('pcate_status',1)->where('mcate_id',$mID)->orderBy('pcate_position','ASC')->count();
        @endphp
        @if($totalProdCate>='1')
        <ul class="dropdown-menu mega-menu">
          <li class="yamm-content">
            <div class="row">
              <div class="col-xs-12 col-sm-12 col-lg-4">
                <ul>
                  @foreach($allProdCate as $pdc)
                  <li><a href="#">{{$pdc->pcate_name}}</a></li>
                  @endforeach
                </ul>
              </div>
              <div class="col-xs-12 col-sm-12 col-lg-4">
                <ul>
                  <li><a href="#">Product Category</a></li>
                </ul>
              </div>
              <div class="dropdown-banner-holder"> <a href="#"><img alt="" src="{{asset('contents/website')}}/assets/images/banners/banner-side.png" /></a> </div>
            </div>
          </li>
        </ul>
        @endif
      </li>
      @endforeach
    </ul>
  </nav>
</div>
