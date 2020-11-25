@extends('layouts.admin')
@section('content')
<div class="card">
  <form method="post" action="{{url('admin/banner/update')}}" enctype="multipart/form-data">
    @csrf
    <div class="card-header">
        <div class="row">
            <div class="col-md-8 card_top_title">
                <i class="fa fa-gg-circle"></i> Update Banner Information
            </div>
            <div class="col-md-4 text-right card_top_btn">
                <a href="{{url('admin/banner')}}" class="btn btn-sm btn-info" ><i class="fa fa-th"></i> All Banner</a>
            </div>
        </div>
    </div>
    <div class="card-body m-t-20">
      @if(Session::has('error'))
      <script type="text/javascript">
          swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
      </script>
      @endif
      <div class="form-group row custom_form_group {{ $errors->has('title') ? ' has-error' : '' }}">
        <label class="col-md-3 col-form-label custom_label">Banner Title:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="hidden" name="id" value="{{$data->ban_id}}">
          <input type="hidden" name="slug" value="{{$data->ban_slug}}">
          <input type="text" class="form-control" name="title" value="{{$data->ban_title}}">
          @if ($errors->has('title'))
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('title') }}</strong>
              </span>
          @endif
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Banner Subtitle:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="subtitle" value="{{$data->ban_subtitle}}">
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Banner Button:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="btn" value="{{$data->ban_btn}}">
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Banner URL:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="url" value="{{$data->ban_url}}">
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Banner Image:<span class="req_star">*</span></label>
        <div class="col-sm-3">
          <input type="file" name="pic">
        </div>
        <div class="col-sm-2">
            @if($data->ban_image!='')
              <img class="img-fluid img-thumbnail" src="{{asset('uploads/'.$data->ban_image)}}" alt="banner"/>
            @else
              <img class="img-fluid img-thumbnail" src="{{asset('uploads/noimg.png')}}" alt="banner"/>
            @endif
        </div>
      </div>
    </div>
    <div class="card-footer text-center">
        <button type="submit" class="btn btn-md btn-info">UPDATE</button>
    </div>
  </form>
</div>
@endsection
