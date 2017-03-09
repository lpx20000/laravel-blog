<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/1/17
 * Time: 17:18
 */

namespace App\Repository\Front;


use App\Article;
use App\Comment;

class IndexRepository extends AbstractRepository
{
    /**
     * IndexRepository constructor.
     * @param Article $article
     */
    public function __construct(Article $article)
    {
        parent::__construct($article);
    }

    /**
     * @param int $limit
     * @return mixed
     */
    public function index($limit = 10)
    {
        return $this->model->with('categories')->show()->paginate($limit);
    }

    /**
     * @param $slug
     * @return mixed
     */
    public function showArticleDetail($slug)
    {
        $this->incrementView('view');
        return $this->model->with(['categories', 'comments'])->whereIsShow(1)->whereSlug($slug)->firstOrFail();
    }

    /**
     * @param $column
     */
    public function incrementView($column)
    {
        $this->model->increment($column);
    }


    /**
     * @return bool
     */
    public function getNextPreArticle()
    {
        return true;
    }
}




