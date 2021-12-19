 @extends('layouts.master')

 @section('content')

     <!-- Product section-->
     <section class="py-5">
         <div class="container">
             <div class="row">
                 <div class="col-md-3"><img class="card-img-top mb-5 mb-md-0"
                         src="{{ URL::to("/") }}/products_images/{{$product->user_id}}/{{$product->picture}}" alt="..." /></div>
                 <div class="col-md-9">
                     <div class="card">
                         <div class="card-body">
                             <h4 class="card-title">{{ $product->name }}</h4>
                             <div class="table-responsive">
                                 <table class="table">
                                     <thead>
                                         <tr>
                                             <th>expiry_date</th>
                                             <th>phone</th>
                                             <th>quantity</th>
                                             <th>price</th>
                                             <th>price1</th>
                                             <th>price2</th>
                                             <th>price3</th>
                                             <th>category</th>
                                             <th>created</th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                         <tr>
                                             <td>{{ $product->expiry_date }}</td>
                                             <td>{{ $product->phone }}</td>
                                             <td>{{ $product->quantity }}</td>
                                             <td>{{ $product->price }}</td>
                                             <td>{{ $product->price1 }}</td>
                                             <td>{{ $product->price2 }}</td>
                                             <td>{{ $product->price3 }}</td>
                                             <td>{{ $product->category->name }}</td>
                                             <td>{{ $product->created_at }}</td>
                                         </tr>

                                     </tbody>
                                 </table>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>

 @endsection
