<?php

namespace App\Http\Livewire\Purchase;

use Illuminate\Support\Facades\DB;
use Livewire\Component;


class ShowAll extends Component
{
    private $purchases;
    public function mount()
    {
        $this->purchases = DB::table('purchases')
            ->join('sellers', 'purchases.seller_id', '=', 'sellers.id')
            ->join('purchase_details', 'purchase_details.purchase_id', '=', 'purchases.id')
            ->join('product_details', 'purchase_details.product_detail_id', '=', 'product_details.id')
            ->join('products', 'products.id', '=', 'product_details.product_id')
            ->join('product_names', 'product_names.id', '=', 'products.product_name_id')
            ->select('purchases.id AS pid', 'purchase_details.id AS pdid', 'sellers.seller_name', 'purchases.*', 'purchase_details.*', 'product_details.*', 'products.*', 'product_names.*')
            ->get();
        // dump($this->purchases);
    }
    public function render()
    {
        return view('livewire.purchase.show-all', ['tableData' => $this->purchases]);
    }
}
