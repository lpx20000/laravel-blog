<?php

namespace App\Admin\Controllers;


use App\Repository\Admin\CategoryRepository;

class CategoryController extends BaseController
{
    /**
     * CatgoryController constructor.
     * @param CategoryRepository $categoryRepository
     */
    public function __construct(CategoryRepository $categoryRepository)
    {
        parent::__construct($categoryRepository);
    }
}
