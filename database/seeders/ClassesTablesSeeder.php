<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClassesTablesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('classes')->insert([
            ["libelle" => "6eme"],
            ["libelle" => "5eme"],
            ["libelle" => "4eme"],
            ["libelle" => "3eme"],
            ["libelle" => "Seconde"],
            ["libelle" => "Premiere"],
            ["libelle" => "Terminal"],
        ]);
    }
}
