<?php

namespace App\Admin\Controllers;
use App\Repository\Admin\PermissionRepository;


/**
 * @property PermissionRepository permissionRepository
 */
class PermissionController extends BaseController
{
    /**
     * PermissionController constructor.
     * @param PermissionRepository $permissionRepository
     */
    public function __construct(PermissionRepository $permissionRepository)
    {
        parent::__construct($permissionRepository);
    }
}
