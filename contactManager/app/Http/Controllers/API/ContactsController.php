<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contact;
use App\Group;
use Auth;

class ContactsController extends Controller
{
    public function index()
    {
        return Contact::all();
    }

    public function show(Contact $contact)
    {
        return $contact;
    }

    public function store(Request $request)
    {
        $contact = Contact::create($request->all());
        return response()->json($contact, 201);
    }

    public function update(Request $request, Contact $contact)
    {
        $contact->update($request->all());
        return response()->json($contact, 200);
    }

    public function delete(Contact $ontact)
    {
        $contact->delete();
        return response()->json(null, 204);
    }
}
