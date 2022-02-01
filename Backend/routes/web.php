<?php

use App\Http\Controllers\bannerController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\categoryController;
use App\Http\Controllers\couponController;
use App\Http\Controllers\ContactsController;
use App\Http\Controllers\cmsController;
use App\Http\Controllers\configurationController;
use App\Http\Controllers\orderDetailsController;
use App\Http\Controllers\firstController;
use App\Http\Controllers\productController;
use App\Http\Controllers\userController;
use Illuminate\Support\Facades\Auth;


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
    return view('auth.login');
});
Route::get('/middleware', function () {
    return view('middleware');
});
Auth::routes();
Route::middleware([admin::class])->group(function () {
    Route::resource('categories', categoryController::class);
    Route::resource('users', userController::class);
    Route::resource('banners', bannerController::class);
    Route::resource('products', productController::class);
    Route::resource('coupons', couponController::class);
    Route::resource('orders', orderDetailsController::class);
    Route::resource('contacts', ContactsController::class);
    Route::resource('cms', cmsController::class);
    Route::resource('configuration', configurationController::class);
    Route::get('/salesreport', [firstController::class, 'salesReport']);
    Route::get('/usersreport', [firstController::class, 'userReport']);
    Route::get('/couponsreport', [firstController::class, 'couponReport']);
    Route::get('/export', [App\Http\Controllers\ExportController::class, 'export']);
    Route::get('/usersexport', [App\Http\Controllers\ExportController::class, 'usersexport']);
    Route::get('/coupansexport', [App\Http\Controllers\ExportController::class, 'coupansexport']);
    Route::get('/productImages/{id}', [firstController::class, 'deleteImages']);
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
