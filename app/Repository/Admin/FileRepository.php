<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/12/29
 * Time: 17:02
 */

namespace App\Repository\Admin;


use App\File;
use Encore\Admin\Form;
use Encore\Admin\Grid;

/**
 * @property File file
 */
class FileRepository extends AbstractRepository
{
    public function __construct(File $file)
    {
        parent::__construct($file);
    }

    /**
     * @param int $number
     * @param string $sort
     * @param string $sortColumn
     * @return mixed
     */
    public function page($number = 10, $sort = 'desc', $sortColumn = 'created_at')
    {
        // TODO: Implement page() method.
    }

    /**
     * @param $key
     * @return mixed
     */
    public function search($key)
    {
        // TODO: Implement search() method.
    }

    /**
     * @param $grid
     * @return void
     */
    public function gridData(Grid $grid)
    {
        // TODO: Implement gridData() method.
    }

    /**
     * @param $form
     * @return void
     */
    public function buildForm(Form $form)
    {
        // TODO: Implement buildForm() method.
    }
}