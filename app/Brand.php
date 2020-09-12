<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'brand_name',
    ];
    public function product()
    {
        return $this->hasMany(Product::class);
    }
    public static function getId($brandName)
    {
        $query = Brand::where('brand_name', $brandName)->first();
        if ($query) {
            return $query->id;
        }
        return null;
    }
}