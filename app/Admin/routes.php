<?php

use Illuminate\Routing\Router;

Route::group([
    'prefix'        => config('admin.prefix'),
    'namespace'     => Admin::controllerNamespace(),
    'middleware'    => ['web', 'admin'],
], function (Router $router) {
    $router->get('/', 'HomeController@index');
    $router->post('/upload','HomeController@upload');
    $router->resources(
        [
            'auth/user'       => 'UserController',
            'auth/role'       => 'RoleController',
            'auth/permission' => 'PermissionController',
            'auth/menu'       => 'MenuController',
            'auth/log'        => 'LogController',
            'auth/tag'        => 'TagController',
            'auth/link'       => 'LinkController',
            'auth/article'    => 'ArticleController',
            'auth/category'   => 'CategoryController',
            'auth/comment'    => 'CommentController',
        ]);

});



