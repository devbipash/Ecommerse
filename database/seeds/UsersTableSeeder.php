<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'role_id' => 1,
                'name' => 'Admin',
                'email' => 'admin@admin.com',
                'avatar' => 'users/default.png',
                'email_verified_at' => NULL,
                'password' => '$2y$10$qCXcSR1ly8vT4uJR4G4gdukq.M.DefPT3GyApBWQLnD5y.qjEubpO',
                'remember_token' => 'LffDmxfJmsP3T9aJdm7wCizqdTsAvTw7lO2AxFEyRGgFaFBJG7tNVA6C4Gz7',
                'settings' => NULL,
                'created_at' => '2020-07-03 05:14:36',
                'updated_at' => '2020-07-03 05:14:36',
            ),
        ));
        
        
    }
}