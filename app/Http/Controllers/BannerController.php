<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Banner;
use Carbon\Carbon;
use Session;
use Image;
class BannerController extends Controller{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        $allBanner=Banner::where('ban_status',1)->orderBy('ban_id','DESC')->get();
        return view('admin.banner.all',compact('allBanner'));
    }

    public function add(){
        return view('admin.banner.add');
    }

    public function edit($slug){
        $data=Banner::where('ban_status',1)->where('ban_slug',$slug)->firstOrFail();
        return view('admin.banner.edit',compact('data'));
    }

    public function view($slug){
        $data=Banner::where('ban_status',1)->where('ban_slug',$slug)->firstOrFail();
        return view('admin.banner.view',compact('data'));
    }

    public function insert(Request $request){


        $this->validate($request,[
          'title'=>'required|max:100',
        ],[
          'title.required'=>'Please enter banner title!',
        ]);
        $slug=uniqid('B20');
        $insert=Banner::insertGetId([
            'ban_title'=>$request['title'],
            'ban_subtitle'=>$request['subtitle'],
            'ban_btn'=>$request['btn'],
            'ban_url'=>$request['url'],
            'ban_slug'=>$slug,
            'created_at'=>Carbon::now('Asia/Dhaka')->toDateTimeString(),
        ]);

        if($request->hasFile('pic')){
          $image=$request->file('pic');
          $imageName='banner_'.$insert.'_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->save('uploads/banner/'.$imageName);

          Banner::where('ban_id',$insert)->update([
              'ban_image'=>$imageName
          ]);
        }

        if($insert){

            // Session::flash('success');

            $notification = array(
            'messege'   =>  'Banner Created successfully',
            'alert-type'=>  'success'
            );
            return redirect('admin/banner/add')->with(['messege'   =>  'Banner Created successfully','alert-type'=>  'success']);
        }else{
            return redirect('admin/banner/add');
            Session::flash('error');
        }
    }

    public function update(Request $request){
        $this->validate($request,[
          'title'=>'required|max:100',
        ],[
          'title.required'=>'Please enter banner title!',
        ]);
        $id=$request['id'];
        $slug=$request['slug'];
        $update=Banner::where('ban_id',$id)->update([
            'ban_title'=>$request['title'],
            'ban_subtitle'=>$request['subtitle'],
            'ban_btn'=>$request['btn'],
            'ban_url'=>$request['url'],
            'updated_at'=>Carbon::now('Asia/Dhaka')->toDateTimeString(),
        ]);

        if($request->hasFile('pic')){
          $image=$request->file('pic');
          $imageName='banner_'.$id.'_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->resize(300,200)->save('uploads/banner/'.$imageName);

          Banner::where('ban_id',$id)->update([
              'ban_image'=>$imageName
          ]);
        }

        if($update){
            Session::flash('success');
            return redirect('admin/banner/view/'.$slug);
        }else{
            return redirect('admin/banner/edit/'.$slug);
            Session::flash('error');
        }
    }

    public function softdelete(){
        $id=$_POST['modal_id'];
        $soft=Banner::where('ban_status',1)->where('ban_id',$id)->update([
            'ban_status'=>'0',
        ]);

        if($soft){
             Session::flash('soft');
             return redirect('admin/banner');
        }else{
            Session::flash('error');
            return redirect('admin/banner');
        }
    }

    public function restore(){

    }

    public function delete(){

    }

}
