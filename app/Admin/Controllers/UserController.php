<?php

namespace App\Admin\Controllers;
use App\Repository\Admin\UserRepository;


/**
 * @property UserRepository userRepository
 */
class UserController extends BaseController
{
    /**
     * UserController constructor.
     * @param UserRepository $userRepository
     * @internal param UserRepository $userRepository
     */
    public function __construct(UserRepository $userRepository)
    {
        parent::__construct($userRepository);
    }
}
