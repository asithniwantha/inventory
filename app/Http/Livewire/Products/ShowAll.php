<?php

namespace App\Http\Livewire\Products;

use App\Brand;
use App\Product;
use Carbon\Carbon;
use Carbon\CarbonInterval;
use Illuminate\Support\Facades\DB;
use Livewire\Component;
use Illuminate\Support\Collection;

class ShowAll extends Component
{
    public $brands;
    private $products;
    public function mount()
    {
        $this->products = DB::table('products')
            ->join('product_names', 'products.product_name_id', '=', 'product_names.id')
            ->join('brands', 'products.brand_id', '=', 'brands.id')
            ->join('product_details', 'product_details.product_id', '=', 'products.id')
            ->select(['products.id AS pid', 'product_details.id AS pdid', \DB::raw('YEAR(`product_details`.`warranty`) AS `warranty_y`'), \DB::raw('MONTH(`product_details`.`warranty`) AS `warranty_m`'), 'products.*', 'product_names.*', 'brands.*', 'product_details.*'])
            ->orderBy('products.id')
            ->get();
    }

    public function render()
    {
        //$m = Carbon::create(0000, 00);
        //$dateCbn = $m->addMonths(6);
        //$m = Carbon::parse($this->products[5]->warranty); //To database
        //        $m = CarbonInterval::months($this->products->warranty_m);

        $coll = collect();
        foreach ($this->products as $product) {
            $m = CarbonInterval::months($product->warranty_m);

            //$this->products->put($product->id, [CarbonInterval::months($m->month) . '']);
        }
        //dd($m . '');
        //dd($coll, $this->products);
        return view('livewire.products.show-all', ['products' => $this->products, 'warrantyM' => $coll]);
    }
}