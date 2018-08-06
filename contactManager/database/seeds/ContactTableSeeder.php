<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ContactTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('contacts')->truncate();

        $faker = Faker::create();
        $contacts = [];

        foreach (range(1,10) as $index) {
        	$contacts[] = [
        		'name' => $faker->name,
        		'company' => $faker->company,
        		'email' => $faker->email,
        		'phone' => $faker->phoneNumber,
        		'address' => "{$faker->streetName} {$faker->city}",
        		'group_id'=> rand(1,3),
        		'created_at' => new DateTime,
        		'updated_at' => new DateTime,
        	];
        }

         DB::table('contacts')->insert($contacts);
    }
}
