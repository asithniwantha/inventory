<?php

namespace App\Http\Livewire\Products;

use App\Brand;
use App\Product;
use App\ProductDetail;
use App\ProductName;
use Carbon\Carbon;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Livewire\Component;

class AddNew extends Component
{
    public $brandList;
    public $product_name;
    public $productNameList;
    public $modelNameList;
    public $categoryList;
    public $category;
    public $model_name;
    public $sub_model;
    public $subModelList;
    public $brand;
    public $description;
    public $sku;
    public $alert_quantity;
    public $warranty;
    public $selling_price;

    public function mount()
    {
        // $pp = Product::find(6)->productDetail;
        // foreach ($pp as $p) {
        //     dd($p->toArray());
        // }
        // $pp = Product::find(6)->productName;
        // dd($pp->product_name);
        // foreach ($pp as $p) {
        //     dd($p);
        // }
        // $pp = ProductDetail::with('product:id,model')->get();
        // dd($pp);

        $this->categoryList = Product::getPossibleEnumValues('category');
        $this->categoryList = Arr::prepend($this->categoryList, '');

        $this->product_name = null;
        $this->productNameList = ProductName::all('product_name')->toArray();
        $this->brandList = Brand::all(['brand_name'])->toArray();
    }
    public function render()
    {
        return view('livewire.products.add-new');
    }

    public function updated($name, $value)
    {
        if ($name == 'product_name') {
            $this->productNameList = ProductName::where('product_name', 'like', $value . '%')->get()->toArray();
            if ($this->product_name) {
                $productName = ProductName::where('product_name', '=', $this->product_name)->first();
                if ($productName) {
                    $products = Product::select('model')->where('product_name_id', '=', $productName->id)->distinct()->get();
                    $this->modelNameList = $products->toArray();
                }
            }
        } elseif ($name == 'model_name') {
            $product = Product::where('model', '=', $value)->first();
            if ($product) {
                $productDetails = ProductDetail::where('product_id', '=', $product->id)->distinct()->get();
                $subModelList = [];
                foreach ($productDetails as $productDetail) {
                    $subModelList = Arr::add($subModelList, $productDetail->id, ['sub_model' => $productDetail->sub_model]);
                }
                $this->subModelList = $subModelList;
                $this->sku = $product->sku;
                $this->brand = Brand::find($product->brand_id)->brand_name;
            }
        }
    }

    public function addProduct()
    {
        $this->validate([
            'product_name' => 'required',
            'model_name' => 'required',
            'brand' => 'required',
            'selling_price' => 'required',
        ]);



        $productNameId = null;
        $alreadyHave = ProductName::where('product_name', '=', $this->product_name)->first();
        if ($alreadyHave) {
            $productNameId = $alreadyHave->id;
        } else {
            $productName = new ProductName();
            $productName->product_name = $this->product_name;
            $productName->save();
            $productNameId = ProductName::where('product_name', '=', $this->product_name)->first()->id;
        }

        if (!Brand::getId($this->brand)) {
            $brand = new Brand();
            $brand->brand_name = $this->brand;
            $brand->save();
        }

        $brandId = Brand::getId($this->brand);
        $alreadyHaveProduct = Product::where('product_name_id', '=', $productNameId)->where('brand_id', '=', $brandId)->where('model', '=', $this->model_name)->get();
        //dd(Arr::exists($alreadyHaveProduct, 0), $this->brand);
        if (!Arr::exists($alreadyHaveProduct, 0)) {
            $product = new Product();
            $product->product_name_id = $productNameId;
            $product->category = $this->category;
            $product->brand_id = Brand::getId($this->brand);
            $product->model = $this->model_name;
            $product->sku = $this->sku;
            // category
            $product->save();
        }

        //dd(Product::getId($this->product_name, $this->brand, $this->model_name), $this->sub_model);
        if (!ProductDetail::isExistProductDetail(Product::getId($this->product_name, $this->brand, $this->model_name), $this->sub_model)) {

            $productDetail = new ProductDetail();
            $productDetail->product_id = Product::getId($this->product_name, $this->brand, $this->model_name);
            $productDetail->sub_model = $this->sub_model;
            $productDetail->product_description = $this->description;
            $productDetail->alert_quantity = $this->alert_quantity;

            $m = Carbon::create(0000, 00);
            $productDetail->warranty = $m->addMonths($this->warranty);
            $productDetail->selling_price = $this->selling_price;
            $productDetail->save();
        }


        session()->flash('message', 'Product successfully added.');
        return redirect()->to('products');
    }
}
