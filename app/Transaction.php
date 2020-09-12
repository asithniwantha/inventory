<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    public function saleOrPurchaseDetail()
    {
        return $this->morphTo();
    }

    public function productDetail()
    {
        return $this->belongsTo(ProductDetail::class);
    }
}
