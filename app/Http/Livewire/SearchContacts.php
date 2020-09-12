<?php

namespace App\Http\Livewire;

use App\Contact;
use Livewire\Component;

class SearchContacts extends Component
{
    public $searchTerm = '';
    public $usersS;

    public function render()
    {
        $search = $this->searchTerm . '%';
        $this->usersS = Contact::where('first_name', 'like', $search)->get();
        return view('livewire.search-contacts');
    }
}

// [
 //           'users' => Contact::where('first_name', $this->search)->get(),
 //       ]);
