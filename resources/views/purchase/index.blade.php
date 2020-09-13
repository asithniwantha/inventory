@extends('layouts.app')
@section('content')
<div>

    <div>
        @livewire('purchase.show-all')
    </div>
</div>



<!-- Show toast message -->
<div>
    @if (session()->has('message'))
    <div class="toast" data-autohide="true" data-delay="5000" style="position: absolute; top: 50%; right: 50%;">
        <div class="toast-header">
            <strong class="mr-auto text-primary">Purchase</strong>
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
