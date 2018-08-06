<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use App\Group;
use Auth;

class ContactsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private  $rules = [
            'name' => ['required', 'min:5'],
            'email' => ['required', 'email'],
            'company' => ['required'],
            'address' => ['required'],
            'phone' => ['required'],
        ];
    public function index(Request $request)
    {
        $user = Auth::user();
        session()->put('user_id', $user->id);
        //dd(session()->get('user_id'));
        if (($group_id = $request->get('group_id'))) { 
            $matchThese = ['group_id' => $group_id, 'user_id' => $user->id];
            $contacts = Contact::where($matchThese)->orderBy("id","desc")->paginate(5);
        }   else {
            $contacts = Contact::where('user_id',$user->id)->orderBy("id","desc")->paginate(5);
        }
        return view("contacts.index", [
            'contacts'=>$contacts
            ]);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function getGroups() {
        $groups = [];
        foreach (Group::all()  as $group) {
           $groups[$group->id] = $group->name;
        }
        return $groups;
    }

    public function create()
    {
        $groups = $this->getGroups();
        return view("contacts.create", compact('groups'));   
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        $this->validate($request, $this->rules);
        Contact::create($request->all());
        return redirect("contacts")->with("message","Added Successfully");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //  
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $groups = $this->getGroups();
        $contact = Contact::find($id);
        return view("contacts.edit", compact('groups', 'contact'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, $this->rules);
        $contact = Contact::find($id);
        $contact->update($request->all());
        return redirect("contacts")->with("message","Updated Successfully");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $contact = Contact::find($id);
        $contact->delete();
        return redirect("contacts")->with("message","Deleted Successfully");
    }
}
