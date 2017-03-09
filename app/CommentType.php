<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CommentType extends Model
{
    /**
     * @var string
     */
    protected $table = 'comment_type';
    /**
     * @var bool
     */
    public $timestamps = false;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\MorphTo
     */
    public function commentable()
    {
        return $this->morphTo();
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function users()
    {
        return $this->hasMany('App\User', 'id', 'user_id');
    }


}
