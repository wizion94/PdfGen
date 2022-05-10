@extends('app')
@section('content')
    <div class="row">
        <div class="twelve columns">
            <h2>
                @if(isset($id))
                    Certificate: {{$cert->course_name}}
                @else
                    New certificate
                @endif
            </h2>
        </div>
    </div>
    {!! Form::open(['url' => !isset($id) ? route('certificate.store') : route('certificate.update', ['id'=>$id]),'files' => true, 'method' => isset($id) ? 'put' : 'post']) !!}
        @csrf
        <div class="row">
            <div class="twelve columns">
                    {!! Form::label('course_name', 'Course name') !!}
                    {!! Form::text('course_name',  isset($cert->course_name) && !empty($cert->course_name) ? $cert->course_name : '', ['class' => 'u-full-width' . (!empty($errors->get('course_name')) ? ' is-invalid' : ''), 'placeholder' => '']); !!}
            </div>

        </div>
    <div class="row">
            <div class="ten columns">
                    {!! Form::label('user_name', 'User name') !!}
                    {!! Form::text('user_name',  isset($cert->user_name) && !empty($cert->user_name) ? $cert->user_name : '', ['class' => 'u-full-width' . (!empty($errors->get('user_name')) ? ' is-invalid' : ''), 'placeholder' => '']); !!}
             </div>
            <div class="two columns">
                {!! Form::label('final_date', 'date of finishing') !!}
                {!! Form::date('final_date',  isset($cert->final_date) && !empty($cert->final_date) ? $cert->final_date : '', ['class' => 'u-full-width' . (!empty($errors->get('final_date')) ? ' is-invalid' : ''), 'placeholder' => '']); !!}
            </div>
    </div>
        <div class="row">
            <div class="twelve columns">
                <button type="submit" name="get_cert" value="certificate" class="btn btn-info">
                    get certificate
                </button>
                <button type="submit"  class="btn btn-info">
                    @if(isset($id))
                        update
                    @else
                        add
                    @endif
                </button>
            </div>
        </div>
    {!! Form::close()  !!}


@endsection
