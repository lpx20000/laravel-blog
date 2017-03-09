<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/29
 * Time: 15:58
 */

namespace App\Repository\Admin;


use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;

/**
 * @property Admin admin
 * @property string className
 */
abstract class AbstractRepository
{
    use ModelForm;

    /**
     * AbstractRepository constructor.
     * @param Admin $admin
     */
    public function __construct(Admin $admin)
    {
        $this->admin = $admin;
        $this->className = getClassName();
    }

    /**
     * @param $grid
     * @return void
     */
    abstract public function gridData(Grid $grid);

    /**
     * @param $form
     * @return void
     */
    abstract public function buildForm(Form $form);
    /**
     *
     * @param $header
     * @param $list
     * @return mixed
     */
    public function index($header, $list)
    {
        return $this->admin->content(function (Content $content) use($header, $list) {
            $content->header($header);
            $content->description($list);
            $content->body($this->grid()->render());
        });
    }

    /**
     * @param $header
     * @param $edit
     * @param $id
     * @return Content
     */
    public function edit($header, $edit, $id)
    {
        return $this->admin->content(function (Content $content) use ($header, $edit, $id) {
            $content->header($header);
            $content->description($edit);
            $content->body($this->form()->edit($id));
        });
    }

    /**
     * @param $header
     * @param $edit
     * @return Content
     */
    public function create($header, $edit)
    {
        return $this->admin->content(function (Content $content) use($header, $edit){
            $content->header($header);
            $content->description($edit);
            $content->body($this->form());
        });
    }
    /**
     * @return mixed
     */
    public function grid()
    {
        return $this->admin->grid('App\\'.ucfirst($this->className), function (Grid $grid) {
            $this->gridData($grid);
        });
    }

    /**
     * @return Form
     */
    public function form()
    {
        return $this->admin->form('App\\'.ucfirst($this->className), function (Form $form) {
            $this->buildForm($form);
        });
    }

    /**
     * @return string
     */
    public function iconHelp()
    {
        return 'For more icons please see <a href="http://fontawesome.io/icons/" target="_blank">http://fontawesome.io/icons/</a>';
    }
}