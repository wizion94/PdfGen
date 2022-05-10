<?php

use App\Http\Controllers\CertificatesController;
use App\Http\Controllers\ListController;
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

Route::get('/', [ListController::class, 'index'])->name('main');
Route::resource('certificate', CertificatesController::class,['parameters'=> [
    'certificate' => 'id'
]])->except([
    'index',
]);
