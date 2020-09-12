<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    public function contact()
    {
        return $this->belongsTo(Contact::class);
    }

    public function SaleDetail(){
        return $this->hasMany(SaleDetail::class);
    }
}
