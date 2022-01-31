@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<div class="container d-flex justify-content-center mr-5">
   
            <div class="row w-75 ">

                <div class="col-12  ">
                    <div class="card ">
                        <div class="card-header">
                            

                            <a href="/products/create" class="btn btn-dark btn-left ml-3"><i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;Add Product</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            
                            <table  class="table table-bordered table-striped">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Sno</th>
                                        <th> Name</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                        <th>Sale price</th>
                                        <th>Features</th>
                                        <th>Status</th>
                                        <th colspan="2">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                    $sn=1;
                                    @endphp
                                    @foreach($data as $i)
                                    <tr>
                                        <td>{{$sn++}}</td>
                                        <td>{{$i->name}}</td>
                                        <td>{{$i->quantity}}</td>
                                        <td>{{$i->price}}</td>
                                        <td>{{$i->sale_price}}</td>
                                        <td>{{$i->features}}</td>
                                        @if($i->status==1)
                                        <td class="text-success">Active</td>
                                        @else
                                        <td class="text-danger">Inactive</td>
                                        @endif
                                        <td>
                                            <a href="/products/{{$i->id}}/edit" class="btn btn-dark"><i class="fas fa-pen"></i></a>
                                        </td>
                                        <td>
                                            <form action="/products/{{$i->id}}/" method="post">
                                                @csrf()
                                                @method('delete')
                                                <button type="submit" onclick="return confirm('Do you really want to delete product!')" class="btn btn-danger">
                                                <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </form>

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