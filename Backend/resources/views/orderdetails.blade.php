@extends('layouts.app')
<style>
   
</style>
@section('content')
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
                                            <a href="/orders/{{$i->id}}/edit" class="btn btn-danger">Edit</a>
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

@endsection