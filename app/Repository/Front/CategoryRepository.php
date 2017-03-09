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
    public function search($name)
    {
        $id = $this->getAllId($this->model->whereSlug($name)->select('id')->firstOrFail()->id);dd($id);
        return $this->model->with(['articles'=> function($query) {
            $query->show();
        }])->whereSlug($name)->paginate(10);
    }
    protected function getAllId($id)
    {
        $ids = [];
       if ( $id = $this->model->whereId($id)->select('id')->firstOrFail()) {
            $ids[] = $id->id;
           $this->getAllId($id->id);
       };
       return $ids;
    }
}





















