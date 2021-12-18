

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
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="name">name</label>
                      <input type="text" class="form-control" id="name" value="{{$product->name}}" >
                    </div>
                    <div class="form-group">
                      <label for="expiry_date">expiry date</label>
                      <input type="date" class="form-control" id="expiry_date" value="{{$product->expiry_date}}">
                    </div>
                    <div class="form-group">
                      <label for="phone">phone</label>
                      <input type="phone" class="form-control" id="phone" value="{{$product->phone}}">
                    </div>
                    <div class="form-group">
                      <label for="quantity">quantity</label>
                      <input type="number" class="form-control" id="quantity" value="{{$product->quantity}}">
                    </div>
                    <div class="form-group">
                      <label for="price">original price</label>
                      <input type="number" class="form-control" id="price" value="{{$product->price}}">
                    </div>
                    <div class="form-group">
                      <label for="price1">Price when the product is valid more than 30 days</label>
                      <input type="number" class="form-control" id="price1"  value="{{$product->price1}}">
                    </div>
                    <div class="form-group">
                      <label for="price2">Price when the product is valid more than 15 days and less than 30 days</label>
                      <input type="number" class="form-control" id="price2" value="{{$product->price2}}">
                    </div>
                    <div class="form-group">
                      <label for="price3">Price when the product is valid less than 30 days</label>
                      <input type="number" class="form-control" id="price3" value="{{$product->price3}}">
                    </div>
                    <div class="form-group" >
                      <label>category</label>
                      <select class="form-control">
                        <option value="AL" >Alabama</option>
                      </select>
                     </div>
                    <div class="form-group">
                      <label for="picture">picture</label>
                      <input type="file" class="form-control" id="picture">
                    </div>
                  
                    <button type="submit" class="btn btn-primary me-2">Submit</button>
                    <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
          </div>
  
      </div>
      <!-- /.container-fluid -->
  @endsection