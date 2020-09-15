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
    <div style="position: relative; min-height: 300px; ">
        <!-- Position toasts -->
        <div style="position: absolute; top: 30%; right: 30%; min-width: 500px;">
            <div class="toast fade show bg-dark" data-delay="5000">
                <div class="toast-header">
                    <strong class="mr-auto text-success">
                        <h4><i class="fa fa-arrow-circle-down"></i> {{ session('data') }}</h4>
                    </strong>
                    <small class="text-muted">{{ Carbon\Carbon::now()}}</small>
                    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
                </div>
                <div class="toast-body text-success text-center">
                    <h5>
                        {{ session('message') }}
                    </h5>
                </div>
            </div>
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
