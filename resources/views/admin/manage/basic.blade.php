@extends('layouts.admin')
@section('content')
<div class="card">
  <form method="post" action="{{url('admin/manage/basic/update')}}" enctype="multipart/form-data">
    @csrf
    <div class="card-header">
        <div class="row">
            <div class="col-md-8 card_top_title">
                <i class="fa fa-gg-circle"></i> Update Basic Information
            </div>
            <div class="col-md-4 text-right card_top_btn">
                <a href="{{url('admin/manage/social/media')}}" class="btn btn-sm btn-info" ><i class="fa fa-th"></i> Social Media</a>
            </div>
        </div>
    </div>
    <div class="card-body m-t-20">
      @if(Session::has('success'))
      <script type="text/javascript">
          swal({title: "Success!", text: "Successfully update basic information!", icon: "success", button: "OK", timer:5000,});
      </script>
      @endif
      @if(Session::has('error'))
      <script type="text/javascript">
          swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
      </script>
      @endif
      <div class="form-group row custom_form_group {{ $errors->has('title') ? ' has-error' : '' }}">
        <label class="col-md-3 col-form-label custom_label">Website Title:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="title" value="{{$data->basic_title}}">
          @if ($errors->has('title'))
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('title') }}</strong>
              </span>
          @endif
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Website Tagline:</label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="subtitle" value="{{$data->basic_subtitle}}">
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Website Logo:</label>
        <div class="col-sm-3">
          <input type="file" name="pic">
        </div>
        <div class="col-sm-2">
            @if($data->basic_logo!='')
              <img class="img-fluid img-thumbnail" src="{{asset('uploads/'.$data->basic_logo)}}" alt="logo"/>
            @else
              <img class="img-fluid img-thumbnail" src="{{asset('uploads/noimg.png')}}" alt="logo"/>
            @endif
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Website Favicon:</label>
        <div class="col-sm-3">
          <input type="file" name="favicon">
        </div>
        <div class="col-sm-2">
            @if($data->basic_favicon!='')
              <img class="img-fluid img-thumbnail favicon_img" src="{{asset('uploads/'.$data->basic_favicon)}}" alt="faviocn"/>
            @else
              <img class="img-fluid img-thumbnail favicon_img" src="{{asset('uploads/noimg.png')}}" alt="favicon"/>
            @endif
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Website Footer Logo:</label>
        <div class="col-sm-3">
          <input type="file" name="flogo">
        </div>
        <div class="col-sm-2">
            @if($data->basic_flogo!='')
              <img class="img-fluid img-thumbnail" src="{{asset('uploads/'.$data->basic_flogo)}}" alt="flogo"/>
            @else
              <img class="img-fluid img-thumbnail" src="{{asset('uploads/noimg.png')}}" alt="flogo"/>
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
