<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/9
 * Time: 14:18
 */

namespace App\Repository\Front;


use App\Tag;

class TagRepository extends AbstractRepository
{
    /**
     * TagRepository constructor.
     * @param Tag $tag
     * @internal param Article $article
     * @internal param Tag $tag
     */
    public function __construct(Tag $tag)
    {
        parent::__construct($tag);
    }


    public function index($limit = 10)
    {
        // TODO: Implement index() method.
    }

    /**
     * @param $tagName
     * @return mixed
     */
    public function search($tagName)
    {
        return $this->model->with(['articles'=> function($query) {
            $query->show()->with('categories');
        }])->whereName($tagName)->paginate(10);
    }
}