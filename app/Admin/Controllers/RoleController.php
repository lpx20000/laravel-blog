<?php

namespace App\Admin\Controllers;
use App\Repository\Admin\RoleRepository;


/**
 * @property RoleRepository roleRepository
 */
class RoleController extends BaseController
{
    /**
     * RoleController constructor.
     * @param RoleRepository $roleRepository
     */
    public function __construct(RoleRepository $roleRepository)
    {
        parent::__construct($roleRepository);
    }
}
