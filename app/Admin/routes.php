<?php

use Illuminate\Routing\Router;

    $router = app('admin.router');
    $router->get('/', 'HomeController@index');
    $router->post('/upload','HomeController@upload');
    $router->resources([
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


