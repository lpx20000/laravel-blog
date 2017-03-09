<?php

namespace App\Http\Controllers;

use App\Article;
use App\Comment;
use App\Repository\Front\IndexRepository;
use Illuminate\Http\Request;


class IndexController extends Controller
{
    /**
     * @var IndexRepository
     */
    protected $indexRepository;

    /**
     * IndexController constructor.
     * @param IndexRepository $indexRepository
     */
    public function __construct(IndexRepository $indexRepository)
    {
        $this->indexRepository = $indexRepository;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $article = $this->indexRepository->index();
        return view('front.index.index', compact('article'));
    }

    /**
     * @param $slug
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function showArticleDetail($slug)
    {
        $article = $this->indexRepository->showArticleDetail($slug);
        return view('front.detail.index', compact('article'));
    }
}
