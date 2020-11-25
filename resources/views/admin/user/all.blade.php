@extends('layouts.admin')
@section('content')
<div class="card">
  <div class="card-header">
      <div class="row">
          <div class="col-md-8 card_top_title">
              <i class="fa fa-gg-circle"></i> All User Information
          </div>
          <div class="col-md-4 text-right card_top_btn">
              <a href="{{url('admin/user/add')}}" class="btn btn-sm btn-info"><i class="fa fa-plus-circle"></i> Add User</a>
          </div>
      </div>
  </div>
  <div class="card-body m-t-20">
      @if(Session::has('success'))
      <script type="text/javascript">
          swal({title: "Success!", text: "Successfully update user information!", icon: "success", button: "OK", timer:5000,});
      </script>
      @endif
      <table class="table table-bordered table-striped color-table dark-table">
          <thead>
              <tr>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>User Role</th>
                  <th>Photo</th>
                  <th>Manage</th>
              </tr>
          </thead>
          <tbody>
              @foreach($allUser as $data)
              <tr>
                  <td>{{$data->name}}</td>
                  <td>{{$data->email}}</td>
                  <td>{{$data->phone}}</td>
                  <td>{{$data->userRole->role_name}}</td>
                  <td>
                      @if($data->photo!='')
                      <img height="40" src="{{asset('uploads/'.$data->photo)}}" alt="{{$data->name}}"/>
                      @else
                      <img height="40" src="{{asset('uploads/man-avatar.png')}}" alt="{{$data->name}}"/>
                      @endif
                  </td>
                  <td>
                      <a class="text-secondary" href="#"><i class="fa fa-plus-square fa-lg"></i></a>
                      <a class="text-info" href="{{url('admin/user/edit/'.$data->id)}}"><i class="fa fa-pencil-square fa-lg"></i></a>
                      <a class="text-danger" href="#"><i class="fa fa-trash fa-lg"></i></a>
                  </td>
              </tr>
              @endforeach
          </tbody>
      </table>
  </div>
  <div class="card-footer">
      <a href="#" class="btn btn-sm btn-info">Print<a>
      <a href="#" class="btn btn-sm btn-primary">Excel<a>
      <a href="#" class="btn btn-sm btn-warning">CSV<a>
  </div>
</div>
@endsection
