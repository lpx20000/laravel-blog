<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/10
 * Time: 10:27
 */

namespace App\Http\Controllers;


use App\Repository\Front\CommentRepository;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    /**
     * @var CommentRepository
     */
    protected $commentRepository;

    /**
     * CommentController constructor.
     * @param CommentRepository $commentRepository
     */
    public function __construct(CommentRepository $commentRepository)
    {
        $this->commentRepository = $commentRepository;
    }
    public function CommentArticle(Request $request, $id)
    {
        $this->validate($request, [
            'content' => 'required'],
            ['content.required' => '评论内容不得为空']
        );
        $this->commentRepository->commentStore($id, $request->except('_token'));
        return redirect()->back();
    }
}