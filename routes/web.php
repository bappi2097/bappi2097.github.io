<?php

Route::get('/', 'HomeController@home')->name('home');

Route::get('/symptoms', function () {
    return view('symptoms');
})->name('symptoms');

Route::get('/updateInfo', function () {
    return view('updateinfo');
})->name('updateinfo');

Route::get('/faq', 'HomeController@faq')->name('faq');

Route::get('/photoGallery', 'HomeController@gallery')->name('photoGallery');

Route::get('/quarantine', function () {
    return view('home_quarantine');
})->name('quarantine');

Route::post('/result', 'HomeController@result')->name('result');

Route::get('/tutorial', 'HomeController@tutorialHome')->name('tutorial');

Route::get('/tutorialfull/{id}', 'HomeController@tutorialFull')->name('tutorialfull');
