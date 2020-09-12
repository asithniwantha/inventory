<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;

class SearchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('search.search');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function autocomplete(Request $request)
    {
        $data = Contact::select("first_name")
            ->where("first_name", "LIKE", "%{$request->input('query')}%")
            ->get();

        return response()->json($data);
    }
}
