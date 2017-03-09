<?php

namespace App\Providers;

use App\Article;
use App\Category;
use App\Link;
use App\Repository\Front\CategoryRepository;
use App\Tag;
use Carbon\Carbon;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Carbon::setLocale('zh');

        $this->getShareData();

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * @return \Illuminate\Database\Eloquent\Collection|\Illuminate\Support\Collection|static[]
     */
    protected function getAllLinks()
    {
        return Link::link()->get();
    }

    /**
     * @return \Illuminate\Database\Eloquent\Collection|\Illuminate\Support\Collection|static[]
     */
    protected function getAllTags()
    {
        return Tag::forPartialInfo()->get();
    }

    /**
     * @return array
     */
    protected function returnTagClass()
    {
        return ['default', 'primary', 'success', 'info', 'warning', 'danger'];
    }

    /**
     * @return \Illuminate\Database\Eloquent\Collection|\Illuminate\Support\Collection|static[]
     */
    protected function getHotArticle()
    {
        return Article::getLimit('is_top')->get();
    }

    /**
     * @return \Illuminate\Database\Eloquent\Collection|\Illuminate\Support\Collection|static[]
     */
    protected function getMostArticle()
    {
        return Article::getLimit('view')->get();
    }

    /**
     * @return \Illuminate\Database\Eloquent\Collection|\Illuminate\Support\Collection|static[]
     */
    protected function getNewArticle()
    {
        return Article::getLimit('created_at')->get();
    }

    /**
     * @return mixed
     */
    protected function getCategory()
    {
        return (new Category())->makeTree();
    }

    protected function getShareData()
    {
        view()->share('tags', $this->getAllTags());
        view()->share('tagsClass', $this->returnTagClass());
        view()->share('hots', $this->getHotArticle());
        view()->share('mosts', $this->getMostArticle());
        view()->share('news', $this->getNewArticle());
        view()->share('links', $this->getAllLinks());
        view()->share('categories', $this->getCategory());
    }
}
