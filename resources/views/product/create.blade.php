

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
                <h4 class="card-title">Create Product</h4>
                <form class="forms-sample" action="{{route('product.store')}}" method="post" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="form-group">
                    <label for="name">name</label>
                    <input type="text" class="form-control" id="name" placeholder="name" name="name">
                  </div>
                  <div class="form-group">
                    <label for="description">description</label>
                     <textarea name="description" class="form-control" id="" cols="30" rows="2"></textarea>
                  </div>
                  <div class="form-group">
                    <label for="expiry_date">expiry date</label>
                    <input type="date" class="form-control" id="expiry_date" placeholder="expiry date" name="expiry_date">
                  </div>
                  <div class="form-group">
                    <label for="phone">phone</label>
                    <input type="phone" class="form-control" id="phone" placeholder="phone" name="phone">
                  </div>
                  <div class="form-group">
                    <label for="quantity">quantity</label>
                    <input type="number" class="form-control" id="quantity" placeholder="quantity" name="quantity">
                  </div>
                
                  <div class="form-group">
                    <label for="price1">Price when the product is valid more than 30 days</label>
                    <input type="number" class="form-control" id="price1" name="price1" >
                  </div>
                  <div class="form-group">
                    <label for="price2">Price when the product is valid more than 15 days and less than 30 days</label>
                    <input type="number" class="form-control" id="price2" name="price2">
                  </div>
                  <div class="form-group">
                    <label for="price3">Price when the product is valid less than 30 days</label>
                    <input type="number" class="form-control" id="price3" name="price3">
                  </div>
                  <div class="form-group" >
                    <label>category</label>
                    <select class="form-control" name="category_id">
                      @foreach ($categories as $category)
                      <option value="{{$category->id}}" >{{$category->name}}</option>
                      @endforeach
                    </select>
                   </div>
                  <div class="form-group">
                    <label for="picture">picture</label>
                    <input type="file" class="form-control" id="picture" name="picture">
                  </div>
                
                 
                 
                  <button type="submit" class="btn btn-primary me-2">Submit</button>
                  <button class="btn btn-light">Cancel</button>
                </form>
              </div>
        </div>

    </div>
    <!-- /.container-fluid -->
@endsection