<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('contacts', 'ContactController');
Route::resource('products', 'ProductController');
Route::resource('purchase', 'PurchaseController');


Route::get('search', 'SearchController@index')->name('search');
Route::get('autocomplete', 'SearchController@autocomplete')->name('autocomplete');