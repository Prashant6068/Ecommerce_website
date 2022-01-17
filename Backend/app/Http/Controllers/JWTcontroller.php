<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

use App\Mail\Registermail;
use Illuminate\Support\Facades\Mail;
use App\Mail\Testmail;
use Illuminate\Support\Facades\Validator;

class JWTcontroller extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            "first_name" => 'required|string',
            "last_name" => "required|string",
            "email" => "required|email|unique:users",
            "password" => "required|min:6",

        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors());
        } else {
            $user = User::insert([
                "first_name" => $request->first_name,
                "last_name" => $request->last_name,
                "email" => $request->email,
                "password" => Hash::make($request->password)
            ]);
            Mail::to($request->email)->send(new Registermail($request->all()));
            Mail::to("pm2792493@gmail.com")->send(new Registermail($request->all()));
            return response()->json([
                'message' => 'User create successfully',
                'user' => $user
            ], 201);
        }
    }
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|min:6'
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors());
        } else {
            if (!$token = auth()->guard('api')->attempt($validator->validated())) {
                return response()->json(['error' => 'Unauthorized'], 401);
            }
            // return $this->respondWithToken($token);
            return response()->json(['error' => 0, 'access_token' => $token, 'email' => $request->email], 200);
        }
    }
    public function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->guard('api')->factory()->getTTL() * 60
        ]);
    }
    public function logout()
    {
        auth()->guard('api')->logout();
        return response()->json(["message" => "User Logout Successfully"]);
    }
}
