<?php
use Carbon\Carbon; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Product Details</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="{{ asset('css/shop-item/css/styles.css') }}" rel="stylesheet" />
</head>

<body>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    <li class="nav-item"><a class="nav-link active" aria-current="page"
                            href="{{ url('/') }}">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                    <li class="nav-item ">
                        <a class="nav-link" href="{{ route('shop.index') }}">Shop</a>

                    </li>
                </ul>

            </div>
        </div>
    </nav>
    <!-- Product section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="row gx-4 gx-lg-5 align-items-center">
                <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0"
                        src="https://dummyimage.com/600x700/dee2e6/6c757d.jpg" alt="..." /></div>
                <div class="col-md-6">
                    <h1 class="display-5 fw-bolder">{{ $product->name }}</h1>
                    <div class="fs-5 mb-5">
                        <?php
                        $date = Carbon::parse($product->expiry_date);
                        $now = Carbon::now();
                        $diff = $date->diffInDays($now);
                        if ($diff > 30) {
                            $price = $product->price1;
                        } elseif ($diff <= 30 && $diff > 15) {
                            $price = $product->price2;
                        } elseif ($diff < 15) {
                            $price = $product->price3;
                        }
                        ?>
                        <span> SP {{ $price }}</span><br>
                        <span><i class="bi bi-eye"></i> {{ $product->views }}</span><br>
                        <span><i class="bi bi-star"></i> {{ $product->likes->count() }}</span>
                    </div>
                    <p class="lead">{{ $product->description }}</p>
                    <form action="{{ route('shop.store') }}" method="post">
                        {{ csrf_field() }}
                        <input type="hidden" value="{{ $product->id }}" name="product_id">
                        <button type="submit" class="btn btn-danger"><i class="bi bi-suit-heart"></i></button>
                    </form>
                </div>
            </div>
        </div>
        </div>
    </section>
    <section class="py-5 bg-light">
        <div class="container px-4 px-lg-5 mt-5">
            <h2 class="fw-bolder mb-4">Comments ({{ $product->comments->count() }})</h2>
            <div class="row">
                @foreach ($product->comments as $comment)
                    <div class="col-12 mb-3">
                        <div class="card h-100">


                            <div class="card-body p-4">
                                <div>

                                    <h5 class="fw-bolder">{{ $comment->name }}</h5>
                                    {{ $comment->email }}
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="alert alert-primary">{{ $comment->comment }}</div>
                            </div>
                        </div>
                    </div>
                @endforeach
                <form action="{{ route('comment.store') }}" method="post">
                    {{ csrf_field() }}
                    <input type="hidden" name="product_id" value="{{$product->id}}">
                    <div class="col-12 mb-3">
                        <div class="card h-100">
                            <div class="card-body p-4">
                                <div class="form-group">
                                    <label for="name">name</label>
                                    <input type="text" class="form-control" name="name" id="">
                                </div>
                                <div class="form-group">
                                    <label for="email">email</label>
                                <input type="email" class="form-control" name="email" id="">
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="form-group">
                                <label for="comment">Comment</label>
                                <textarea class="form-control" name="comment" id="" cols="30" rows="3"></textarea>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary me-2">Submit</button>
                    </div>
            </div>
            </form>
        </div>
        </div>
    </section>

    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p>
        </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="{{ asset('js/shop-item/js/scripts.js') }}"></script>
</body>

</html>
