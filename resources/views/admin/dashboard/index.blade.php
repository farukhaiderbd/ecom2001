@extends('layouts.admin')
@section('content')
<div class="card-group">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <h2 class="m-b-0"><i class="mdi mdi-account text-dark"></i></h2>
                    @php
                        $totalUser=App\User::count();
                    @endphp
                    <h3 class="">
                      @if($totalUser<=9)
                        0{{$totalUser}}
                      @else
                        {{$totalUser}}
                      @endif
                    </h3>
                    <h6 class="card-subtitle">Users</h6>
                </div>
            </div>
        </div>
    </div>
    <!-- Column -->
    <!-- Column -->
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <h2 class="m-b-0"><i class="mdi mdi-burst-mode text-dark"></i></h2>
                    @php
                        $totalBan=App\Banner::where('ban_status',1)->count()
                    @endphp
                    <h3 class="">{{$totalBan}}</h3>
                    <h6 class="card-subtitle">Total Banner</h6>
                </div>
            </div>
        </div>
    </div>
    <!-- Column -->
    <!-- Column -->
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <h2 class="m-b-0"><i class="mdi mdi-wallet text-dark"></i></h2>
                    @php
                        //$totalAmount=App\Banner::where('ban_status',1)->sum('ban_amount');
                    @endphp
                    <h3 class="">000</h3>
                    <h6 class="card-subtitle">Total Cost</h6>
                </div>
            </div>
        </div>
    </div>
    <!-- Column -->
    <!-- Column -->
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <h2 class="m-b-0"><i class="mdi mdi-buffer text-dark"></i></h2>
                    <h3 class="">000</h3>
                    <h6 class="card-subtitle">Total Earnings</h6>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
