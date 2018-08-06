<?php

use Illuminate\Database\Seeder;

class GroupsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('groups')->truncate();
        $groups = [
         	['id'=>1, 'name'=>'Family', 'created_at'=>new DateTime],
         	['id'=>2, 'name'=>'Friends', 'created_at'=>new DateTime],
         	['id'=>3, 'name'=>'Office', 'created_at'=>new DateTime],
         ];
         DB::table('groups')->insert($groups);
    }
}
