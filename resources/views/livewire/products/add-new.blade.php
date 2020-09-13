<div class="bg-dark">
    <!-- Button trigger modal -->
    <div class="d-flex justify-content-end">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addContactMdl">
            Add <i class="fas fa-plus"></i>
        </button></div>

    <!-- Modal -->
    <div class="modal fade bg-dark" id="addContactMdl" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
        aria-hidden="true" wire:ignore.self>
        <div class="modal-dialog" role="document">
            <div class="modal-content bg-dark text-white text-bold border ">
                <div class="modal-header">
                    <h5 class="modal-title">Add New Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                        wire:click.prevent="cancel()">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    {!! Form::open(['wire:submit.prevent'=>'addProduct']) !!}

                    {{--  product name  --}}
                    <div class="form-group">
                        {{ Form::dataListForm('product_name', 'Product Name :','Select or Add new Product name',$productNameList,'product_name') }}
                        @error('product_name') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>

                    {{-- category --}}
                    <div class="form-group">
                        {!! Form::label('category', 'Category :') !!}
                        {!! Form::select('category', $categoryList, '',
                        ['class'=>'form-control dropdown','wire:model.lazy'=>'category']) !!}
                    </div>

                    <div class="form-group">
                        {{--  model  --}}
                        <div>
                            @if($modelNameList)
                            {{ Form::dataListForm('model_name', 'Model :',head($modelNameList)['model'],$modelNameList,'model') }}
                            @else
                            {{ Form::dataListForm('model_name', 'Model :','...',$modelNameList,'model') }}
                            @endif
                            @error('model_name') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>

                        {{--  sub model  --}}
                        <div>
                            {{ Form::dataListForm('sub_model', 'Sub Model :','Select or Add new',$subModelList,'sub_model') }}
                        </div>
                    </div>

                    <div class="form-group">
                        {{ Form::dataListForm('brand', 'Brand :','Select or Add new',$brandList,'brand_name') }}
                    </div>

                    <div class="form-group">
                        {!! Form::label('description', 'Description :') !!}
                        {!! Form::email('description', '',['class'=>'form-control',
                        'wire:model.lazy'=>'description'])
                        !!}
                        @error('description') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                    <div class="form-group">
                        <div>
                            {!! Form::label('sku', 'SKU :') !!}
                            {!! Form::text('sku', '',['class'=>'form-control',
                            'wire:model.lazy'=>'sku']) !!}
                            @error('sku') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>

                        <div>
                            {!! Form::label('alert_quantity', 'Alert Quantity :') !!}
                            {!! Form::text('alert_quantity', '',['class'=>'form-control',
                            'wire:model.lazy'=>'alert_quantity']) !!}
                            @error('alert_quantity') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>

                        <div> {!! Form::label('warranty', 'Warranty :') !!}
                            {!! Form::text('warranty', '',['class'=>'form-control',
                            'wire:model.lazy'=>'warranty'])
                            !!}
                            @error('warranty') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>

                        <div>{!! Form::label('selling_price', 'Selling Price :') !!}
                            {!! Form::text('selling_price', '',['class'=>'form-control',
                            'wire:model.lazy'=>'selling_price', 'rows'=>'3']) !!}
                            @error('selling_price') <span class="text-danger error">{{ $message }}</span>@enderror
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    {!! Form::button('Close', ['class'=>'btn btn-secondary',
                    'data-dismiss'=>'modal','wire:click.prevent'=>'cancel()']) !!}
                    {!! Form::submit('Save', ['class'=>'btn btn-primary', 'id'=>'']) !!}
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
