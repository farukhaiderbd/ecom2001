@extends('layouts.admin')
@section('content')
<div class="card">
  <div class="card-header">
      <div class="row">
          <div class="col-md-8 card_top_title">
              <i class="fa fa-gg-circle"></i> All Banner Information
          </div>
          <div class="col-md-4 text-right card_top_btn">
              <a href="{{url('admin/banner/add')}}" class="btn btn-sm btn-info"><i class="fa fa-plus-circle"></i> Add Banner</a>
          </div>
      </div>
  </div>
  <div class="card-body m-t-20">
      @if(Session::has('soft'))
      <script type="text/javascript">
          swal({title: "Success!", text: "Successfully delete banner information!", icon: "success", button: "OK", timer:5000,});
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
                  <th>Title</th>
                  <th>Subtitle</th>
                  <th>Button</th>
                  <th>URL</th>
                  <th>Image</th>
                  <th>Time</th>
                  <th>Manage</th>
              </tr>
          </thead>
          <tbody>
              @foreach($allBanner as $data)
              <tr>
                  <td>{{$data->ban_title}}</td>
                  <td>{{$data->ban_subtitle}}</td>
                  <td>{{$data->ban_btn}}</td>
                  <td>{{$data->ban_url}}</td>
                  <td>
                      @if($data->ban_image!='')
                        <img height="50" width="100" src="{{asset('uploads/banner/'.$data->ban_image)}}" alt="banner"/>
                      @else
                        <img height="50" width="100" src="{{asset('uploads/noimg.png')}}" alt="banner"/>
                      @endif
                  </td>
                  <td>{{$data->created_at->format('d M Y | h:i:s A')}}</td>
                  <td>
                      <a class="text-secondary" href="{{url('admin/banner/view/'.$data->ban_slug)}}"><i class="fa fa-plus-square fa-lg"></i></a>
                      <a class="text-info" href="{{url('admin/banner/edit/'.$data->ban_slug)}}"><i class="fa fa-pencil-square fa-lg"></i></a>
                      <a class="text-danger" id="softDelete" href="#" data-toggle="modal" data-target="#softDelModal" data-id="{{$data->ban_id}}"><i class="fa fa-trash fa-lg"></i></a>
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
        <form method="post" action="{{url('admin/banner/softdelete')}}">
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
