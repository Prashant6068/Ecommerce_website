<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\configuration;

class configurationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = configuration::all();
        return view("configuration", compact("data"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('addConfiguration');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = $request->validate([
            'phone' => 'required',
            'adminEmail'=>'required|email',
            'notificationEmail'=>'required|email',
        ], [
            'phone.required'=>'*Phone no is required',
            'notificationEmail.required' => '*Email is required',
            'adminEmail.required' => '*Admin email is required',
        ]);
        $data = configuration::insert([
            "phone_no" => $request->phone,
            "admin_email" => $request->adminEmail,
            "notification_email" => $request->notificationEmail
        ]);
        return redirect("configuration");
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
        $data = configuration::find($id);
        return view("editconfiguration", compact("data"));
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
        configuration::where('id', $id)->update([
            "phone_no" => $request->phone,
            "admin_email" => $request->adminEmail,
            "notification_email" => $request->notificationEmail,
        ]);
        return redirect("configuration");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
