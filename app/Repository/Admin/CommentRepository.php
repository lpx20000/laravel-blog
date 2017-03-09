<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/29
 * Time: 16:56
 */

namespace App\Repository\Admin;


use App\Article;
use App\Comment;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Form as Forms;
use Encore\Admin\Tree;
use Encore\Admin\Widgets\Box;
use Encore\Admin\Widgets\Form;

class CommentRepository extends AbstractRepository
{
    /**
     * @param $grid
     * @return void
     */
    public function gridData(Grid $grid){}

    /**
     * @param $header
     * @param $list
     * @return Content
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
        $form->action(admin_url('auth/comment'));
        $form->select('parent_id', trans('lang.parent_id'))->options(Comment::selectOptions());
        $form->textarea('title', trans('lang.comment'))->rules('required');
        $form->hidden('user_id')->default(\Admin::user()->id);
//        $form->hidden('article_id')->options(Article::selectOptions());
        $form->switch('is_show');
        $column->append((new Box(trans('admin::lang.new'), $form))->style('success'));
    }

    /**
     * @return \Encore\Admin\Tree
     */
    protected function treeView() {
        return Comment::tree(/**
         * @param Tree $tree
         */
            function (Tree $tree) {
                $this->makeTreeView($tree);
            });
    }

    /**
     * @param Tree $tree
     */
    protected function makeTreeView(Tree $tree) {
        $tree->disableCreate();
        $tree->branch(function ($branch) {
            if ($branch['parent_id'] == 0) {
                $info = str_limit($branch['article_id'], $limit = 50, $end = '...');
                return "<i class='fa fa-file-text-o'></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>{$info}</strong> 
                            <br>{$branch['id']} - {$branch['content']} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class='fa fa-user'></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$branch['user_id']}";
            }
            $parentName = Comment::whereId($branch['parent_id'])->pluck('content')->first();
            $info = str_limit($parentName, $limit = 50, $end = '...');
            return "<i class='fa fa-comments'></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>{$info}</strong>
                            <br>{$branch['id']} - {$branch['content']} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class='fa fa-user'></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$branch['user_id']}";
    });
    }

    /**
     * @param $form
     * @return void
     */
    public function buildForm(Forms $form){}

}