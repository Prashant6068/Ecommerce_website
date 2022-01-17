@extends('layouts.app')
@section('content')
<style>
    .container{
    display: flex;
    justify-content: center;
    
    margin-left: 200px;
  }
  form{
    padding:20px 30px 40px;
    width: 500px;
  }
</style>
<div class="container ">
    <div>
        @if(Session::has('msg'))
        <label>{{Session::get('msg')}}</label>
        @endif
    </div>
    <form method="post" action="/configuration" class="border rounded shadow">
        <h2 class="text-center text-dark">Add Configuration</h2>
        @csrf()
        <div class=" form-group ">
            Contact <input type="text" class="form-control" name="phone" />
            @if($errors->has('phone'))
            <label class="text-danger">{{$errors->first('phone')}}</label>
            @endif
        </div>
        <div class=" form-group ">
            Admin email <input type="email" class="form-control" name="adminEmail" />
            @if($errors->has('adminEmail'))
            <label class="text-danger">{{$errors->first('adminEmail')}}</label>
            @endif
        </div>
        <div class="form-group">
            Notification email <input type="email" class="form-control" name="notificationEmail" />
            @if($errors->has('notificationEmail'))
            <label class="text-danger">{{$errors->first('notificationEmail')}}</label>
            @endif
        </div>

        <div class="text-center mt-2">
            <input type="submit" class="btn btn-dark btn-block" value="submit" />
        </div>
    </form>

</div>
@endsection