<!doctype html>
<html>
@include('admin.includes.head')

<body>
    <div class="container">
        <div class="card card-dark">


            <div class="card-header  text-center"><img src="https://cdn5.vectorstock.com/i/thumb-large/36/64/user-account-box-glyph-icon-vector-28873664.jpg" width="100" height="100"></div>

            <!-- /.card-header -->
            <form method="POST" action="{{ route('login') }}">
                @csrf


                <div class="card-body">
                    <div class="form-group row">
                        <label for="email" class="col-sm-2 col-form-label">{{ __('Email') }}</label>
                        <div class="col-sm-10">
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="password" class="col-sm-2 col-form-label">{{ __('Password') }}</label>
                        <div class="col-sm-10">

                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="offset-sm-2 col-sm-6">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label class="form-check-label" for="remember">
                                    {{ __('Remember Me') }}
                                </label>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <button type="submit" class="btn btn-dark w-15"> {{ __('Login') }}</button>

                </div>
                <!-- /.card-footer -->
            </form>
        </div>
    </div>


    @include('admin.includes.foot')
</body>

</html>
<style>
    .container {
        width: 700px;
        margin-top: 40px;
    }
</style>