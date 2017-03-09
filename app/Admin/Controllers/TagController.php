<?php

namespace App\Admin\Controllers;



use App\Repository\Admin\TagRepository;

class TagController extends BaseController
{

    /**
     * TagController constructor.
     * @param TagRepository $tagRepository
     */
    public function __construct(TagRepository $tagRepository)
    {
        parent::__construct($tagRepository);
    }
}
