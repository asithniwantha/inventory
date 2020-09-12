<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];
    protected $fillable = [
        'honorific', 'first_name', 'middle_name', 'surname', 'email', 'mobile_no', 'address', 'city', 'notes',
    ];
    public function sales()
    {
        return $this->hasMany(Sale::class);
    }
}