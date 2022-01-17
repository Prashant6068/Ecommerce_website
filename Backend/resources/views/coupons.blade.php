@extends('layouts.app')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

@section('content')
<div class="container d-flex justify-content-center mr-5">
   
            <div class="row  ">

                <div class="col-12  ">
                    <div class="card ">
                        <div class="card-header">
                            
                


                            <a href="coupons/create" class="btn btn-dark "><i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp; Add Coupon</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered table-striped">
                            <thead class="thead-dark">
                                    <tr>
                                        <th>Sno</th>
                                        <th>Coupon Code</th>
                                        <th>Type</th>
                                        <th>Value</th>
                                        <th>Cart value</th>
                                        <th>Status</th>
                                        <th >Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                    $sn=1;
                                    @endphp
                                    @foreach($data as $i)
                                    <tr>
                                        <td>{{$sn++}}</td>
                                        <td>{{$i->code}}</td>
                                        <td>{{$i->type}}</td>
                                        <td>{{$i->value}}</td>
                                        <td>{{$i->cart_value}}</td>
                                        @if($i->status==1)
                                        <td class="text-success">Active</td>
                                        @else
                                        <td class="text-danger">In Active</td>
                                        @endif
                                        <td>
                                        <form action="/coupons/{{$i->id}}/" method="post">
                                                @csrf()
                                                @method('delete')
                                                <a href="/coupons/{{$i->id}}/edit" class="btn btn-dark">Edit</a>
                                                <button type="submit" onclick="return confirm('Do you really want to delete category!')" class="btn btn-danger">
                                                    Delete
                                                </button>
                                           

                                            
                                            </form>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- /.card-body -->
               
 
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
@if(Session::has('msg'))
<script>
    toastr.success("{!! Session::get('msg')!!}")
</script>
@endif
@endsection