@extends('layouts.app')
@section('content')
<div class="container">
  <div class="row">
    <div class="col-md-3">
      <div class="list-group">
      <span class="container" style="text-align:center">
        <h3>My Contacts</h3>
      </span>
      <?php $selected_group_id = Request::get('group_id'); ?>
        <a href="{{ route('contacts.index') }}" class="list-group-item {{ empty($selected_group_id) ? 'active':'' }}">All Contact<span class="badge badge-primary">{{ App\Contact::count() }}</span></a>
         @foreach (App\Group::all() AS $group)
        <a href="{{ route('contacts.index', ['group_id' => $group->id]) }}" class="list-group-item {{ ($selected_group_id == $group->id) ? 'active':'' }}">{{ $group->name }}<span class="badge badge-primary">{{ $group->contacts->count() }}</span></a>
        @endforeach
      </div>
    </div>
    <div class="col-md-9">
      @if (session('message'))
        <div class="alert alert-success">
          {{ session('message') }}
        </div>
      @endif
      <a href="{{ route('contacts.create') }}" class="btn btn-primary pull-right">
            <i class="glyphicon glyphicon-plus"></i>
              Add Contact
      </a>
      @yield('content')
    </div>
  </div>
</div>
@endsection