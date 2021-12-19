<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\User;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
       //  $table->string('picture')->nullable();;
       
       
        $users = User::pluck('id')->toArray();
        $categories = Category::pluck('id')->toArray();
            
        return [

            'name' => $this->faker->name(),
            'expiry_date' => $this->faker->dateTimeBetween('+0 days', '+2 years'),
            'description' => $this->faker->text(),
            'views' => $this->faker->randomDigit(),
            'quantity' => $this->faker->randomDigit(),
            'views' => $this->faker->randomDigit(),
            'price1' => $this->faker->randomDigit(),
            'price2' => $this->faker->randomDigit(),
            'price3' => $this->faker->randomDigit(),
            'user_id' => $this->faker->randomElement($users),
            'category_id' => $this->faker->randomElement($categories),
        ];
   
    }
}
