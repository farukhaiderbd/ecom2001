@extends('layouts.admin')
@section('content')
<div class="card">
  <div class="card-header">
      <div class="row">
          <div class="col-md-8 card_top_title">
              <i class="fa fa-gg-circle"></i> All Contact Message
          </div>
          <div class="col-md-4 text-right card_top_btn">
              <a href="#" class="btn btn-sm btn-info"><i class="fa fa-plus-circle"></i> Link</a>
          </div>
      </div>
  </div>
  <div class="card-body m-t-20">
      @if(Session::has('soft'))
      <script type="text/javascript">
          swal({title: "Success!", text: "Successfully delete contact information!", icon: "success", button: "OK", timer:5000,});
      </script>
      @endif
      @if(Session::has('error'))
      <script type="text/javascript">
          swal({title: "Opps!",text: "Error! Please try again", icon: "error", button: "OK", timer:5000,});
      </script>
      @endif
      <table id="alltableinfo" class="table table-bordered table-striped color-table dark-table custom_table">
          <thead>
              <tr>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>Subject</th>
                  <th>Message</th>
                  <th>Time</th>
                  <th>Manage</th>
              </tr>
          </thead>
          <tbody>
              @foreach($all as $data)
              <tr>
                  <td>{{$data->con_name}}</td>
                  <td>{{$data->con_email}}</td>
                  <td>{{$data->con_phone}}</td>
                  <td>{{Str::limit($data->con_subject,10)}}</td>
                  <td>{{Str::words($data->con_message,10)}}</td>
                  <td>{{$data->created_at->format('d M Y | h:i:s A')}}</td>
                  <td>
                      <a class="text-secondary" href="{{url('admin/contact/view/'.$data->con_slug)}}"><i class="fa fa-plus-square fa-lg"></i></a>
                      <a class="text-danger" id="softDelete" href="#" data-toggle="modal" data-target="#softDelModal" data-id="{{$data->id}}"><i class="fa fa-trash fa-lg"></i></a>
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
<!--delete modal code start -->
<div id="softDelModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form method="post" action="{{url('admin/contact/softdelete')}}">
          @csrf
          <div class="modal-content">
              <div class="modal-header modal_header_title">
                  <h5><i class="fa fa-gg-circle"></i> Confirm Message</h5>
              </div>
              <div class="modal-body">
                  <input type="hidden" name="modal_id" id="modal_id" />
                  Are you want to sure delete this data?
              </div>
              <div class="modal-footer">
                  <button type="submit" class="btn btn-info waves-effect">Confirm</button>
                  <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Close</button>
              </div>
          </div>
        </form>
    </div>
</div>
@endsection
