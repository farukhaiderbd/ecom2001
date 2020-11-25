@extends('layouts.admin')
@section('content')
<div class="card">
  <form method="post" action="{{url('admin/user/submit')}}" enctype="multipart/form-data">
    @csrf
    <div class="card-header">
        <div class="row">
            <div class="col-md-8 card_top_title">
                <i class="fa fa-gg-circle"></i> User Registration
            </div>
            <div class="col-md-4 text-right card_top_btn">
                <a href="{{url('admin/user')}}" class="btn btn-sm btn-info" ><i class="fa fa-th"></i> All User</a>
            </div>
        </div>
    </div>
    <div class="card-body m-t-20">
      @if(Session::has('success'))
      <script type="text/javascript">
          swal({title: "Success!", text: "User registration success!", icon: "success", button: "OK", timer:5000,});
      </script>
      @endif
      @if(Session::has('error'))
      <script type="text/javascript">
          swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
      </script>
      @endif
      <div class="form-group row custom_form_group{{ $errors->has('name') ? ' has-error' : '' }}">
        <label class="col-md-3 col-form-label custom_label">Name:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="name" value="{{old('name')}}">
          @if ($errors->has('name'))
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('name') }}</strong>
              </span>
          @endif
        </div>
      </div>
      <div class="form-group row custom_form_group{{ $errors->has('email') ? ' has-error' : '' }}">
        <label class="col-md-3 col-form-label custom_label">Email:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="email" value="{{old('email')}}">
          @if ($errors->has('email'))
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('email') }}</strong>
              </span>
          @endif
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Phone:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="text" class="form-control" name="phone" value="{{old('phone')}}">
        </div>
      </div>
      <div class="form-group row custom_form_group{{ $errors->has('password') ? ' has-error' : '' }}">
        <label class="col-md-3 col-form-label custom_label">Password:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="password" class="form-control" name="password" value="">
          @if ($errors->has('password'))
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('password') }}</strong>
              </span>
          @endif
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">Confirm-Password:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="password" class="form-control" name="password_confirmation" value="">
        </div>
      </div>
      <div class="form-group row custom_form_group{{ $errors->has('email') ? ' has-error' : '' }}">
        <label class="col-md-3 col-form-label custom_label">User Role:<span class="req_star">*</span></label>
        <div class="col-sm-4">
          @php
              $allUrole=App\UserRole::where('role_status',1)->orderBy('role_id','ASC')->get();
          @endphp
          <select class="form-control" name="role">
              <option value="">Select User Role</option>
              @foreach($allUrole as $urole)
              <option value="{{$urole->role_id}}">{{$urole->role_name}}</option>
              @endforeach
          </select>
          @if ($errors->has('email'))
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('email') }}</strong>
              </span>
          @endif
        </div>
      </div>
      <div class="form-group row custom_form_group">
        <label class="col-md-3 col-form-label custom_label">User Photo:<span class="req_star">*</span></label>
        <div class="col-sm-4">
          <input type="file" name="pic">
        </div>
      </div>
    </div>
    <div class="card-footer text-center">
        <button type="submit" class="btn btn-md btn-info">REGITRATION</button>
    </div>
  </form>
</div>
@endsection
