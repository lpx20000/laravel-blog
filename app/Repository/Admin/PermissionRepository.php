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



class PermissionRepository extends AbstractRepository
{
    use ModelForm;
    /**
     * @param $grid
     * @return void
     */
    public function gridData(Grid $grid)
    {
        $grid->id('ID')->sortable();
        $grid->name(trans('lang.permission_name'))->label();
        $grid->slug('slug');


        $grid->created_at(trans('lang.created_at'));
        $grid->updated_at(trans('lang.updated_at'));

        $grid->rows(function ($row) {
            if ($row->id == 1) {
                $row->actions('edit');
            }
        });

        $grid->disableBatchDeletion();

        $grid->disableExport();
    }

    /**
     * @param $form
     * @return void
     */
    public function buildForm(Form $form)
    {
        $form->display('id', 'ID');

        $form->text('name', trans('lang.permission_name'))->rules('required');
        $form->text('slug', trans('lang.slug'))->rules('required');
        $form->multipleSelect('roles', trans('lang.role'))->options(Role::all()->pluck('name', 'id'));

        $form->display('created_at', trans('lang.created_at'));
        $form->display('updated_at', trans('lang.updated_at'));

    }
}