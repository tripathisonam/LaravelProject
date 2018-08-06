@extends('layouts.main')
@section('in-content')
<table class="table">
@if($contacts->count() > 0)
@foreach ($contacts as $contact)
          <tr>
            <td> 
              <div class="media">
                <div class="media-left">
                  <a href="#">
                    <img class="media-object" src="http://placehold.it/100x100" alt="Profile Photo">
                  </a>
                </div>
                <div class="media-body">
                  <h4 class="media-heading">{{ $contact->name }}</h4>
                  <address>
                    {{ $contact->address }}
                  </address>
                    {{ $contact->company }}
                  <br>
                  <strong>
                  <span class="glyphicon glyphicon-phone"></span>
                    {{ $contact->phone }}
                  <br>
                  </strong>
                    <i class="glyphicon glyphicon-envelope"></i>
                    {{ $contact->email }}
                </div>
              </div>
            </td>
            <td >
            {!! Form::open(['route' => ['contacts.destroy', $contact->id], 'method' => 'DELETE']) !!}
              <a href="{{ route('contacts.edit', ['id' => $contact->id])}}" class="btn btn-default" title="Edit">
                <i class="glyphicon glyphicon-pencil"></i>
              </a>
              </br>
              <button class="btn btn-danger" title="Delete" onclick="return confirm('Are you sure do you want to DELETE?')">
                <i class="glyphicon glyphicon-trash"></i>
              </button>
              {!! Form::close() !!}
            </td>
          </tr>
 @endforeach
      </table>
      <div class="text-center">
        <nav aria-label="Page navigation">
         {!! $contacts->appends( Request::query() )->render() !!}
        </nav>
      </div>
@else
  <tr>
       <td>
        <div class="alert alert-info">
          No contact found!! Click Add Contact button to proceed.
        </div>
       </td>
  </tr>
@endif
@endsection