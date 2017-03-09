<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//首页
Route::get('/', 'IndexController@index')->name('home');

//文章详情
Route::get('/article/{slug}', 'IndexController@showArticleDetail')->name('article');

//标签搜索
Route::group(['middleware' => 'checkLogin'], function () {
    //文章评论
    Route::post('/comment/article/{id}', 'CommentController@CommentArticle')->name('comment');
    Route::get('auth/logout', 'AuthController@Logout')->name('logout');
});

Route::get('/tag/{name}', 'TagController@search')->name('tag');
Route::get('/category/{name}', 'CategoryController@search')->name('category');

//github登录
Route::get('auth/github', 'AuthController@redirectToProvider')->name('githubLogin');
Route::get('auth/github/callback', 'AuthController@handleProviderCallback');

