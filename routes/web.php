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

Route::redirect ('/', '/home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//Products


Route::get('/products/search', 'ProductController@search')->name('products.search');


Route::resource('products', 'ProductController')->middleware('auth');
//product Search


// CART ROUTE


Route::get('/add-to-cart/{product}', 'CartController@add')->name('cart.add')->middleware('auth');



Route::get('/cart', 'CartController@index')->name('cart.index')->middleware('auth');

Route::get('/cart/destroy/{ItemId}', 'CartController@destroy')->name('cart.destroy')->middleware('auth');

Route::get('/cart/update/{ItemId}', 'CartController@update')->name('cart.update')->middleware('auth');
Route::get('/cart/checkout', 'CartController@checkout')->name('cart.checkout')->middleware('auth');
Route::get('/cart/apply-coupon', 'CartController@applyCoupon')->name('cart.coupon')->middleware('auth');


// order 


Route::resource('orders', 'OrderController')->middleware('auth');


//SHops

Route::resource('shops', 'ShopController')->middleware('auth');



//PAYPAL 


Route::get('/paypal/checkout', 'PaypalController@getExpresscheckout')->name('paypal.checkout');
Route::get('paypal/checkout-success', 'PaypalController@getExpresscheckoutSuccess')->name('paypal.success');
Route::get('paypal/checkout-cancel', 'PaypalController@cancelPage')->name('paypal.cancel');


//Verify

Route::get('/verify', 'verifyController@getVerify')->name('getVerify');
Route::post('/verify', 'verifyController@postVerify')->name('Verify');

//User Profile

Route::get('/dashboard', 'UserController@dashboard')->name('user.dashboard')->middleware('auth');

//Contact

Route:: get ('/contact', function () {
   return view('contact');

});

// Slider

Route::resource('slider', 'SliderController')->middleware('auth');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});