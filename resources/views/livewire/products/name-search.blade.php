<div>
    <div class="form-group">
        <label for="product_name">Product Name :</label>
        <input list="product_names" class="form-control" name="productName" id="product_name" aria-describedby="helpId"
            wire:model="product_name" placeholder="Search or Add new Product name">
        @if($productNameList)
        <div class="list-group rounded shadow-lg">
            <datalist id="product_names">
                @foreach($productNameList as $name)
                <option value="{{ $name['product_name'] }}" />
                @endforeach
            </datalist>
        </div>
        @endif
    </div>
</div>
