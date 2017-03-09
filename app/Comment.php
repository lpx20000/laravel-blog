<?php

namespace App;

use DB;
use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * App\Comment
 *
 * @property int $id
 * @property int $article_id
 * @property int $user_id
 * @property string $comment
 * @property string $commentable_type
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property string $deleted_at
 * @method static \Illuminate\Database\Query\Builder|\App\Comment whereId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Comment whereArticleId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Comment whereUserId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Comment whereComment($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Comment whereCommentableType($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Comment whereCreatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Comment whereUpdatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Comment whereDeletedAt($value)
 * @mixin \Eloquent
 */
class Comment extends Model
{
    use SoftDeletes, ModelTree, AdminBuilder;
    /**
     * @var array
     */
    protected $dates = ['deleted_at'];

    /**
     * Comment constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->setOrderColumn('created_at');
        $this->setTitleColumn('content');
    }

    /**
     * @param $value
     * @return mixed
     */
//    public function getArticleIdAttribute($value)
//    {
//         return Article::whereId($value)->pluck('title')->first();
//    }

    /**
     * @param $value
     * @return mixed
     */
    public function getUserIdAttribute($value)
    {
        return User::whereId($value)->pluck('username')->first();
    }

    /**
     * @param $value
     * @return string
     */
    public function getIsShowAttribute($value)
    {
        return $value? '是': '否';
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function articles()
    {
        return $this->belongsTo(Article::class, 'id', 'article_id');
    }
}
