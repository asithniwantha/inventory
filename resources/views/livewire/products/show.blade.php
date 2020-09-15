<div>
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <button type="back" class="btn btn-secondary btn-block mb-2">
                    Product List <br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>Product List
                </button>
            </div>
            <div class="col-md-8">
                <h2>Edit Product</h2>
                <form class="form-group" action="#" wire:submit.prevent="update">
                    <div class="row">
                        <div class="col-sm">
                            <label for="productDetailId" class="mb-2 mr-sm-2">Product detail ID :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" name="productDetailId" readonly
                                wire:model="productDetailId"></div>
                        <div class="col-sm">
                            <label for="productName" class="mb-2 mr-sm-2">Product Name :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" name="productName" readonly
                                wire:model="productName">
                        </div>
                        <div class="col-sm">
                            <label for="category" class="mb-2 mr-sm-2">Category :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" name="category" readonly
                                wire:model="category">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm">
                            <label for="model" class="mb-2 mr-sm-2">Model :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" name="model" readonly
                                wire:model="model">
                        </div>
                        <div class="col-sm">
                            <label for="subModel" class="mb-2 mr-sm-2">Sub Model :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" name="subModel" wire:model="subModel">
                        </div>
                        <div class="col-sm">
                            <label for="brand" class="mb-2 mr-sm-2">Brand :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" name="brand" readonly
                                wire:model="brand">
                        </div>
                        <div class="col-sm">
                            <label for="sku" class="mb-2 mr-sm-2">SKU :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" name="sku" readonly wire:model="sku">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm">
                            <label for="description" class="mb-2 mr-sm-2">Description :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" name="description"
                                wire:model="description">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm"><label for="alertQuantity" class="mb-2 mr-sm-2">Alert Quantity
                                :</label>
                            <input type="number" class="form-control mb-2 mr-sm-2" name="alertQuantity" min="1"
                                max="100" wire:model="alertQuantity">
                        </div>
                        <div class="col-sm">
                            <label for="warranty" class="mb-2 mr-sm-2">Warranty in months:</label>
                            <input type="number" class="form-control mb-2 mr-sm-2" name="warranty"
                                wire:model="warrantyM" min="0">
                        </div>
                        <div class="col-sm">
                            <label for="sellingPrice" class="mb-2 mr-sm-2">Selling Price :</label>
                            <input type="number" class="form-control mb-2 mr-sm-2" name="sellingPrice" min="0"
                                wire:model="sellingPrice">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm">
                            <button type="submit" class="btn btn-primary btn-block mb-2">Update</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</div>
