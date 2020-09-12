@extends('layouts.app')
@section('content')
<div>

    <div>
        @livewire('products.add-new')
    </div>
    <div>
        @livewire('products.show-all')
    </div>
</div>



<!-- Show toast message -->
<div>
    @if (session()->has('message'))
    <div class="toast" data-autohide="true" data-delay="5000" style="position: absolute; top: 0; right: 0;">
        <div class="toast-header">
            <strong class="mr-auto text-primary">Product</strong>
            <small class="text-muted">5 mins ago</small>
            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
        </div>
        <div class="toast-body">
            {{ session('message') }}
        </div>
    </div>

    {{--  -----------------------------------  --}}
    <script>
        $(document).ready(function(){
        $('.toast').toast('show');
        });
    </script>
    @endif
</div>
@endsection
