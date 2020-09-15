@extends('layouts.app')
@section('content')
<div>

    <div>
        @livewire('products.show',['productDetailId'=>$productDetailId])
    </div>

</div>
@endsection
