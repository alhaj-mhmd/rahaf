<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class LikeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $products = Product::pluck('id')->toArray();
        return [
            'product_id' => $this->faker->randomElement($products),
        ];
    }
}
