<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    public function purchaseDetail()
    {
        return $this->hasMany(PurchaseDetail::class);
    }

    public function seller()
    {
        return $this->belongsTo(Seller::class);
    }
}
