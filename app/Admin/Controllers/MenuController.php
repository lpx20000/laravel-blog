<?php

namespace App\Admin\Controllers;


use App\Repository\Admin\MenuRepository;

class MenuController extends BaseController
{
    /**
     * MenuController constructor.
     * @param MenuRepository $menuRepository
     */
    public function __construct(MenuRepository $menuRepository)
    {
        parent::__construct($menuRepository);
    }

}
