{{ Form::label($name, $labelText, ['class' => 'control-label']) }}
<input list="{{ $name }}" class="form-control" wire:model="{{ $name }}" placeholder="{{ $placeHolder }}">
<div class="list-group rounded shadow-lg">
    <datalist id="{{ $name}}">
        @if($optionList)
        @foreach($optionList as $option)
        <option value="<?php echo $option[$key] ?>" />
        @endforeach
        @endif
    </datalist>
</div>
