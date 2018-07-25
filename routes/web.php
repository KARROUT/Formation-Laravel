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

Route::get('/', function () {
    return view('welcome');
});

// ========= Liste des route du module produit =========

/*Route::get('/products', 'ProductController@index');

Route::get('/products/create', 'ProductController@create');

Route::post('/products', 'ProductController@store');

Route::get('/products/{id}/edit', 'ProductController@edit');

Route::put('/products/{id}', 'ProductController@update');

Route::get('/products/{id}', 'ProductController@show');

Route::delete('/products/{id}', 'ProductController@destroy');*/

Route::group(['middleware' => ['auth']], function(){
	
	Route::resource('products', 'ProductController');
	Route::resource('categories', 'CategoryController');
	Route::post('search', 'CategoryController@search');

	Route::get('users', 'UserController@index');

});

//Route::get('categorie/{id}', 'CategoryController@destroy');
//====================================================



/*
Route::get('/test', function(){
	echo 'page test';
});


Route::get('/products', function(){
	return view('product');
});


Route::get('/product/{id}/{slug?}', function($id, $slug = 'merci de mettre un slug'){
	echo "produit numero : $id, slug : $slug";
})->where(['id' => '[0-9]+', 'slug' => '[a-zA-Z_-]*']);

*/


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
