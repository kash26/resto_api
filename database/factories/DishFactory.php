<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Origin;
use App\Models\Category;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Dish>
 */
class DishFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'origin_id' => Origin::all()->unique()->random()->id,
            'category_id' => Category::all()->unique()->random()->id,
            // 'name' => $this->faker->unique()->sentence(),
            'description' => $this->faker->text(),
            'preparation_time' => $this->faker->numberBetween(5, 35),
            'price' => $this->faker->numberBetween(3, 89),
            'name' => $this->faker->randomElement(
                [
                    'Fufu',
                    'Saka-Saka',
                    'Pondu',
                    'Ntaba',
                    'Soupes',
                    'Poissons',
                    'Viandes',
                    'Légumes',
                    'Fruits',
                    'Poulet moambé',
                    'Poisson braisé',
                    'Riz au manioc',
                    'Riz au manioc',
                    'Pâtes au bœuf',
                    'Mbuta',
                    'Salade de papaye verte',
                    'Salade de courgettes',
                    'Salade de tomate',
                    'Salade de concombre',
                    'Salade de carotte',
                    'Soupe de feuilles de manioc',
                    'Soupe de poisson',
                    'Soupe de lentilles',
                    'Soupe de haricots',
                    'Soupe de tomates',
                    'Tilapia',
                    'Sardine',
                    'Thon',
                    'Maquereau',
                    'Cabillaud',
                    'Bœuf',
                    'Porc',
                    'Agneau',
                    'Poulet',
                    'Veau',
                    'Banane',
                    'Mangue',
                    'Papaye',
                    'Ananas',
                    'Orange'
                  ]
              )
        ];
    }
}
