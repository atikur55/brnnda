<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Childcategory extends Model
{
    protected $fillable = ['subcategory_id','name','slug'];
    public $timestamps = false;

    public function subcategory()
    {
    	return $this->belongsTo('App\Models\Subcategory');
    }

    public function childs()
    {
    	return $this->hasMany('App\Models\Grandchildcategory')->where('status','=',1);
    }

    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }

    public function setSlugAttribute($value)
    {
        $this->attributes['slug'] = str_replace(' ', '-', $value);
    }

    public function attributes() {
        return $this->morphMany('App\Models\Attribute', 'attributable');
    }
}
