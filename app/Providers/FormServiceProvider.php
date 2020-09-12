<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class FormServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        \Form::component('dataListForm', 'components.form.dropdownList', ['name', 'labelText', 'placeHolder' => null, 'optionList', 'key', 'attributes' => []]);
    }
}