<?php

namespace App\Admin\Controllers;



use App\Repository\Admin\CommentRepository;

class CommentController extends BaseController
{
    /**
     * CommentController constructor.
     * @param CommentRepository $commentRepository
     */
    public function __construct(CommentRepository $commentRepository)
    {
        parent::__construct($commentRepository);
    }
}
