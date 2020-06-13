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

Route::prefix('student')->group(function() {
    Route::get('/', 'StudentController@index')->name('student.home');
    Route::get('/profile', 'ProfileController@index')->name('student.profile');
    Route::post('/profile/store', 'ProfileController@store')->name('student.profile-store');
    Route::get('/profile/edit', 'ProfileController@edit')->name('student.profile-edit');
    Route::post('/profile/update', 'ProfileController@update')->name('student.profile-update');

    Route::get('/group', 'GroupController@index')->name('student.group');
    Route::get('/proposal', 'ProposalController@index')->name('student.proposal');
});


