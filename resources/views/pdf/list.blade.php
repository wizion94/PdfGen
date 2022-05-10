@extends('app')
@section('content')


    <div class="row">
        <div class="twelve columns">
            @if(!$cert_list->isEmpty())
                <table class="u-full-width">
                    <thead>
                    <tr>
                        <th>Course number</th>
                        <th>Name of course</th>
                        <th>User Name</th>
                        <th>Final Date</th>
                        <th>QR</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($cert_list as $item)
                            <tr>
                                <td>{{$item->cert_number}}</td>
                                <td>{{$item->course_name}}</td>
                                <td>{{$item->user_name}}</td>
                                <td>{{$item->final_date}}</td>
                                <td>@if(!empty($item->qr_code_url))<img src="{{$item->qr_code_url}}" width="30" alt="">@endif</td>
                                <td>
                                    <a href="{{route('certificate.edit', ['id'=>$item->id])}}">Edit</a>/
                                    <form class='destroy-button' action='{{route('certificate.destroy', ['id'=>$item->id])}}' onSubmit='if(!confirm("You sure?")){return false;}' method='post'>
                                        @csrf
                                        <input type='hidden' name='_method' value='DELETE' />
                                        <button type='submit' class="link">delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>


            @else
                list is empty
            @endif

        </div>
    </div>



@endsection
