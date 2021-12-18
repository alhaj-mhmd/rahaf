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
            'expiry_date' => $this->faker->dateTime(),
            //'phone' => $this->faker->phoneNumber(),
            'quantity' => $this->faker->randomDigit(),
            'price' => $this->faker->randomDigit(),
            'price1' => $this->faker->randomDigit(),
            'price2' => $this->faker->randomDigit(),
            'price3' => $this->faker->randomDigit(),
            'user_id' =>501 ,// $this->faker->randomElement($users),
            'category_id' => $this->faker->randomElement($categories),
        ];
   
    }
}
