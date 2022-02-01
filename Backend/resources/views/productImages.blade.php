@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Content Header (Page header) -->
<div class="content-wrapper">

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card card-outline card-dark">
                        <div class="card-header">
                            <h3 class="card-title"> Images</h3>

                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">

                            <div class="row">
                                @foreach ($product as $image)
                                <div class="col-md-4">
                                    <div class="card mb-4">
                                        <div class="card-body p-2 text-right">
                                            <a href="/productImages/{{$image->id}}" class=""><i class="fa fa-times text-dark" aria-hidden="true"></i>
                                            </a>
                                        </div>
                                        <img class="card-img-top" style="height: 330px; width: 100%; display: block; object-position: center; object-fit: cover" src="{{ asset('/uploads/' . $image->image_path) }}" data-holder-rendered="true">

                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->
    <!-- /.content-wrapper -->
    <!-- Delete model -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    @if(Session::has('msg'))
    <script>
        toastr.warning("{!! Session::get('msg')!!}")
    </script>
    @elseif (Session::has('err'))
    <script>
        toastr.warning("{!! Session::get('err')!!}")
    </script>
    @endif
    @endsection
</div>