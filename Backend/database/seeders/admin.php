<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class admin extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::insert([
            [
                "first_name" => "Admin",
                "last_name" => "admin",
                "email" => "admin@gmail.com",
                "password" => Hash::make('admin123'),
                "status" => 1,
                "role_type" => "admin",
            ],
            [
                "first_name" => "User",
                "last_name" => "user",
                "email" => "user@gmail.com",
                "password" => Hash::make('user123'),
                "status" => 1,
                "role_type" => "customer",
            ]
        ]);
    }
}
