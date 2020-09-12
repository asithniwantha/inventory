<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PurchaseDetail extends Model
{
    public function purchase()
    {
        return $this->belongsTo(Purchase::class);
    }

    public function productDetail()
    {
        return $this->belongsTo(ProductDetail::class);
    }

    public function transaction()
    {
        return $this->morphMany(Transaction::class, 's_or_p_id');
    }
}
