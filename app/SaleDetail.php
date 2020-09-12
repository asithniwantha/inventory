<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SaleDetail extends Model
{
    public function sale()
    {
        return $this->belongsTo(Sale::class);
    }

    public function productDetail()
    {
        return  $this->belongsTo(ProductDetail::class);
    }

    public function transaction()
    {
        return $this->morphMany(Transaction::class, 's_or_p_id');
    }
}
