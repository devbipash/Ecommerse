<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use Auth;

class UserController extends Controller
{
    public function dashboard()

    {
$user =Auth::user();
    	return view ('user.dashboard',compact('user'));
    }
}
