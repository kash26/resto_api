<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Ingredient>
 */
class IngredientFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->randomElement([
                'eau',
                'sel',
                'poivre',
                'farine',
                'œufs',
                'lait',
                'beurre',
                'viande',
                'poisson',
                'légumes',
                'manioc',
                'banane plantain',
                'igname',
                'yams',
                'riz',
                'maïs',
                'millet',
                'sorgho',
                'pois chiches',
                'lentilles',
                'tomates',
                'poivrons',
                'oignons',
                'ail',
                'gingembre',
                'curcuma',
                'piment',
                'coriandre',
                'menthe',
                'cumin',
                'fenugrec',
                'cannelle',
                'vanille',
                'noix de coco',
                'miel',
                'huile de palme',
                'huile de sésame'
            ])
        ];
    }
}
