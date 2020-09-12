<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seller extends Model
{
    public function stock()
    {
        return $this->hasMany(Stock::class);
    }

    public function purchase()
    {
        return $this->hasMany(Purchase::class);
    }
}
