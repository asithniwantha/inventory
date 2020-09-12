<?php

namespace App\Http\Livewire\Products;

use App\ProductName;
use Livewire\Component;

class NameSearch extends Component
{
    public $product_name_selected;
    public $productNameList;




    public function mount()
    {
        $this->product_name_selected = '';
        $this->productNameList = null;
    }

    public function updatedProductName($value)
    {
        $this->productNameList = ProductName::where('product_name', 'like', $value . '%')->get()->toArray();
    }
    public function render()
    {
        return view('livewire.products.name-search');
    }
}