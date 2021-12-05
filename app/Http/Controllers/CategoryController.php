<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CategoryController extends Controller
{
    

// Retrieve the currently authenticated user...
// $user = Auth::user();

// Retrieve the currently authenticated user's ID...
// $id = Auth::id();

// $flights = Flight::where('active', 1)
//                ->orderBy('name')
//                ->take(10)
//                ->get();

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::where('user_id', Auth::id())->get();
        return view('categories.categories', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('categories.create_category');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|unique:categories|max:255',
        ],[

            'name.required' =>'يرجي ادخال اسم الصنف',
            'name.unique' =>'اسم الصنف مسجل مسبقا',


        ]);

            Category::create([
                'name' => $request->name,
                'user_id' => (Auth::id()),

            ]);
            session()->flash('Add', 'تم اضافة الصنف بنجاح ');
            return redirect('/categories');
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        
        $id = $request->category_id;
     
        Category::find($id)->delete();
        session()->flash('delete','تم حذف القسم بنجاح');
        return redirect('/categories');
    }
}
