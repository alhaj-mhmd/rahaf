@extends('layouts.master')
@section('css')
    <!--- Internal Select2 css-->
    <link href="{{ URL::asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
    <!---Internal Fileupload css-->
    <link href="{{ URL::asset('assets/plugins/fileuploads/css/fileupload.css') }}" rel="stylesheet" type="text/css" />
    <!---Internal Fancy uploader css-->
    <link href="{{ URL::asset('assets/plugins/fancyuploder/fancy_fileupload.css') }}" rel="stylesheet" />
    <!--Internal Sumoselect css-->
    <link rel="stylesheet" href="{{ URL::asset('assets/plugins/sumoselect/sumoselect-rtl.css') }}">
    <!--Internal  TelephoneInput css-->
    <link rel="stylesheet" href="{{ URL::asset('assets/plugins/telephoneinput/telephoneinput-rtl.css') }}">
@endsection
@section('title')
    {{ __('messages.add_product') }}
@stop

@section('page-header')
    <!-- breadcrumb -->
    <div class="breadcrumb-header justify-content-between">
        <div class="my-auto">
            <div class="d-flex">
                <h4 class="content-title mb-0 my-auto"> {{ __('messages.products') }}</h4>
                <span class="text-muted mt-1 tx-13 mr-2 mb-0">/
                    {{ __('messages.add_product') }}
                </span>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->
@endsection
@section('content')
    <!-- row -->
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('products.store') }}" method="post" enctype="multipart/form-data"
                        autocomplete="off">
                        {{ csrf_field() }}
                        <div class="row">
                            <div class="col">
                                <label for="name"> {{ __('messages.name') }}</label>
                                <input type="text" class="form-control" id="name" name="name" required>
                            </div>

                            <div class="col">
                                <label> {{ __('messages.expiry') }} </label>
                                <input class="form-control fc-datepicker" name="expiry" placeholder="YYYY-MM-DD" type="text"
                                    value="{{ date('Y-m-d') }}" required>
                            </div>

                            <div class="col">
                                <label for="category"> {{ __('messages.category') }}</label>
                                <select name="Section" class="form-control SlectBox" onclick="console.log($(this).val())"
                                    onchange="console.log('change is firing')">
                                    <option value="" selected disabled> </option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}"> {{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col">
                                <label> {{ __('messages.quantity') }}</label>
                                <input class="form-control" name="quantity" type="number" required>
                            </div>

                        </div>

                        <div class="row mt-4">
                            <div class="col">
                                <label> {{ __('messages.phone') }}</label>
                                <input class="form-control" name="phone" type="tel" required>
                            </div>

                            <div class="col">
                                <label for="facebook"> {{ __('messages.facebook') }}</label>
                                <input type="text" class="form-control" id="facebook" name="facebook">
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col">
                                <label for="price"> {{ __('messages.original_price') }}</label>
                                <input type="number" class="form-control" id="price" name="price">
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col">
                                <b class="mb-4">Price - Phase one</b>
                                <br>
                                <label for="discount1"> {{ __('messages.discount') }}</label>
                                <input type="number" class="form-control" name="discount1" placeholder="30%">
                                <br>
                                <label for="expiry1"> {{ __('messages.remaining_days') }}</label>
                                <input type="number" class="form-control" name="expiry1" placeholder="it is 30 days or more">
                            </div>
                            <div class="col">
                                <b>Price - Phase tow</b>
                                <br>
                                <label for="discount2"> {{ __('messages.discount') }}</label>
                                <input type="number" class="form-control" name="discount2" placeholder="50%">
								<br>
                                <label for="expiry2"> {{ __('messages.remaining_days') }}</label>
                                <input type="number" class="form-control" name="expiry2" placeholder="it is 15 days or more">
                            </div>
                            <div class="col">
                                <b>Price - Phase three</b>
                                <br>
                                <label for="discount3"> {{ __('messages.discount') }}</label>
                                <input type="number" class="form-control" name="discount3" placeholder="70%">
								<br>
                                <label for="expiry3"> {{ __('messages.remaining_days') }}</label>
                                <input type="number" class="form-control" name="expiry3" placeholder="less than 15 days or more">
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-sm-12 col-md-12">
                                <span> {{ __('messages.picture') }}</span><br>
                                <span class="text-danger"> jpeg , jpg , png </span>
                                <input type="file" name="picture" class="dropify"
                                    accept=".jpg, .png, image/jpeg, image/png" data-height="70" />
                            </div><br>
                        </div>
                        <div class="row mt-4">
                            <div class="d-flex justify-content-center">
                                <button type="submit" class="btn btn-primary"> {{ __('messages.submit') }}</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

    </div>

    <!-- row closed -->
    </div>
    <!-- Container closed -->
    </div>
    <!-- main-content closed -->
@endsection
@section('js')
    <!-- Internal Select2 js-->
    <script src="{{ URL::asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <!--Internal Fileuploads js-->
    <script src="{{ URL::asset('assets/plugins/fileuploads/js/fileupload.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/fileuploads/js/file-upload.js') }}"></script>
    <!--Internal Fancy uploader js-->
    <script src="{{ URL::asset('assets/plugins/fancyuploder/jquery.ui.widget.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/fancyuploder/jquery.fileupload.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/fancyuploder/jquery.iframe-transport.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/fancyuploder/jquery.fancy-fileupload.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/fancyuploder/fancy-uploader.js') }}"></script>
    <!--Internal  Form-elements js-->
    <script src="{{ URL::asset('assets/js/advanced-form-elements.js') }}"></script>
    <script src="{{ URL::asset('assets/js/select2.js') }}"></script>
    <!--Internal Sumoselect js-->
    <script src="{{ URL::asset('assets/plugins/sumoselect/jquery.sumoselect.js') }}"></script>
    <!--Internal  Datepicker js -->
    <script src="{{ URL::asset('assets/plugins/jquery-ui/ui/widgets/datepicker.js') }}"></script>
    <!--Internal  jquery.maskedinput js -->
    <script src="{{ URL::asset('assets/plugins/jquery.maskedinput/jquery.maskedinput.js') }}"></script>
    <!--Internal  spectrum-colorpicker js -->
    <script src="{{ URL::asset('assets/plugins/spectrum-colorpicker/spectrum.js') }}"></script>
    <!-- Internal form-elements js -->
    <script src="{{ URL::asset('assets/js/form-elements.js') }}"></script>

    <script>
        var date = $('.fc-datepicker').datepicker({
            dateFormat: 'yy-mm-dd'
        }).val();
    </script>

    <script>
        $(document).ready(function() {
            $('select[name="Section"]').on('change', function() {
                var SectionId = $(this).val();
                if (SectionId) {
                    $.ajax({
                        url: "{{ URL::to('section') }}/" + SectionId,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            $('select[name="product"]').empty();
                            $.each(data, function(key, value) {
                                $('select[name="product"]').append('<option value="' +
                                    value + '">' + value + '</option>');
                            });
                        },
                    });

                } else {
                    console.log('AJAX load did not work');
                }
            });

        });
    </script>





@endsection
