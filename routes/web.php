<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashbroadController;
use App\Http\Controllers\CompanyController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', [DashbroadController::class, 'dashborad']);
Route::get('/company/index', [CompanyController::class, 'index']);
