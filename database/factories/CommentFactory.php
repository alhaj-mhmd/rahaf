<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class CommentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
       
        $users = User::pluck('id')->toArray();
        $products = Product::pluck('id')->toArray();
            
        return [

            'comment' => $this->faker->text(),
            'user_id' => $this->faker->randomElement($users),
            'product_id' => $this->faker->randomElement($products),
        ];
    }
}
