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

Route::group(['prefix' => 'dosen', 'middleware' => ['auth', 'activated', 'role:dosen', 'activity', 'twostep', 'checkblocked']],function() {
    Route::get('/', 'DosenController@index')->name('dosen.home');
    Route::get('/profile', 'ProfileController@index')->name('dosen.profile');
    Route::post('/profile/store', 'ProfileController@store')->name('dosen.profile-store');
    Route::get('/profile/edit', 'ProfileController@edit')->name('dosen.profile-edit');
    Route::post('/profile/update', 'ProfileController@update')->name('dosen.profile-update');

    Route::get('/student', 'StudentController@index')->name('dosen.student-group');
    Route::get('/student/add', 'StudentController@add')->name('dosen.student-group-add');
    Route::post('/student/store', 'StudentController@store')->name('dosen.student-group-store');
    Route::get('/student/r/{id}', 'StudentController@delete')->name('dosen.student-group-delete');

    Route::get('/student/detail/{id}', 'StudentController@detail')->name('dosen.student-group-detail');
    Route::get('/student/detail/edit/{id}', 'StudentController@detail_edit')->name('dosen.student-group-detail-edit');
    Route::post('/student/detail/update', 'StudentController@detail_update')->name('dosen.student-group-detail-update');    

    Route::get('/student/token/{id}', 'StudentController@token')->name('dosen.student-group-token');
    Route::post('/student/token/update', 'StudentController@token_update')->name('dosen.student-group-token-update');



    /*
    |--------------------------------------------------------------------------
    | Management-Proker Routes
    |--------------------------------------------------------------------------
    */
    Route::group([], function () {
        Route::get('/proker', 'ProkerController@index')->name('dosen.management-proker');
        Route::get('/proker/dl/{id}', 'ProkerController@getFileAcc')->name('dosen.management-getFileAcc');
        Route::get('/proker/detail/{id}', 'ProkerController@detail')->name('dosen.management-proker-detail');
        Route::get('/proker/detail/dl/{id}', 'ProkerController@getFilePending')->name('dosen.management-proker-getFile');
        Route::post('/proker/proposal/', 'ProkerController@proposal_decide')->name('dosen.management-proker-proposal_decide');
        Route::get('/proker/group-detail/{id}','ProkerController@group_detail')->name('dosen.management-proker-group_detail');
    });
});
