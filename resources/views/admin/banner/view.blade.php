@extends('layouts.admin')
@section('content')
<div class="card">
  <div class="card-header">
      <div class="row">
          <div class="col-md-8 card_top_title">
              <i class="fa fa-gg-circle"></i> View Banner Information
          </div>
          <div class="col-md-4 text-right card_top_btn">
              <a href="{{url('admin/banner')}}" class="btn btn-sm btn-info"><i class="fa fa-plus-circle"></i> All Banner</a>
          </div>
      </div>
  </div>
  <div class="card-body m-t-20">
      @if(Session::has('success'))
      <script type="text/javascript">
          swal({title: "Success!", text: "Successfully update banner information!", icon: "success", button: "OK", timer:5000,});
      </script>
      @endif
      <div class="row">
          <div class="col-md-2"></div>
          <div class="col-md-8">
            <table class="table table-hover table-striped table-bordered custom_view_table">
                <tr>
                    <td>Banner Title</td>
                    <td>:</td>
                    <td>{{$data->ban_title}}</td>
                </tr>
                <tr>
                    <td>Banner Subtitle</td>
                    <td>:</td>
                    <td>{{$data->ban_subtitle}}</td>
                </tr>
                <tr>
                    <td>Banner Button</td>
                    <td>:</td>
                    <td>{{$data->ban_btn}}</td>
                </tr>
                <tr>
                    <td>Banner URL</td>
                    <td>:</td>
                    <td>{{$data->ban_url}}</td>
                </tr>
                <tr>
                    <td>Banner Image</td>
                    <td>:</td>
                    <td>
                      @if($data->ban_image!='')
                        <img class="img-fluid img-thumbnail" src="{{asset('uploads/'.$data->ban_image)}}" alt="banner"/>
                      @else
                        <img class="img-fluid img-thumbnail" src="{{asset('uploads/noimg.png')}}" alt="banner"/>
                      @endif
                    </td>
                </tr>
            </table>
          </div>
          <div class="col-md-2"></div>

      </div>
  </div>
  <div class="card-footer">
      <a href="#" class="btn btn-sm btn-info">Print<a>
      <a href="#" class="btn btn-sm btn-primary">Excel<a>
      <a href="#" class="btn btn-sm btn-warning">CSV<a>
  </div>
</div>
@endsection
