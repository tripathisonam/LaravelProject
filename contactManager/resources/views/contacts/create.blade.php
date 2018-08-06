@extends('layouts.main')
@section('in-content')
<div class="panel panel-default">
  <div class="panel-heading">
     Add Contact
  </div>
  {{ Form::open(['route' => 'contacts.store']) }}
  @include('contacts.form')
  {{ Form::close() }}
</div>
  @endsection