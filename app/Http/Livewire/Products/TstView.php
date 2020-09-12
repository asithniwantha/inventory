<?php

namespace App\Http\Livewire\Products;

use App\Brand;
use Illuminate\Support\Arr;
use Livewire\Component;

class TstView extends Component
{
    public $brands;
    public $brand;
    public function mount()
    {
        $this->brands = Brand::all(['id', 'brand_name'])->toArray();
        $this->brands = Arr::pluck($this->brands,  'brand_name', 'id');


        //dd($this->brands);
    }
    public function render()
    {
        return view('livewire.products.tst-view');
    }
    public function cancel()
    {
        return redirect()->to('products');
    }
}