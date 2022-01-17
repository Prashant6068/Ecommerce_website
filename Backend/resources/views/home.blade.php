@extends('layouts.app')

@section('content')
<div class="container mt-3 mr-4">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header bg-dark">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('You are logged in!') }}  <strong class="text-capitalize">{{ Auth::user()->first_name }}<strong>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
