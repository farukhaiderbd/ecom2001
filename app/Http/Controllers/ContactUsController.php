<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\ContactUs;
use Carbon\Carbon;
use Session;

class ContactUsController extends Controller{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        $all=ContactUs::where('con_status',1)->orderBy('id','DESC')->get();
        return view('admin.contact.all',compact('all'));
    }
}
