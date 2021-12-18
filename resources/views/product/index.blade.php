@extends('layouts.master')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        @if (session()->has('delete'))
            <div class="alert alert-success">Item Deleted Successfully</div>
        @endif
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Users</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>expiry_date</th>
                                <th>phone</th>
                                <th>quantity</th>
                                <th>price</th>
                                <th>price1</th>
                                <th>price2</th>
                                <th>price3</th>
                                <th>user</th>
                                <th>category</th>
                                <th>action</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>expiry_date</th>
                                <th>phone</th>
                                <th>quantity</th>
                                <th>price</th>
                                <th>price1</th>
                                <th>price2</th>
                                <th>price3</th>
                                <th>user</th>
                                <th>category</th>
                                <th>actoin</th>
                            </tr>
                        </tfoot>
                        <tbody>



                            @foreach ($products as $product)
                                <tr>
                                    <td>{{ $product->id }}</td>
                                    <td>{{ $product->name }}</td>
                                    <td>{{ $product->expiry_date }}</td>
                                    <td>{{ $product->phone }}</td>
                                    <td>{{ $product->quantity }}</td>
                                    <td>{{ $product->price }}</td>
                                    <td>{{ $product->price1 }}</td>
                                    <td>{{ $product->price2 }}</td>
                                    <td>{{ $product->price3 }}</td>
                                    <td>{{ $product->user->name }}</td>
                                    <td>{{ $product->category->name }}</td>
                                    <td><a class="btn btn-success" href="{{ route('product.show', $product) }}">Details</a> ||
                                        <a class="btn btn-primary" href="{{ route('product.edit', $product) }}">Edit</a> ||
                                        <form class="mt-1" action="{{ route('product.destroy', $product) }}" method="POST">
                                            @csrf
                                            @method("DELETE")
                                            <button type="submit" class="btn btn-danger">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
@endsection
