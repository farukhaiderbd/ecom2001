@extends('layouts.admin')
@section('content')
<div class="card">
  <form method="post" action="{{url('admin/banner/submit')}}" enctype="multipart/form-data">
    @csrf
    <div class="card-header">
        <div class="row">
            <div class="col-md-8 card_top_title">
                <i class="fa fa-gg-circle"></i> Upload Banner Information
            </div>
            <div class="col-md-4 text-right card_top_btn">
                <a href="{{url('admin/banner')}}" class="btn btn-sm btn-info" ><i class="fa fa-th"></i> All Banner</a>
            </div>
        </div>
    </div>
    <div class="card-body m-t-20">
      @if(Session::has('success'))
      <script type="text/javascript">
          swal({title: "Success!", text: "Successfully upload banner information!", icon: "success", button: "OK", timer:5000,});
      </script>
      @endif
      @if(Session::has('error'))
      <script type="text/javascript">
          swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
      </script>
      @endif
      <div class="form-group row custom_form_group {{ $errors->has('title') ? ' has-error' : '' }}">
        <label class="col-md-3 col-form-label custom_label">Banner Title:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="title" value="{{old('title')}}">
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
          <input type="text" class="form-control" name="subtitle" value="{{old('subtitle')}}">
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Banner Button:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="btn" value="">
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Banner URL:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="url" value="">
        </div>
      </div>
      <div class="form-group row custom_form_group{{ $errors->has('pic') ? ' has-error' : '' }}">
        <label class="col-md-3 col-form-label custom_label">Banner Image:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <div class="input-group">
              <span class="input-group-btn">
                  <span class="btn btn-default btn-file btnu_browse">
                      Browse… <input type="file" name="pic" id="imgInp">
                  </span>
              </span>
              <input type="text" class="form-control" readonly>
          </div>
          @if ($errors->has('pic'))
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('pic') }}</strong>
              </span>
          @endif
          <img id='img-upload'/>
        </div>
    </div>
    </div>
    <div class="card-footer text-center">
        <button type="submit" class="btn btn-md btn-info">UPLOAD</button>
    </div>
  </form>
</div>
@endsection
