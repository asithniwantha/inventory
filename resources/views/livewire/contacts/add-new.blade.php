<div class="bg-dark">
    <!-- Button trigger modal -->
    <div class="d-flex justify-content-end">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addContactMdl">
            Add <i class="fas fa-plus"></i>
        </button></div>

    <!-- Modal -->
    <div class="modal fade bg-dark" id="addContactMdl" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
        aria-hidden="true" wire:ignore.self>
        <div class="modal-dialog" role="document">
            <div class="modal-content bg-dark text-white text-bold border ">
                <div class="modal-header">
                    <h5 class="modal-title">Add New Contact</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                        wire:click.prevent="cancel()">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {!! Form::open(['wire:submit.prevent'=>'addContact']) !!}
                    <div class="form-group">
                        {!! Form::label('honorific', 'Honorific :') !!}
                        {!! Form::text('honorific', '',['class'=>'form-control', 'placeholder'=>
                        'Prof. Mr. Miss Dr. Ms. Mrs.', 'wire:model.lazy'=>'honorific']) !!}
                        @error('honorific') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                    <div class="form-group">
                        {!! Form::label('first_name', 'First Name :') !!}
                        {!! Form::text('first_name', '',['class'=>'form-control','aria-required'=>'true',
                        'wire:model.lazy'=>'first_name']) !!}
                        @error('first_name') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                    <div class="form-group">
                        {!! Form::label('middle_name', 'Middle Name :') !!}
                        {!! Form::text('middle_name', '',['class'=>'form-control', 'wire:model.lazy'=>'middle_name'])
                        !!}

                        {!! Form::label('surname', 'Surname :') !!}
                        {!! Form::text('surname', '',['class'=>'form-control', 'wire:model.lazy'=>'surname']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::label('email', 'e-mail :') !!}
                        {!! Form::email('email', '',['class'=>'form-control', 'wire:model.lazy'=>'email']) !!}
                        @error('email') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                    <div class="form-group">
                        {!! Form::label('mobile_no', 'Mobile Number :') !!}
                        {!! Form::text('mobile_no', '',['class'=>'form-control', 'wire:model.lazy'=>'mobile_no']) !!}
                        @error('mobile_no') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                    <div class="form-group">
                        {!! Form::label('address', 'Address :') !!}
                        {!! Form::text('address', '',['class'=>'form-control', 'wire:model.lazy'=>'address']) !!}
                        @error('address') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                    <div class="form-group">
                        {!! Form::label('city', 'City :') !!}
                        {!! Form::text('city', '',['class'=>'form-control', 'wire:model.lazy'=>'city']) !!}
                        @error('city') <span class="text-danger error">{{ $message }}</span>@enderror
                    </div>
                    <div class="form-group">
                        {!! Form::label('notes', 'Notes :') !!}
                        {!! Form::textarea('notes', '',['class'=>'form-control', 'wire:model.lazy'=>'notes',
                        'rows'=>'3']) !!}
                    </div>
                </div>
                <div class="modal-footer">
                    {!! Form::button('Close', ['class'=>'btn btn-secondary',
                    'data-dismiss'=>'modal','wire:click.prevent'=>'cancel()']) !!}
                    {!! Form::submit('Save', ['class'=>'btn btn-primary', 'id'=>'']) !!}
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
