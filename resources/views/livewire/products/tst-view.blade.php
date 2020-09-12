<div class="container">
    {!! Form::open(['wire:submit.prevent'=>'addProduct']) !!}
    <div class="form-group">
        {!! Form::label('product_name', 'Product Name :') !!}
        {!! Form::text('product_name', '',['class'=>'form-control', 'placeholder'=>
        '', 'wire:model.lazy'=>'product_name']) !!}
        @error('product_name') <span class="text-danger error">{{ $message }}</span>@enderror
    </div>
    <div class="form-group">
        {!! Form::label('model', 'Model :') !!}
        {!! Form::text('model', '',['class'=>'form-control','aria-required'=>'true',
        'wire:model.lazy'=>'model']) !!}
        @error('model') <span class="text-danger error">{{ $message }}</span>@enderror
    </div>
    <div class="form-group">
        {!! Form::label('sub_model', 'Sub Model :') !!}
        {!! Form::text('sub_model', '',['class'=>'form-control', 'wire:model.lazy'=>'sub_model'])
        !!}
    </div>
    <div class="form-group">
        {!! Form::label('brand', 'Brand :') !!}
        {!! Form::select('brand', $brands,null,['class'=>'form-control',
        'wire:model.lazy'=>'brand'])
        !!}
    </div>
    <div class="form-group">
        {!! Form::label('description', 'Description :') !!}
        {!! Form::email('description', '',['class'=>'form-control', 'wire:model.lazy'=>'description'])
        !!}
        @error('description') <span class="text-danger error">{{ $message }}</span>@enderror
    </div>
    <div class="form-group">
        {!! Form::label('sku', 'SKU :') !!}
        {!! Form::text('sku', '',['class'=>'form-control', 'wire:model.lazy'=>'sku']) !!}
        @error('sku') <span class="text-danger error">{{ $message }}</span>@enderror
    </div>
    <div class="form-group">
        {!! Form::label('alert_quantity', 'Alert Quantity :') !!}
        {!! Form::text('alert_quantity', '',['class'=>'form-control',
        'wire:model.lazy'=>'alert_quantity']) !!}
        @error('alert_quantity') <span class="text-danger error">{{ $message }}</span>@enderror
    </div>
    <div class="form-group">
        {!! Form::label('warranty', 'Warranty :') !!}
        {!! Form::text('warranty', '',['class'=>'form-control', 'wire:model.lazy'=>'warranty']) !!}
        @error('warranty') <span class="text-danger error">{{ $message }}</span>@enderror
    </div>
    <div class="form-group">
        {!! Form::label('selling_price', 'Selling Price :') !!}
        {!! Form::text('selling_price', '',['class'=>'form-control',
        'wire:model.lazy'=>'selling_price',
        'rows'=>'3']) !!}
    </div>
    <div class="form-group">
        {!! Form::button('Close', ['class'=>'btn
        btn-secondary','data-dismiss'=>'modal','wire:click.prevent'=>'cancel()']) !!}
        {!! Form::submit('Save', ['class'=>'btn btn-primary', 'id'=>'']) !!}
    </div>
    {!! Form::close() !!}
</div>
