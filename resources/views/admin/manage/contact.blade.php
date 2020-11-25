@extends('layouts.admin')
@section('content')
<div class="card">
  <form method="post" action="{{url('admin/manage/contact')}}" enctype="multipart/form-data">
    @csrf
    <div class="card-header">
        <div class="row">
            <div class="col-md-8 card_top_title">
                <i class="fa fa-gg-circle"></i> Update Contact Information
            </div>
            <div class="col-md-4 text-right card_top_btn">
                <a href="{{url('admin/manage/social/media')}}" class="btn btn-sm btn-info" ><i class="fa fa-th"></i> Social Media</a>
            </div>
        </div>
    </div>
    <div class="card-body m-t-20">
      @if(Session::has('success'))
      <script type="text/javascript">
          swal({title: "Success!", text: "Successfully update contact information!", icon: "success", button: "OK", timer:5000,});
      </script>
      @endif
      @if(Session::has('error'))
      <script type="text/javascript">
          swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
      </script>
      @endif
      <div class="row">
        <div class="col-md-6">
          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-phone-square"></i></div>
            </div>
            <input type="text" class="form-control" name="phone1" value="{{$data->ci_phone1}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-phone-square"></i></div>
            </div>
            <input type="text" class="form-control" name="phone2" value="{{$data->ci_phone2}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-phone-square"></i></div>
            </div>
            <input type="text" class="form-control" name="phone3" value="{{$data->ci_phone3}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-phone-square"></i></div>
            </div>
            <input type="text" class="form-control" name="phone4" value="{{$data->ci_phone4}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-home"></i></div>
            </div>
            <textarea class="form-control" name="add1" rows="2">{{$data->ci_add1}}</textarea>
          </div>
          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-home"></i></div>
            </div>
            <textarea class="form-control" name="add2" rows="2">{{$data->ci_add2}}</textarea>
          </div>
        </div>
        <div class="col-md-6">
          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-envelope"></i></div>
            </div>
            <input type="text" class="form-control" name="email1" value="{{$data->ci_email1}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa fa-envelope"></i></div>
            </div>
            <input type="text" class="form-control" name="email2" value="{{$data->ci_email2}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa fa-envelope"></i></div>
            </div>
            <input type="text" class="form-control" name="email3" value="{{$data->ci_email3}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa fa-envelope"></i></div>
            </div>
            <input type="text" class="form-control" name="email4" value="{{$data->ci_email4}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-home"></i></div>
            </div>
            <textarea class="form-control" name="add3" rows="2">{{$data->ci_add3}}</textarea>
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-home"></i></div>
            </div>
            <textarea class="form-control" name="add4" rows="2">{{$data->ci_add4}}</textarea>
          </div>
        </div>
      </div>
    </div>
    <div class="card-footer text-center">
        <button type="submit" class="btn btn-md btn-info">UPDATE</button>
    </div>
  </form>
</div>
@endsection
