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

    <div>
    @if(Session::has('msg'))
<div class="alert alert-success">{{Session::get('msg')}}</div>


</div>
@endif
<div class="container">
    <form method="POST" action="/products" class=" border rounded shadow" enctype="multipart/form-data">
        <h2 class="text-center text-dark">Products</h2>
        @csrf()
        <div class="form-group">
        Category
        <select name="category" class="form-control">
            <option value="">select category</option>
            @if($errors->has('category'))
        <label class="text-danger">{{$errors->first('category')}}</label>
        @endif
            @foreach($data as $i)
            <option value={{$i->id}}>{{$i->name}}</option>
            @endforeach
           
        </select>
        </div>
        <div class="form-group">
        Product<input type="text" class="form-control" name="name" />
        @if($errors->has('name'))
        <label class="text-danger">{{$errors->first('name')}}</label>
        @endif
        </div>
        <div class="form-group">
            @php
            function unique_code($limit)
            {
            return substr(base_convert(sha1(uniqid(mt_rand())), 8, 36), 0, $limit);
            }
            @endphp
            Product Code
            <input id="code" type="text" class="form-control " name="product_id" value="@php echo unique_code(16); @endphp" readonly>
        </div>
        <div class="form-group">
        Quantity <input type="number" class="form-control" name="quantity" />
        @if($errors->has('quantity'))
        <label class="text-danger">{{$errors->first('quantity')}}</label>
        @endif
        </div>
        <div class="form-group">
        Price <input type="number" class="form-control" name="price" />
        @if($errors->has('price'))
        <label class="text-danger">{{$errors->first('price')}}</label>
        @endif
        </div>
        <div class="form-group">
        Sale price <input type="number" class="form-control" name="sale" />
        @if($errors->has('sale'))
        <label class="text-danger">{{$errors->first('sale')}}</label>
        @endif
        </div>
        <div class="form-group">
        Features<textarea class="form-control" name="features"></textarea>
        @if($errors->has('features'))
        <label class="text-danger">{{$errors->first('features')}}</label>
        @endif
        </div>

        
            <h6> Status</h6>
        
        <div class="form-check-inline">
            
            <label class="form-check-label">
                <input type="radio" class="form-check-input" name="status" value="1">Active
            </label>
           
        </div>
        <div class="form-check-inline">
            <label class="form-check-label">
                <input type="radio" class="form-check-input" name="status" value="0">Inactive
            </label>
        </div><br>
        @if($errors->has('status'))
        <label class="text-danger">{{$errors->first('status')}}</label>
        @endif<br /><br>
        <div class="form-group">
        Image
        <input type="file" class="form-control" name="image[]" multiple>
        @if($errors->has('image'))
        <label class="text-danger">{{$errors->first('image')}}</label>
        @endif
        <div class="text-center mt-2">
            <input type="submit" class="btn btn-dark btn-block" value="submit" /><br>
            
        </div>
    </form>

</div>
@endsection