<?php

namespace App\Http\Controllers;

use App\Models\Shop;
use App\Models\Product;
use App\Http\Requests\StoreShopRequest;
use App\Http\Requests\UpdateShopRequest;
use App\Models\Category;
use App\Models\Like;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all();
        $categories = Category::all();
        return view('shop', compact(['products', 'categories']));
    }

    public function searchProduct(Request $request)
    {
        $conditions = array();
        if ($request->product_name) {
            $name = $request->product_name;
            array_push($conditions, ['name', 'like', "%$name%"]);
        }

        if ($request->category && $request->category != 0 ) {
            $category = $request->category;
            array_push($conditions, ['category_id', '=', "$category"]);
        }
        if ($request->expiry_date  ) {
            $expiry_date = $request->expiry_date;
            array_push($conditions, ['expiry_date', '=', "$expiry_date"]);
        }




        $products = Product::select('*')->where($conditions)->get();

        $categories = Category::all();
        return view('shop', compact(['products', 'categories']));
    }

      public function sortNamedesc()
    {
        $products = Product::orderBy('name', 'DESC')->get();;
        $categories = Category::all();
        return view('shop', compact(['products', 'categories']));
    }
      public function sortNameasc()
    {
        $products = Product::orderBy('name', 'ASC')->get();;
        $categories = Category::all();
        return view('shop', compact(['products', 'categories']));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreShopRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $like = Like::create([
            'product_id' =>  $request->product_id
        ]);
        session()->flash('create');
        return redirect()->route('shop.show', [$request->product_id]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Shop  $shop
     * @return \Illuminate\Http\Response
     */
    public function show($product_id)
    {

        $product = Product::find($product_id);

        DB::table('products')->where('id', '=', $product_id)->increment('views');
        session()->flash('create');

        return view('shop-item', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Shop  $shop
     * @return \Illuminate\Http\Response
     */
    public function edit(Shop $shop)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateShopRequest  $request
     * @param  \App\Models\Shop  $shop
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Shop  $shop
     * @return \Illuminate\Http\Response
     */
    public function destroy(Shop $shop)
    {
        //
    }
}
