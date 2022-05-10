<?php

namespace App\Http\Controllers;

use App\Models\Certificate;
use Illuminate\Http\Request;

class ListController extends Controller
{
    public function index() {
        $cert_list = Certificate::all();

        return view('pdf.list',compact('cert_list'));
    }
}
