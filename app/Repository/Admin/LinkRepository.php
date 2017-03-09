<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/29
 * Time: 16:35
 */

namespace App\Repository\Admin;


use App\Label;
use App\Link;
use Encore\Admin\Form;
use Encore\Admin\Grid;

/**
 * @property Link link
 */
class LinkRepository extends AbstractRepository
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
        $grid->link_url(trans('lang.link_url'));
        $grid->link_class(trans('lang.link_class'))->value(function ($value) {
            $name = Link::with('label')->whereLinkClass($value)->first()->label->label;
            return "<a class='btn btn-sm $name' href='#'>颜色</a>";
        });

        $states = [
            'on' => ['text' => 'YES'],
            'off' => ['text' => 'NO'],
        ];
        $grid->column('推荐')->switchGroup([
            'recommend' => trans('lang.recommend')
        ], $states);

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
        $form->url('link_url', trans('lang.link_url'))->rules('required');
        $form->select('link_class', trans('lang.link_class'))->options($options)->rules('required');
        $form->switch('recommend', trans('lang.recommend'));
        $form->switch('status', trans('lang.status'));
        $form->display('created_at', trans('lang.created_at'));
        $form->display('updated_at', trans('lang.updated_at'));
    }
}