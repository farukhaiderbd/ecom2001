<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Basic;
use App\SocialMedia;
use App\ContactInformation;
use Carbon\Carbon;
use Session;
use Image;

class ManageController extends Controller{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){

    }

    public function basic(){
        $data=Basic::where('basic_status',1)->where('basic_id',1)->firstOrFail();
        return view('admin.manage.basic',compact('data'));
    }

    public function update_basic(Request $request){
        $this->validate($request,[

        ],[

        ]);

        $update=Basic::where('basic_id',1)->update([
            'basic_title'=>$request['title'],
            'basic_subtitle'=>$request['subtitle'],
        ]);

        if($request->hasFile('pic')){
          $image=$request->file('pic');
          $imageName='logo_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->save('uploads/'.$imageName);

          Basic::where('basic_id',1)->update([
              'basic_logo'=>$imageName
          ]);
        }

        if($request->hasFile('favicon')){
          $image=$request->file('favicon');
          $imageName='favicon_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->resize(40,40)->save('uploads/'.$imageName);

          Basic::where('basic_id',1)->update([
              'basic_favicon'=>$imageName
          ]);
        }

        if($request->hasFile('flogo')){
          $image=$request->file('flogo');
          $imageName='flogo_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->save('uploads/'.$imageName);

          Basic::where('basic_id',1)->update([
              'basic_flogo'=>$imageName
          ]);
        }


        if($update){
            Session::flash('success','value');
            return redirect('admin/manage/basic');
        }else{
            Session::flash('error','value');
            return redirect('admin/manage/basic');
        }
    }

    public function social(){
        $data=SocialMedia::where('sm_status',1)->where('sm_id',1)->firstOrFail();
        return view('admin.manage.social',compact('data'));
    }

    public function update_social(Request $request){
        $update=SocialMedia::where('sm_id',1)->update([
            'sm_facebook'=>$request['facebook'],
            'sm_twitter'=>$request['twitter'],
            'sm_linkedin'=>$request['linkedin'],
            'sm_youtube'=>$request['youtube'],
            'sm_google'=>$request['google'],
            'sm_pinterest'=>$request['pinterest'],
            'sm_instagram'=>$request['instagram'],
            'sm_skype'=>$request['skype'],
            'sm_vimeo'=>$request['vimeo'],
            'sm_rss'=>$request['rss'],
            'updated_at'=>Carbon::now()->toDateTimeString()
        ]);

        if($update){
            Session::flash('success','value');
            return redirect('admin/manage/social/media');
        }else{
            Session::flash('error','value');
            return redirect('admin/manage/social/media');
        }
    }

    public function contact(){
        $data=ContactInformation::where('ci_status',1)->where('id',1)->firstOrFail();
        return view('admin.manage.contact',compact('data'));
    }

    public function update_contact(Request $request){
        $update=ContactInformation::where('id',1)->update([
            'ci_phone1'=>$request['phone1'],
            'ci_phone2'=>$request['phone2'],
            'ci_phone3'=>$request['phone3'],
            'ci_phone4'=>$request['phone4'],
            'ci_email1'=>$request['email1'],
            'ci_email2'=>$request['email2'],
            'ci_email3'=>$request['email3'],
            'ci_email4'=>$request['email4'],
            'ci_add1'=>$request['add1'],
            'ci_add2'=>$request['add2'],
            'ci_add3'=>$request['add3'],
            'ci_add4'=>$request['add4'],
            'updated_at'=>Carbon::now()->toDateTimeString()
        ]);

        if($update){
            Session::flash('success','value');
            return redirect('admin/manage/contact');
        }else{
            Session::flash('error','value');
            return redirect('admin/manage/contact');
        }
    }

    public function copyright(){

    }

    public function update_copyright(){

    }
}
