@extends('layouts.admin')
@section('content')
<div class="card">
  <form method="post" action="{{url('admin/user/update')}}" enctype="multipart/form-data">
    @csrf
    <div class="card-header">
        <div class="row">
            <div class="col-md-8 card_top_title">
                <i class="fa fa-gg-circle"></i> Update User Information
            </div>
            <div class="col-md-4 text-right card_top_btn">
                <a href="{{url('admin/user')}}" class="btn btn-sm btn-info" ><i class="fa fa-th"></i> All User</a>
            </div>
        </div>
    </div>
    <div class="card-body m-t-20">
      @if(Session::has('error'))
      <script type="text/javascript">
          swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
      </script>
      @endif
      <div class="form-group row custom_form_group{{ $errors->has('name') ? ' has-error' : '' }}">
        <label class="col-md-3 col-form-label custom_label">Name:<span class="req_star">*</span></label>
        <div class="col-sm-7">
          <input type="hidden" name="id" value="{{$data->id}}"/>
          <input type="text" class="form-control" name="name" value="{{$data->name}}">
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
          <input type="text" class="form-control" name="email" value="{{$data->email}}">
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
          <input type="text" class="form-control" name="phone" value="{{$data->phone}}">
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
              <option value="{{$urole->role_id}}" @if($data->role==$urole->role_id) selected  @endif>{{$urole->role_name}}</option>
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
        <div class="col-md-2">
            @if($data->photo!='')
            <img height="70" src="{{asset('uploads/'.$data->photo)}}" alt="{{$data->name}}"/>
            @else
            <img height="70" src="{{asset('uploads/man-avatar.png')}}" alt="{{$data->name}}"/>
            @endif
        </div>
      </div>
    </div>
    <div class="card-footer text-center">
        <button type="submit" class="btn btn-md btn-info">REGITRATION</button>
    </div>
  </form>
</div>
@endsection
