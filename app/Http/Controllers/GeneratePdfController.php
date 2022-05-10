<?php

namespace App\Http\Controllers;

use App\Models\Certificate;
use PDF;
use Illuminate\Http\Request;

class GeneratePdfController extends Controller
{
    public static function genPdf($id){
        $cert = Certificate::where('id',$id)->first();
        view()->share('certificate',$cert);
        $pdf = PDF::loadView('pdf.show', compact('cert'));
        return $pdf->stream('pdf_file.pdf');
    }
}
