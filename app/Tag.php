<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * App\Tag
 *
 * @property int $id
 * @property string $name
 * @property string $tag_class 标签类名
 * @property string $deleted_at
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @method static \Illuminate\Database\Query\Builder|\App\Tag whereId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Tag whereName($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Tag whereTagClass($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Tag whereDeletedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Tag whereCreatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Tag whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property bool $status
 * @method static \Illuminate\Database\Query\Builder|\App\Tag whereStatus($value)
 */
class Tag extends Model
{
    use SoftDeletes;
    /**
     * @var array
     */
    protected $dates = ['deleted_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function label()
    {
        return $this->belongsTo(Label::class, 'tag_class');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function articles()
    {
        return $this->belongsToMany(Article::class);
    }

    /**
     * @param $query
     * @return mixed
     */
    public function scopeForPartialInfo($query)
    {
        return $query->whereStatus(1)->whereNull('deleted_at')
            ->orderBy('recommend', 'desc')->orderBy('hot', 'desc')
            ->orderBy('new', 'desc')->orderBy('created_at', 'desc')
            ->select('name', 'id');
    }
}
