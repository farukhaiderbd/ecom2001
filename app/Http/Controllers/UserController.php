<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\User;
use Carbon\Carbon;
use Session;
use Image;

class UserController extends Controller{
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('superadmin');
    }

    public function index(){
        $allUser=User::orderBy('id','DESC')->get();
        return view('admin.user.all',compact('allUser'));
    }

    public function add(){
        return view('admin.user.add');
    }

    public function edit($id){
        $data=User::where('id',$id)->firstOrFail();
        return view('admin.user.edit',compact('data'));
    }

    public function insert(Request $request){

        // dd($request->all());

        $this->validate($request,[
          'name'=>'required|string|max:255',
          'email'=>'required|string|max:255|email|unique:users',
          'password'=>'required|string|min:8|confirmed',
        ],[
          'name.required'=>'Please enter your name!',
          'email.required'=>'Please enter email address!',
          'password.required'=>'Please enter password!',
        ]);

        $insert =User::insertGetId([
            'name'=>$request['name'],
            'email'=>$request['email'],
            'phone'=>$request['phone'],
            'password'=>Hash::make($request['password']),
            'role'=>$request['role'],
            'created_at'=>Carbon::now()->toDateTimeString(),
        ]);



        if($request->hasFile('pic')){
          $image=$request->file('pic');
          $imageName='user_'.$insert.'_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->resize(300,200)->save('uploads/user/'.$imageName);

          User::where('id',$insert)->update([
              'photo'=>$imageName
          ]);
        }

        if($insert){
            Session::flash('success');
            return redirect('admin/user/add');
        }else{
           Session::flash('error');
           return redirect('admin/user/add');
        }
    }

    // public function FunctionName()
    // {

    //     User::create([])
    // }
    public function update(Request $request){
        $this->validate($request,[
          'name'=>'required|string|max:255',
          'email'=>'required|string|max:255|email',
        ],[
          'name.required'=>'Please enter your name!',
          'email.required'=>'Please enter email address!',
        ]);

        $id=$request['id'];
        $update=User::where('id',$id)->update([
            'name'=>$request['name'],
            'email'=>$request['email'],
            'phone'=>$request['phone'],
            'role'=>$request['role'],
            'updated_at'=>Carbon::now()->toDateTimeString(),
        ]);

        if($request->hasFile('pic')){
          $image=$request->file('pic');
          $imageName='user_'.$id.'_'.time().'.'.$image->getClientOriginalExtension();
          Image::make($image)->resize(300,200)->save('uploads/'.$imageName);

          User::where('id',$id)->update([
              'photo'=>$imageName
          ]);
        }

        if($update){
            Session::flash('success');
            return redirect('admin/user');
        }else{
           Session::flash('error');
           return redirect('admin/user/edit/'.$id);
        }
    }
}
