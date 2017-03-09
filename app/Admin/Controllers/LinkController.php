<?php

namespace App\Admin\Controllers;



use App\Repository\Admin\LinkRepository;

class LinkController extends BaseController
{
    /**
     * LinkController constructor.
     * @param LinkRepository $linkRepository
     */
    public function __construct(LinkRepository $linkRepository)
    {
        parent::__construct($linkRepository);
    }
}
