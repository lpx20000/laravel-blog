<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/29
 * Time: 15:47
 */

namespace App\Repository\Admin;

use App\Permission;
use App\Role;
use App\User;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Widgets\Table;


class UserRepository extends AbstractRepository
{
    use ModelForm;
    /**
     * @param $grid
     * @return void
     */
    public function gridData(Grid $grid)
    {
        $grid->model()->orderBy('created_at', 'desc');
        $grid->id('ID');
        $grid->username(trans('lang.username'))->label()->sortable();
        $grid->email(trans('lang.email'))->badge();
        $grid->is_admin(trans('lang.is_admin'))->value(function($value) {
            return $value?
                "<i class='fa fa-check' style='color:green'></i>" :
                "<i class='fa fa-close' style='color:red'></i>";
        })->sortable();
        $grid->avatar(trans('lang.avatar'))->value(function ($value) {
            return url($value);
        })->image('', 50, 50);
        $grid->roles(trans('lang.role'))->pluck('name')->label('info');
        $grid->permissions(trans('lang.permission'))->pluck('name')->label();
        $grid->filter(function ($filter) {
            $filter->useModal();
            $filter->like(trans('lang.username'));
            $filter->like(trans('lang.email'));
        });
        $grid->created_at(trans('lang.created_at'))->sortable();
        $grid->updated_at(trans('lang.updated_at'))->sortable();
        $grid->rows(function ($row) {
            if ($row->id == 1) {
                return $row->actions('edit');
            }
        });
        $grid->disableBatchDeletion();
        $grid->disableExport();
    }

    /**
     * @param $form
     * @internal param $from
     */
    public function buildForm(Form $form)
    {
        $form->display('id', 'ID');
        $form->text('username', trans('lang.username'))->rules('required');
        $form->text('email', trans('lang.email'))->rules('required');
        $form->switch('is_admin', trans('lang.is_admin'));
        $form->password('password', trans('lang.password'));
        $form->image('avatar', trans('lang.avatar'))->move('image')->rules('required');
        $form->multipleSelect('roles')->options(Role::all()->pluck('name', 'id'));
        $form->multipleSelect('permissions', trans('lang.permission'))->options(Permission::all()->pluck('name', 'id'));
        $form->display('created_at', trans('lang.created_at'));
        $form->display('updated_at', trans('lang.updated_at'));
        $form->saving(function (Form $form) {
        if ($form->password && $form->model()->password != $form->password) {
            $form->password = bcrypt($form->password);
        }
    });
    }

}