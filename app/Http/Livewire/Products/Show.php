<?php

namespace App\Http\Livewire\Products;

use App\Product;
use App\ProductDetail;
use App\ProductName;
use Carbon\Carbon;
use Livewire\Component;

class Show extends Component
{
    public $productDetailId;
    public $productName;
    public $category;
    public $model;
    public $SubModel;
    public $brand;
    public $description;
    public $sku;
    public $alertQuantity;
    public $warrantyM;
    public $sellingPrice;

    public function mount($productDetailId)
    {
        $productDetail = ProductDetail::findOrFail($productDetailId);
        $product = Product::findOrFail($productDetail->product_id);

        $this->productDetailId = $productDetail->id;
        $this->productName = $product->productName->product_name;
        $this->category = $product->category;
        $this->model = $product->model;
        $this->SubModel = $productDetail->sub_model;
        $this->brand = $product->brand->brand_name;
        $this->description = $productDetail->product_description;
        $this->sku = $product->sku;
        $this->alertQuantity = $productDetail->alert_quantity;
        $w = Carbon::parse($productDetail->warranty);
        $this->warrantyM = ($productDetail->warranty == null) ? 0 : $w->month + ($w->year * 12);
        $this->sellingPrice = $productDetail->selling_price;

        //dd($this->productDetail->id, $this->productName, $this->product->model, $this->productDetail->sub_model, $this->product->brand->brand_name);
    }
    public function render()
    {
        return view('livewire.products.show');
    }

    public function update()
    {
        $this->validate([
            'alertQuantity' => 'numeric|min:1|nullable',
            'warrantyM' => 'numeric|min:0',
            'sellingPrice' => 'required|min:0|numeric',
        ]);
        $productDetail = ProductDetail::findOrFail($this->productDetailId);
        $productDetail->sub_model = $this->SubModel;
        $productDetail->product_description = $this->description;
        $productDetail->alert_quantity = $this->alertQuantity;
        $y = intdiv($this->warrantyM - 1, 12);
        $y = ($y == -1) ? 0 : $y;
        $m = (($this->warrantyM - 1) % 12) + 1;
        $productDetail->warranty = ($m == 0) ? null : Carbon::createFromDate($y, $m, 1);
        $productDetail->selling_price = $this->sellingPrice;
        $productDetail->update();

        session()->flash('message', 'Product ' . $this->productName . ' ' . $this->model . ' ' . 'successfully updated.');
        session()->flash('data', $this->productName . ' ' . $this->model);
        return redirect()->to('products');
    }
}