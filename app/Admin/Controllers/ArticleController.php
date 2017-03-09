<?php

namespace App\Admin\Controllers;


use App\Repository\Admin\ArticleRepository;

class ArticleController extends BaseController
{
    /**
     * ArticleController constructor.
     * @param ArticleRepository $articleRepository
     */
    public function __construct(ArticleRepository $articleRepository)
    {
        parent::__construct($articleRepository);
    }
}
