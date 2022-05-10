<?php

namespace App\Http\Controllers;

use App\Models\Certificate;

use Illuminate\Http\Request;
use PDF;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class CertificatesController extends Controller
{


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function create()
    {
        return  view('pdf.form',[]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $validation = [
            'course_name' => 'required|max:255',
            'user_name' => 'required|max:255',
            'final_date' => 'required|date'
        ];

        $request->validate($validation);


        $cert = new Certificate;
        $cert->cert_number = $cert->getNextId();
        $cert->course_name = $request->all()['course_name'];
        $cert->user_name = $request->all()['user_name'];
        $cert->final_date = $request->all()['final_date'];
        $qr_code_url = 'data:image/png;base64,'.base64_encode(QrCode::format('png')->size(300)->generate('http://pdf.generator/certificate/'.$cert->getNextId()));

        $cert->qr_code_url = $qr_code_url;
        $cert->save();




        if(isset($request->all()['get_cert'])) {
            return GeneratePdfController::genPdf($cert->id);
        }
        return redirect()->route('main')->with('success', 'Certificate is added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function show($id)
    {
        $cert = Certificate::where('id',$id)->first();
        return view('pdf.show',compact('id','cert'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cert = Certificate::where('id',$id)->first();

        return  view('pdf.form',compact('id', 'cert'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, $id)
    {
        $validation = [
            'course_name' => 'required|max:255',
            'user_name' => 'required|max:255',
            'final_date' => 'required|date'
        ];

        $request->validate($validation);

        $qr_code_url = 'data:image/png;base64,'.base64_encode(QrCode::format('png')->size(300)->generate('http://pdf.generator/certificate/'.$id));

        Certificate::where('id', $id)->update([
            'course_name' => $request->all()['course_name'],
            'user_name' => $request->all()['user_name'],
            'final_date' => $request->all()['final_date'],
            'qr_code_url' => $qr_code_url,

        ]);

        if(isset($request->all()['get_cert'])) {
            return GeneratePdfController::genPdf($id);
        }
        return redirect()->route('main')->with('success', 'Changes is saved');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $cert = Certificate::where('id',$id);
        $cert->delete();
        return redirect()->route('main')->with('success', 'Certificate was deleted');
    }
}
