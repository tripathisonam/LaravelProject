@extends('layouts.main')
@section('in-content')
<div class="panel panel-default">
  <div class="panel-heading">
     Edit Contact
  </div>
  {{ Form::model($contact,['method' => 'PATCH', 'route' => ['contacts.update', $contact->id]]) }}
  @include('contacts.form')
  {{ Form::close() }}
</div>
  @endsection