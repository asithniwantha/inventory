<div class=" table-responsive-xl">
    <table class="table table-dark table-striped table-hover table-sm overflow-auto table-fixed" line-height=10px>
        <thead class="position-sticky top-0 ">
            <tr align="center" class="position-sticky top-0" height="2px">
                <th scope="col">id</th>
                <th scope="col">Honorific</th>
                <th scope="col">First name</th>
                <th scope="col">Middle name</th>
                <th scope="col">Surname</th>
                <th scope="col">E-mail</th>
                <th scope="col">Mobile number</th>
                <th scope="col">Address</th>
                <th scope="col">City</th>
                <th scope="col">Notes</th>
            </tr>
        </thead>
        <tbody style="height: 5px;" overflow-y="scroll">
            @foreach($contacts as $contact)
            <tr>
                <th scope="row">{{$contact->id}}</th>
                <td>{{ $contact->honorific }}</td>
                <td>{{ $contact->first_name }}</td>
                <td>{{ $contact->middle_name}}</td>
                <td>{{ $contact->surname}}</td>
                <td>{{ $contact->email}}</td>
                <td>{{ $contact->mobile_no}}</td>
                <td>{{ $contact->address}}</td>
                <td>{{ $contact->city}}</td>
                <td>{{ $contact->notes}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <div>
        {{ $contacts->links() }}
    </div>
</div>
