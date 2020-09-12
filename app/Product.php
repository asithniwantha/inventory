<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Product extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_name_id', 'category', 'brand_id', 'model', 'sku',
    ];

    public function productDetail()
    {
        return $this->hasMany(ProductDetail::class);
    }

    public function productName()
    {
        return $this->belongsTo(productName::class);
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public static function getId($productName, $brand, $model)
    {
        $query = Product::where('product_name_id', ProductName::getId($productName))->where('model', $model)->where('brand_id', Brand::getId($brand))->first();
        if ($query) {
            return $query->id;
        }
        return false;
    }

    /**
     * Retrieves the acceptable enum fields for a column
     *
     * @param string $column Column name
     *
     * @return array
     */
    public static function getPossibleEnumValues($column)
    {
        // Create an instance of the model to be able to get the table name
        $instance = new Product();

        // Pulls column string from DB
        $enumStr = DB::select(DB::raw('SHOW COLUMNS FROM ' . $instance->getTable() . ' WHERE Field = "' . $column . '"'))[0]->Type;

        // Parse string
        preg_match_all("/'([^']+)'/", $enumStr, $matches);

        // Return matches
        return isset($matches[1]) ? $matches[1] : [];
    }
}