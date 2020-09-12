<div class=" table-responsive-xl">
    <table class="table table-dark table-striped table-hover table-sm overflow-auto table-fixed" line-height="10px">
        <thead class="position-sticky top-0 " position="fixed">
            <tr align="center" class="position-sticky top-0" height="2px">
                <th scope="col">id</th>
                <th scope="col">Product Name</th>
                <th scope="col">Category</th>
                <th scope="col">Model</th>
                <th scope="col">Sub model</th>
                <th scope="col">Brand</th>
                <th scope="col">Description</th>
                <th scope="col">SKU</th>
                <th scope="col">Alert Quantity</th>
                <th scope="col">Warranty</th>
                <th scope="col">Selling Price</th>
            </tr>
        </thead>
        <tbody align="center" style="height: 5px;" overflow-y="scroll">
            @foreach($products as $product)
            <tr>
                <th scope="row">
                    <a href="products/edit/{{ $product->pdid }}" class="text-white">
                        {{$product->pid}}
                    </a>
                </th>
                <td><a href="products/edit/{{ $product->pdid }}" class="text-white">{{ $product->product_name }} </a>
                </td>
                <td>{{ $product->category }}</td>
                <td>{{ $product->model }}</td>
                <td>{{ $product->sub_model }}</td>
                <td>{{ $product->brand_name }}</td>
                <td>{{ $product->product_description }}</td>
                <td>{{ $product->sku }}</td>
                <td>{{ $product->alert_quantity }}</td>
                @if($product->warranty_m < 1 ) <td>No Warranty</td>
                    @else <td>{{ Carbon\CarbonInterval::months((($product->warranty_y*12)) + $product->warranty_m).'' }}
                    </td>
                    @endif
                    <td>{{ $product->selling_price }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
