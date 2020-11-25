<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Image;
class Banner extends Model
{

    protected $fillable =['ban_id', 'ban_title','ban_url','ban_image', 'ban_slug', 'ban_status'];



    public function setBanImageAttribute($value)
    {
        $this->attributes['ban_image'] = $value;
        if($value != ''){
            $image_name= hexdec(uniqid()).'.'.$value->getClientOriginalExtension();
            Image::make($value)->resize(1349,562)->save('uploads/banner/'.$image_name);
            return $this->attributes['ban_image'] ='uploads/banner/'.$image_name;
        }

    }
}
