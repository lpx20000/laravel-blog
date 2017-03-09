<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/29
 * Time: 16:12
 */

namespace App\Repository\Admin;


use App\Article;
use App\Category;
use App\Tag;
use App\User;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Widgets\Box;
use Encore\Admin\Widgets\Form as FormMarkdown;
use Encore\Admin\Widgets\Tab;
use Encore\Admin\Widgets\Table;

/**
 * @property Article article
 */
class ArticleRepository extends AbstractRepository
{

    /**
     * @param $grid
     * @return void
     */
    public function gridData(Grid $grid)
    {
        $grid->model()->orderBy('order', 'desc')->orderBy('created_at', 'desc');
        $grid->id('ID');
        $grid->title(trans('lang.title'))->limit(20);
        $grid->slug(trans('lang.slug'))->label()->limit(5);
        $grid->user(trans('lang.username'))->value(function($user) {
            return "<span class='label label-success'>{$user['username']}</span>";
        });

        $grid->tags(trans('lang.tag_id'))->value(function ($tags) {
            $tags = array_map(function ($tags) {
                return "<span class='label label-success'>{$tags['name']}</span>";
            }, $tags);
            return implode('&nbsp;', $tags);
        });

        $grid->categories(trans('lang.category_id'))->value(function ($categories) {
            $categories = array_map(function ($categories) {
                return "<span class='label label-warning'>{$categories['title']}</span>";
            }, $categories);
            return implode('&nbsp;', $categories);
        });

        $grid->image_url(trans('lang.image_url'));
        $grid->order(trans('lang.order'));
        $grid->is_original(trans('lang.is_original'))->value(function($value) {
            return $value?
                "<i class='fa fa-check' style='color:green'></i>" :
                "<i class='fa fa-close' style='color:red'></i>";
        });

        $grid->is_show(trans('lang.is_show'))->value(function($value) {
            return $value?
                "<i class='fa fa-check' style='color:green'></i>" :
                "<i class='fa fa-close' style='color:red'></i>";
        });

        $states = [
            'on' => ['text' => 'YES'],
            'off' => ['text' => 'NO'],
        ];
        $grid->column(trans('lang.is_top'))->switchGroup([
            'is_top' => trans('lang.is_top')
        ], $states);

        $grid->created_at(trans('lang.created_at'))->sortable();
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
        $form->text('title', trans('lang.title'))->rules('required');
        $form->text('slug', trans('lang.slug'))->rules('required');
        $form->hidden('user_id')->value(\Admin::user()->id);
        $form->multipleSelect('tags', trans('lang.tag_id'))->options(Tag::all()->pluck('name', 'id'))->rules('required');
        $form->multipleSelect('categories', trans('lang.category_id'))->options(Category::all()->pluck('title', 'id'))->rules('required');
        $form->image('image_url', trans('lang.image_url'))->move('image')->rules('required');
        $form->number('order', trans('lang.order'));
        $form->switch('is_original', trans('lang.is_original'));
        $form->switch('is_show', trans('lang.is_show'));
        $form->switch('is_top', trans('lang.is_top'));

        $form->markdownEditor('content', trans('lang.content'));
        $form->display('created_at', trans('lang.created_at'));
        $form->display('updated_at', trans('lang.updated_at'));
    }

}