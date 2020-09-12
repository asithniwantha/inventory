<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductName extends Model
{
    public function product()
    {
        return $this->hasMany(Product::class);
    }

    public static function getId($productName)
    {
        $query = ProductName::where('product_name', $productName)->first();
        if ($query) {
            return $query->id;
        }
        return null;
    }
}
