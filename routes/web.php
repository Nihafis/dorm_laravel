<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashbroadController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', [DashbroadController::class, 'dashborad']);