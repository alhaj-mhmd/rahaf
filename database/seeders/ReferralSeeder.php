<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Referral;

class ReferralSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Referral::factory()->count(500)->create();
    }
}
