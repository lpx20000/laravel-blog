<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/1/17
 * Time: 18:11
 */

namespace App\Traits\RelationTrait;


use App\Article;
use App\Category;
use App\CommentType;
use App\Tag;
use App\User;

trait ArticleTrait
{
    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function tags()
    {
        return $this->belongsToMany(Article::class, 'article_category', 'article_id', 'tag_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function categories()
    {
        $pivotTable = config('admin.database.article_category_table');
        return $this->belongsToMany(Category::class, $pivotTable, 'article_id', 'category_id');
    }
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
    /**
     * @return \Illuminate\Database\Eloquent\Relations\MorphMany
     */
    public function comments()
    {
        return $this->morphMany(CommentType::class, 'commentable');
    }
}