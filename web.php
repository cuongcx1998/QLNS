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
Route::post('themphong','phongbanController@insert');
Route::post('suaphong','phongbanController@update');
Route::get('xoaphong/{maphong}','phongbanController@delete');
Route::get('/phongban', 'phongbanController@index');
Route::get('/', 'phongbanController@index');

Route::get('/chucvu', 'chucvuController@index');
Route::post('themcv','chucvuController@insert');
Route::post('suacv','chucvuController@update');
Route::get('xoacv/{macv}','chucvuController@delete');

Route::get('/nhanvien', 'nhanvienController@index');
Route::post('themnv','nhanvienController@insert');
Route::post('suanv','nhanvienController@update');
Route::get('xoanv/{manv}','nhanvienController@delete');


