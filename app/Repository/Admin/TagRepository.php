<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/29
 * Time: 16:28
 */

namespace App\Repository\Admin;


use App\Label;
use App\Tag;
use Encore\Admin\Form;
use Encore\Admin\Grid;

/**
 * @property Tag tag
 */
class TagRepository extends AbstractRepository
{
    /**
     * @param $grid
     * @return void
     */
    public function gridData(Grid $grid)
    {
        $grid->id('ID')->sortable();
        $grid->name(trans('lang.name'));
        $grid->status(trans('lang.status'))->value(function($value) {
            return $value?
                "<i class='fa fa-check' style='color:green'></i>" :
                "<i class='fa fa-close' style='color:red'></i>";
        });
        $grid->tag_class(trans('lang.tag_class'))->value(function ($value) {
            $name = Tag::with('label')->whereTagClass($value)->first()->label->label;
            return "<a class='btn btn-sm $name' href='#'>颜色</a>";
        });

        $states = [
            'on' => ['text' => 'YES'],
            'off' => ['text' => 'NO'],
        ];
        $grid->column('switch_group')->switchGroup([
            'recommend' => trans('lang.recommend'), 'hot' => trans('lang.hot'), 'new' => trans('lang.newest')
        ], $states);

        $grid->deleted_at(trans('lang.deleted_at'));
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
        $options = array_flip(Label::all()->pluck('id', 'label')->toArray());
        $form->display('id', 'ID');
        $form->text('name', trans('lang.name'))->rules('required');
        $form->select('tag_class', trans('lang.tag_class'))->options($options)->rules('required');
        $form->switch('recommend', trans('lang.recommend'));
        $form->switch('hot', trans('lang.hot'));
        $form->switch('new', trans('lang.newest'));
        $form->switch('status', trans('lang.status'));
        $form->display('created_at', trans('lang.created_at'));
        $form->display('updated_at', trans('lang.updated_at'));
    }
}