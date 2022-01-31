@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<div class="container  d-flex justify-content-center mr-lg-1">

    <div class="row  ">

        <div class="col-12  ">
            <div class="card ">
                <div class="card-header">


                    <a href="#" class="btn btn-dark "><i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp; Order details</a>
                </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Sno</th>
                                        <th>Email</th>
                                        <th>Order Id</th>
                                        <th>Product</th>
                                        <th>Amount</th>
                                        <th>Payment mode</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                    $sn=1;
                                    @endphp
                                    @foreach($data as $i)
                                    <tr>
                                        <td>{{$sn++}}</td>
                                        <td>{{$i->email}}</td>
                                        <td>{{$i->orderId}}</td>
                                        <td>{{$i->product_name}}</td>
                                        <td>{{$i->product_price}}</td>
                                        <td>{{$i->payment_mode}}</td>
                                        <td class="text-success">{{$i->status}}</td>
                                        <td>
                                            <a href="/orders/{{$i->id}}/edit" class="btn btn-danger"><i class="fas fa-pen"></i></a>
                                        </td>
                                    </tr>
                                    @endforeach

                                </tbody>
                            </table>
                            {{$data->links()}}
                       
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
@if(Session::has('msg'))
<script>
    toastr.success("{!! Session::get('msg')!!}")
</script>
@elseif (Session::has('err'))
<script>
    toastr.warning("{!! Session::get('err')!!}")
</script>
@endif

@endsection