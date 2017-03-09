<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/1/17
 * Time: 17:19
 */

namespace App\Repository\Front;


use Illuminate\Database\Eloquent\Model;

abstract class AbstractRepository
{
    protected $model;
    /**
     * AbstractRepository constructor.
     * @param Model $model
     */
    public function __construct(Model $model)
    {
        $this->model = $model;
    }

    /**
     * @return mixed
     */
    abstract public function index($limit = 10);
}