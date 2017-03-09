<?php

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/1/9
 * Time: 13:56
 */
namespace App\Admin\Controllers;

use Illuminate\Support\Facades\Lang;

trait ActionForm
{
    /**
     * @param $id
     * @return mixed
     */
    public function edit($id)
    {
        return $this->repository->edit(trans('lang.'.$this->model), trans('lang.edit'), $id);
    }


    /**
     * @param $id
     * @return mixed
     */
    public function show($id)
    {
        return $this->repository->show($id);
    }

    /**
     * @param $id
     * @return bool
     */
    public function update($id)
    {
        return $this->repository->update($id);
    }

    /**
     * @return mixed
     */
    public function store()
    {
        return $this->repository->store();
    }

    /**
     * @param $id
     * @return mixed
     */
    public function destroy($id)
    {
        return $this->repository->destroy($id);
    }

    /**
     * @return mixed
     */
    public function index()
    {
        return $this->repository->index(trans('lang.'.$this->model), trans('lang.list'));
    }
    /**
     * @return mixed
     */
    public function create()
    {
        return $this->repository->create(trans('lang.'.$this->model), trans('lang.create'));
    }
}