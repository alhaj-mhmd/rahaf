@extends('layouts.master')

@section('content')
    <!-- Begin Page Content -->
    <div class="container">
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Products</h6>
            </div>
            <div class="card-body">
                <h4 class="card-title">Edit Product</h4>
                <form class="forms-sample" action="{{route('product.update',$product->id)}}" method="post">
                  {{ method_field('patch') }}
                  {{ csrf_field() }}
                  <input type="hidden" name="product_id" value="{{$product->id}}">
                    <div class="form-group">
                        <label for="name">name</label>
                        <input type="text" class="form-control" id="name" placeholder="name" name="name" value="{{$product->name}}" >
                    </div>
                    <div class="form-group">
                        <label for="description">description</label>
                        <textarea name="description" class="form-control" id="" cols="30" rows="2" value="{{$product->description}}" ></textarea>
                    </div>
                  
                    <div class="form-group">
                        <label for="phone">phone</label>
                        <input type="phone" class="form-control" id="phone" placeholder="phone" name="phone" value="{{$product->phone}}" >
                    </div>
                    <div class="form-group">
                        <label for="quantity">quantity</label>
                        <input type="number" class="form-control" id="quantity" placeholder="quantity" name="quantity" value="{{$product->quantity}}">
                    </div>

                    <div class="form-group">
                        <label for="price1">Price when the product is valid more than 30 days</label>
                        <input type="number" class="form-control" id="price1" name="price1" value="{{$product->price1}}">
                    </div>
                    <div class="form-group">
                        <label for="price2">Price when the product is valid more than 15 days and less than 30 days</label>
                        <input type="number" class="form-control" id="price2" name="price2" value="{{$product->price2}}">
                    </div>
                    <div class="form-group">
                        <label for="price3">Price when the product is valid less than 30 days</label>
                        <input type="number" class="form-control" id="price3" name="price3" value="{{$product->price3}}">
                    </div>
                    <div class="form-group">
                        <label>category</label>
                        <select class="form-control" name="category_id">
                            @foreach ($categories as $category)
                                <option value="{{ $category->id }}" @if ($category->id == $product->id)
                                    {{ 'selected' }}
                            @endif >{{ $category->name }}</option>
                            @endforeach
                        </select>
                    </div>




                    <button type="submit" class="btn btn-primary me-2">Submit</button>
                    <button class="btn btn-light">Cancel</button>
                </form>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
@endsection
