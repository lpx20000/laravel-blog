<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/29
 * Time: 15:47
 */

namespace App\Repository\Admin;

use App\Menu;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Tree;
use Encore\Admin\Widgets\Box;
use Encore\Admin\Widgets\Form;
use Encore\Admin\Form as Forms;


class MenuRepository extends AbstractRepository
{
    use ModelForm;

    /**
     * @param $form
     */
    public function buildForm(Forms $form)
    {
        $form->display('id', 'ID');
        $form->text('title', trans('lang.title'))->rules('required');
        $form->icon('icon', trans('lang.icon'))->rules('required');
        $form->text('uri', trans('lang.uri'))->rules('required');
        $form->number('order', trans('lang.order'))->rules('required');
        $form->select('parent_id', trans('lang.parent_id'))->options(Menu::whereParentId('0')->pluck('title', 'id')->all());
        $form->display('created_at', trans('lang.created_at'));
        $form->display('updated_at', trans('lang.updated_at'));
    }

    /**
     * @param $grid
     */
    public function gridData(Grid $grid){}

    /**
     * @param $header
     * @param $list
     * @return mixed
     */
    public function index($header, $list)
    {
        return $this->admin->content(function (Content $content) use($header, $list){
            $this->showData($content, $header, $list);
        });
    }

    /**
     * @param Content $content
     * @param $header
     * @param $list
     */
    protected function showData(Content $content, $header, $list) {
        $content->header($header);
        $content->description($list);
        $content->row(function (Row $row) {
            $this->getRows($row);
        });
    }

    /**
     * @param Row $row
     */
    protected function getRows(Row $row) {
        $row->column(6, $this->treeView()->render());
        $row->column(6, function (Column $column) {
            $this->getColums($column);
        });
    }

    /**
     * @param Column $column
     */
    protected function getColums(Column $column) {
        $form = new Form();
        $form->action(admin_url('auth/menu'));
        $form->select('parent_id', trans('lang.parent_id'))->options(Menu::selectOptions());
        $form->text('title', trans('lang.title'))->rules('required');
        $form->icon('icon', trans('lang.icon'))->default('fa-bars')->rules('required')->help($this->iconHelp());
        $form->text('uri', trans('lang.uri'));
        $form->number('order', trans('lang.order'));
        $column->append((new Box(trans('admin::lang.new'), $form))->style('success'));
    }

    /**
     * @return \Encore\Admin\Tree
     */
    protected function treeView()
    {
        return Menu::tree(function (Tree $tree) {
            $tree->disableCreate();
            $tree->branch(function ($branch) {
                $payload = "<i class='fa {$branch['icon']}'></i>&nbsp;<strong>{$branch['title']}</strong>";
                if (!isset($branch['children'])) {
                    $uri = admin_url($branch['uri']);
                    $payload .= "&nbsp;&nbsp;&nbsp;<a href=\"$uri\" class=\"dd-nodrag\">$uri</a>";
                }
                return $payload;
            });
        });
    }

}