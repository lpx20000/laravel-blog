<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/9
 * Time: 14:31
 */

namespace App\Http\Controllers;


use App\Repository\Front\TagRepository;

class TagController extends Controller
{
    protected $tagRepository;
    /**
     * TagController constructor.
     * @param TagRepository $tagRepository
     */
    public function __construct(TagRepository $tagRepository)
    {
        $this->tagRepository = $tagRepository;
    }

    /**
     * @param $tagName
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function search($tagName)
    {
        $tagName = str_replace("-"," ",$tagName);
        $articles = $this->tagRepository->search($tagName);
        return view('front.search.tagsearch', compact('articles'));
    }
}