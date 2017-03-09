<?php

use App\Permission;
use Illuminate\Database\Seeder;

class PermissionsSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Permission::class, 10)->create();
    }
}
