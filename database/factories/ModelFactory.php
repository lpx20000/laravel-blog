<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
use App\Article;
use App\Category;
use App\Comment;
use App\File;
use App\Label;
use App\Link;
use App\Menu;
use App\Permission;
use App\Role;
use App\Tag;
use App\User;


$factory->define(User::class, function(Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'avatar' => $faker->imageUrl(),
        'remember_token' => str_random(10),
    ];
});

$factory->define(Category::class, function(Faker\Generator $faker) {
    $name = $faker->sentence(mt_rand(3,10));
    return [
        'title' => $name,
        'slug' => str_slug($name),
        'icon'  => $faker->imageUrl()
    ];
});

$factory->define(File::class, function(Faker\Generator $faker) {
    return [
        'url' => $faker->url
    ];
});

$factory->define(Label::class, function (Faker\Generator $faker) {
    $label = ['btn-success', 'btn-info', 'btn-default', 'btn-primary', 'btn-danger'];
    return [
      'label' => array_rand($label)
    ];
});

$factory->define(Tag::class, function(Faker\Generator $faker) {
    $label_id = Label::pluck('id')->random();
    return [
        'name' => $faker->sentence(mt_rand(3, 8)),
        'tag_class' =>$label_id
    ];
});

$factory->define(Link::class, function(Faker\Generator $faker) {
    $label_id = Label::pluck('id')->random();
    return [
        'name' => $faker->sentence(mt_rand(3, 8)),
        'link_url' => $faker->url,
        'link_class' => $label_id,
    ];
});

$factory->define(Article::class, function(Faker\Generator $faker) {
    $user_id = User::pluck('id')->random();
    $tag_id = Tag::pluck('id')->random();
    $category_id = Category::pluck('id')->random();
    $title = $faker->sentence(mt_rand(3, 10));
    return [
        'title' => $title,
        'slug' => str_slug($title),
        'user_id' => $user_id,
        'tag_id' => $tag_id,
        'category_id' => $category_id,
        'image_url' => $faker->imageUrl(182, 182),
        'content' => $faker->paragraph(),
    ];

});

$factory->define(Comment::class, function(Faker\Generator $faker) {
    $user_id = User::pluck('id')->random();
    $type = ['discussions', 'articles'];
    return [
        'user_id' => $user_id,
        'parent_id' => 0,
        'comment' => $faker->paragraph,
    ];
});

$factory->define(Role::class, function (Faker\Generator $faker) {
    $name = $faker->name;
    return [
        'name' => $name,
        'slug' => str_slug($name)
    ];
});

$factory->define(Permission::class, function(Faker\Generator $faker) {
    $name = $faker->name;
    return [
        'name' => $name,
        'slug' => str_slug($name)
    ];
});





















