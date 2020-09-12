<div>
    <input type="text" wire:model="search" />

    <ul>
        @foreach($usersS as $user)
            <li>{{ $user->first_name }}</li>
        @endforeach
    </ul>
    {{ $searchTerm }}
</div>
@livewireAssets
