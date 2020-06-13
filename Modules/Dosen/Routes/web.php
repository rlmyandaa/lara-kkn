<?php

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

Route::prefix('dosen')->group(function() {
    Route::get('/', 'DosenController@index')->name('dosen.home');
    Route::get('/profile', 'ProfileController@index')->name('dosen.profile');
    Route::post('/profile/store', 'ProfileController@store')->name('dosen.profile-store');
    Route::get('/profile/edit', 'ProfileController@edit')->name('dosen.profile-edit');
    Route::post('/profile/update', 'ProfileController@update')->name('dosen.profile-update');
});
