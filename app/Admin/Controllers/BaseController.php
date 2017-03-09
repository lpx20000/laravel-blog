<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/1/6
 * Time: 14:36
 */

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Repository\Admin\AbstractRepository;
use Route;

/**
 * @property AbstractRepository repository
 * @property string model
 */
class BaseController extends Controller
{
    use ActionForm;

    /**
     * BaseController constructor.
     * @param \App\Admin\Controllers\AbstractRepository|AbstractRepository $repository
     */
    public function __construct(AbstractRepository $repository)
    {
        $this->repository = $repository;
        $this->model = getClassName();
    }
}