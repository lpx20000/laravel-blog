<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/1/17
 * Time: 17:18
 */

namespace App\Repository\Front;


use App\Article;
use App\Category;

class CategoryRepository extends AbstractRepository
{
    /**
     * IndexRepository constructor.
     * @param Category $category
     */
    public function __construct(Category $category)
    {
        parent::__construct($category);
    }


    /**
     * @return mixed
     */
    public function index($limit = 10)
    {
        // TODO: Implement index() method.
    }

    /**
     * @param $name
     * @return mixed
     * Create: 雨鱼
     */
    public function search($name)
    {
        $id = $this->model->whereSlug($name)->select('id')->firstOrFail()->id;

        return $this->model->with(['articles'=> function($query) {
            $query->show();
        }])->whereId($id)->paginate(10);

    }
}





















