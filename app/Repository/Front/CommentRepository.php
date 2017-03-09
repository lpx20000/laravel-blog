<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/10
 * Time: 10:28
 */

namespace App\Repository\Front;


use App\Comment;
use Illuminate\Http\Request;

class CommentRepository extends AbstractRepository
{
    /**
     * CommentRepository constructor.
     * @param Comment $comment
     */
    public function __construct(Comment $comment)
    {
        parent::__construct($comment);
    }
    /**
     * @return mixed
     */
    public function index($limit = 10)
    {
        // TODO: Implement index() method.
    }

    /**
     * @param $id
     * @param $data
     */
    public function commentStore($id, $data)
    {
        return $this->fillCommonAttribute($id, $data);
    }
    /**
     * @param $id
     * @param $data
     */
    protected function fillCommonAttribute($id, $data)
    {
        $this->model->content = $data['content'];
        $this->model->article_id = $id;
        $this->model->user_id = auth()->user()->id;
        $this->model->parent_id = $data['parent_id'];
        $this->model->save();
    }
}