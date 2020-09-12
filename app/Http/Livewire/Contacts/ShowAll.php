<?php

namespace App\Http\Livewire\Contacts;

use App\Contact;
use Livewire\Component;

class ShowAll extends Component
{
    public function render()
    {
        return view('livewire.contacts.show-all', ['contacts' => Contact::paginate(5)]);
    }
}