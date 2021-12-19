<?php
use Carbon\Carbon; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Shop</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="{{ asset('css/shop/css/styles.css') }}" rel="stylesheet" />
</head>

<body>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="#!"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    <li class="nav-item"><a class="nav-link active" aria-current="page"
                            href="{{ url('/') }}">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#!">All Products</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                            <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                        </ul>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
    <header class="bg-dark py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">Search</h1>
                <form class="forms-sample" action="{{ route('searchproduct') }}" method="post">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-4">
                            <label>Expiry date</label>
                            <input type="date" class="form-control" id="name" name="expiry_date">
                        </div>
                        <div class="col-4">
                            <label>category</label>
                            <select class="form-control" name="category">
                                <option value="0">Any</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-4">
                            <label>Name</label>
                            <input type="text" class="form-control" id="name" name="product_name">
                        </div>
                        <div class="col-12 mt-3">
                            <button type="submit" class="btn btn-primary me-2">Search</button>
                            <a href="{{ route('shop.index') }}" class="btn btn-success me-2">Reset</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </header>
    <!-- Section-->
    <section class="py-5">

        <div class="container px-4 px-lg-5 mt-5">
            <div class="row mb-5">
                <div class="col-12">
                    <div class="dropdown">
                        <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuSizeButton2"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Sort by
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuSizeButton2" style="">

                            <a class="dropdown-item" href="{{ route('sortNamedesc') }}">Name Z-A</a>
                            <a class="dropdown-item" href="{{ route('sortNameasc') }}">Name A-Z</a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                @foreach ($products as $product)
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" 
                            @if ($product->picture)
                            src="{{ URL::to('/') }}/products_images/{{ $product->user_id }}/{{ $product->picture }}"
                        @else
                            src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                @endif
                alt="..." />
                <div class="card-body p-4">
                    <div class="text-center">
                        <h5 class="fw-bolder">{{ $product->name }}</h5>
                        <h6>{{ $product->category->name }}</h6>
                        <span
                            class="text-danger">{{ Carbon::parse($product->expiry_date)->format('d M Y') }}</span><br>
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
                        SP {{ $price }}
                    </div>
                    <div class="text-center">
                        <i class="bi bi-eye"></i> {{ $product->views }}
                    </div>
                    <div class="text-center">
                        <i class="bi bi-star"></i> {{ $product->likes->count() }}
                    </div>
                    <div class="text-center">
                        Comments ({{ $product->comments->count() }})
                    </div>
                </div>
                <!-- Product actions-->
                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    <div class="text-center">
                        <a class="btn btn-outline-dark mt-auto" href="{{ route('shop.show', $product->id) }}">View
                            options</a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach


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
    <script src="{{ asset('js/shop/js/scripts.js') }}"></script>
</body>

</html>
