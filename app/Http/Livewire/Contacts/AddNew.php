<?php

namespace App\Http\Livewire\Contacts;

use App\Contact;
use Livewire\Component;

class AddNew extends Component
{
    public $honorific;
    public $first_name;
    public $middle_name;
    public $surname;
    public $email;
    public $mobile_no;
    public $address;
    public $city;
    public $notes;

    public $saved = null;
    public function render()
    {
        return view('livewire.contacts.add-new');
    }

    public function addContact()
    {
        $this->validate([
            'first_name' => 'required',
            'email' => 'email',
            'mobile_no' => 'required',
            'city' => 'required',
        ]);
        $contact = new Contact;
        $contact->honorific = $this->honorific;
        $contact->first_name = $this->first_name;
        $contact->middle_name = $this->middle_name;
        $contact->surname = $this->surname;
        $contact->email = $this->email;
        $contact->mobile_no = $this->mobile_no;
        $contact->address = $this->address;
        $contact->city = $this->city;
        $contact->notes = $this->notes;
        $contact->save();
        session()->flash('message', 'Contact successfully added.');
        return redirect()->to('contacts');
    }

    public function cancel()
    {
        $this->resetValidation();
        $this->updateMode = false;
        $this->honorific = '';
        $this->first_name = '';
        $this->middle_name = '';
        $this->surname = '';
        $this->email = '';
        $this->mobile_no = '';
        $this->address = '';
        $this->city = '';
        $this->notes = '';
    }
}
