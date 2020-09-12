<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Contact;

class ContactForm extends Component
{
    public $name;
    public $email;
    public $body;

    public function submit()
    {
        $validatedData = $this->validate([
            'first_name' => 'required|min:6',
            'email' => 'required|email',
        ]);

        Contact::create($validatedData);

        return redirect()->to('/form');
    }

    public function render()
    {
        return view('livewire.contact-form');
    }
}
