<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MainCategory extends Model
{

    protected $primaryKey = 'macte_id';


public function products()
{
   return $this->hasMany('App\Product', 'main_cate_id' ,'mcate_id');
}

}
