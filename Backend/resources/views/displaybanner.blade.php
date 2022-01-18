@extends('layouts.app')

@section('content')
<div class="container d-flex justify-content-center mr-5">
   
            <div class="row w-75 ">

                <div class="col-12  ">
                    <div class="card ">
                        <div class="card-header">
                            
                            <div class="">
@if(Session::has('msg'))
<div class="alert alert-success">{{Session::get('msg')}}</div>

</div>

@endif

                            <a href="/banners/create" class="btn btn-dark btn-left ml-3 "><i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp; Add Banner</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered table-striped">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Sno</th>
                                        <th>Caption</th>
                                        <th>Image</th>
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
                                        <td>{{$i->caption}}</td>
                                        <td>
                                            <img src="{{url('uploads/'.$i->image_path)}}" height="50px" width="50px" />
                                        </td>
                                        <td>
                                        <form action="/banners/{{$i->id}}/" method="post">
                                                @csrf()
                                                @method('delete')
                                                <a href="/banners/{{$i->id}}/edit" class="btn btn-dark">Edit</a>
                                                <button type="submit" onclick="return confirm('Do you really want to delete banner')" class="btn btn-danger">
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
                <!-- /.col -->
            </div>
            <!-- /.row -->
        
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- @if(Session::has('msg'))
<script>
    toastr.success("{!! Session::get('msg')!!}")
</script>
@endif -->
@if (session('status') === "success")

<!-- toastr success -->
<script>
    toastr.success("msg");
</script>

@elseif (session('status') === "failed")

<!-- toastr danger  -->
<script>
    toastr.error("error");
</script>
@endif
@endsection