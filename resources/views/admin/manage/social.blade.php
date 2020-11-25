@extends('layouts.admin')
@section('content')
<div class="card">
  <form method="post" action="{{url('admin/manage/social/media/update')}}" enctype="multipart/form-data">
    @csrf
    <div class="card-header">
        <div class="row">
            <div class="col-md-8 card_top_title">
                <i class="fa fa-gg-circle"></i> Update Social Media Information
            </div>
            <div class="col-md-4 text-right card_top_btn">
                <a href="{{url('admin/manage/basic')}}" class="btn btn-sm btn-info" ><i class="fa fa-th"></i> Basic Information</a>
            </div>
        </div>
    </div>
    <div class="card-body m-t-20">
      @if(Session::has('success'))
      <script type="text/javascript">
          swal({title: "Success!", text: "Successfully update social media information!", icon: "success", button: "OK", timer:5000,});
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
              <div class="input-group-text"><i class="fa fa-facebook-square"></i></div>
            </div>
            <input type="text" class="form-control" name="facebook" value="{{$data->sm_facebook}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-twitter-square"></i></div>
            </div>
            <input type="text" class="form-control" name="twitter" value="{{$data->sm_twitter}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-linkedin-square"></i></div>
            </div>
            <input type="text" class="form-control" name="linkedin" value="{{$data->sm_linkedin}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-youtube-square"></i></div>
            </div>
            <input type="text" class="form-control" name="youtube" value="{{$data->sm_youtube}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-google"></i></div>
            </div>
            <input type="text" class="form-control" name="google" value="{{$data->sm_google}}">
          </div>
        </div>
        <div class="col-md-6">
          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-pinterest-square"></i></div>
            </div>
            <input type="text" class="form-control" name="pinterest" value="{{$data->sm_pinterest}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-instagram"></i></div>
            </div>
            <input type="text" class="form-control" name="instagram" value="{{$data->sm_instagram}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-skype"></i></div>
            </div>
            <input type="text" class="form-control" name="skype" value="{{$data->sm_skype}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-vimeo-square"></i></div>
            </div>
            <input type="text" class="form-control" name="vimeo" value="{{$data->sm_vimeo}}">
          </div>

          <div class="input-group marbot20">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-rss-square"></i></div>
            </div>
            <input type="text" class="form-control" name="rss" value="{{$data->sm_rss}}">
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
