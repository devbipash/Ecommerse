<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Shop extends Model
{
	protected $fillable=['name','description'];
    public function user()
{
    return $this->belongsTo(User::class,'user_id');
}


public function products()

{
    return $this->hasMany(Product::class,'shop_id');
}
}
