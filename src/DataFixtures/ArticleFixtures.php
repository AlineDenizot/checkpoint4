<?php

namespace App\DataFixtures;

use App\Entity\Article;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;
use Faker;

class ArticleFixtures extends Fixture
{
    /**
     * @param ObjectManager $manager
     */
    public function load(ObjectManager $manager)
    {
        $faker = Faker\Factory::create('fr_FR');
        for ($i = 0; $i <= 20; $i++) {
            $post = new Article();
            $post->setTitle($faker->sentence($nbWords = 4, $variableNbWords = true));
            $post->setDescription($faker->text($maxNbChars = rand(100, 200)));
            $post->setDate($faker->dateTimeBetween($startDate = '-3 years', $endDate = 'now', $timezone = null));
            $post->setPicture("https://via.placeholder.com/150");
            $this->addReference('article_' . $i, $post);

            $manager->persist($post);
        }
        $manager->flush();
    }
}
