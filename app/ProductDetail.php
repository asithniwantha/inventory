<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class ProductDetail extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_id', 'sub_model', 'product_description', 'alert_quantity', 'image', 'warranty', 'selling_price',
    ];

    protected $attributes = ['image' => null];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function stock()
    {
        return $this->hasMany(Stock::class);
    }

    public function saleDetail()
    {
        return $this->hasMany(SaleDetail::class);
    }

    public function purchaseDetail()
    {
        return $this->hasMany(PurchaseDetail::class);
    }

    public function transaction()
    {
        return $this->morphMany(Transaction::class, 'product_detail_id');
    }

    public static function isExistProductDetail($product_id, $sub_model)
    {
        $query = ProductDetail::where('product_id', $product_id)->where('sub_model', $sub_model)->get();
        if (Arr::exists($query, 0)) {
            return true;
        }
        return false;
    }
}