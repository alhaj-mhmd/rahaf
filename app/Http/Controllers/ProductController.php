<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use App\Models\User;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {



        $id = Auth::id();
        $products = User::find($id)->products;
        return view('product.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $id = Auth::id();
        $categories = Category::where('user_id', '=', "$id")->get();
        return view('product.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreProductRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $id = Auth::id();
        if ($request->hasFile('picture')) {
            $this->validate($request, [
                'picture' => 'mimes:jpeg,png,jpg',
            ]);

            $image = $request->file('picture');
           
          

            $imageName = $request->picture->getClientOriginalName();
            $request->picture->move(public_path('products_images/'. $id), $imageName);
        } else {
            $imageName = '';
        }

        $category = Product::create([
            'name' =>  $request->name,
            'expiry_date' =>  $request->expiry_date,
            'phone' =>  $request->phone,
            'quantity' =>  $request->quantity,
            'description' =>  $request->description,
            'picture' => $imageName,
            'price1' =>  $request->price1,
            'price2' =>  $request->price2,
            'price3' =>  $request->price3,
            'category_id' =>  $request->category_id,
            'user_id' =>  $id,
        ]);



        session()->flash('create');
        $products = User::find($id)->products;
        return view('product.index', compact('products'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        $product = Product::find($product->id);
        return view('product.show', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {

        $product = Product::find($product->id);
        return view('product.edit', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProductRequest  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product = Product::find($product->id);
        $product->delete();
        session()->flash('delete');
        return redirect()->route('product.index');
    }
}
