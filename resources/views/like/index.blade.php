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
                <h6 class="m-0 font-weight-bold text-primary">Likes</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>producat</th>
                            
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>producat</th>
                            
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach ($likes as $like)
                                <tr>
                                    <td>{{ $like->id }}</td>
                                    <td>{{ $like->product->name }}</td>
                                  
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
