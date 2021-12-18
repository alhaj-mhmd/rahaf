<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class CategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
      
            $users = User::pluck('id')->toArray();
            
            return [
 
                'name' => $this->faker->name(),
                'user_id' =>501 // $this->faker->randomElement($users),
            ];
       
    }
}
