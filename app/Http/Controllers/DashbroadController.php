<?php

namespace App\Http\Controllers;

class DashbroadController extends Controller
{
    public function index()
    {
        return view('dashboard.index');
    }
    public function dashborad()
    {
        return view('dashboard');
    }
}
