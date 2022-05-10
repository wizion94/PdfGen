@extends('pdf.layout')
@section('contentPDF')
    <div class="logo">
        An Organization
    </div>

    <div class="marquee">
        Certificate of Completion  #{{$cert->cert_number}}
    </div>

    <div class="assignment">
        This certificate is presented to
    </div>

    <div class="person">
        {{$cert->user_name}}
    </div>

    <div class="reason">
        At the end of the course: {{$cert->course_name}}
    </div>
    <div class="bottom">

                <div class="date">
                    {{$cert->final_date}}
                </div>
        @if(!empty($cert->qr_code_url))
            <div class="qr">
                <img src="{{$cert->qr_code_url}}" width="70" alt="">
            </div>
        @endif
    </div>


@endsection
