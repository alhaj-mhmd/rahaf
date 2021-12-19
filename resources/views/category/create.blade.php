

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
                <form class="forms-sample" action="{{route('category.store')}}" method="post">
                  {{ csrf_field() }}
                  <div class="form-group">
                    <label for="name">name</label>
                    <input type="text" class="form-control" id="name" name="name">
                  </div>
                  <button type="submit" class="btn btn-primary me-2">Submit</button>
                  <button class="btn btn-light">Cancel</button>
                </form>
              </div>
        </div>

    </div>
    <!-- /.container-fluid -->
@endsection