<?php

namespace App;

use App\Traits\RelationTrait\ArticleTrait;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Overtrue\Pinyin\Pinyin;

/**
 * App\Article
 *
 * @property int $id
 * @property string $title 文章标题
 * @property string $slug
 * @property int $user_id
 * @property int $tag_id 标签id
 * @property int $category_id 分类id
 * @property string $image_url 图片地址
 * @property bool $view 浏览次数
 * @property bool $order 文章排序
 * @property bool $is_original
 * @property string $is_top 是否置顶
 * @property string $is_show 是否发布
 * @property string $content
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereTitle($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereSlug($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereUserId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereTagId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereCategoryId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereImageUrl($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereView($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereOrder($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereIsOriginal($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereIsTop($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereIsShow($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereContent($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereCreatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property \Carbon\Carbon $deleted_at
 * @method static \Illuminate\Database\Query\Builder|\App\Article whereDeletedAt($value)
 */
class Article extends Model
{
    use SoftDeletes, ArticleTrait;
    /**
     * @var array
     */
    protected $dates = ['deleted_at'];
    protected $fillable = ['title', 'slug', 'user_id', 'tag_id', 'category_id', 'image_url', 'view',
        'order', 'is_original', 'is_top', 'is_show', 'content'];

    /**
     * @param $value
     */
    public function setSlugAttribute($value)
    {
        $pinYin = new Pinyin();
        $info = $pinYin->convert($value);
        $this->attributes['slug'] = $info;
    }
    /**
     * @param $query
     * @return @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeShow($query)
    {
        return $query->whereIsShow(1)
            ->whereNull('deleted_at')
            ->orderBy('is_top', 'desc')
            ->orderBy('order', 'desc')
            ->orderBy('created_at', 'desc');
    }

    /**
     * @param $query
     * @param $order
     * @param string $desc
     * @param int $limit
     * @return @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeGetLimit($query, $order, $desc = 'desc', $limit = 4)
    {
        return $query->whereIsShow(1)->select('id', 'title', 'slug', 'image_url')->orderBy($order, $desc)->limit($limit);
    }

    /**
     * @return bool
     */
    public function isShow()
    {
        return !!$this->is_show;
    }

    /**
     * @return bool
     */
    public function isNotDeleted()
    {
        return !!$this->deleted_at;
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function comments()
    {
        return $this->hasMany(Comment::class, 'article_id', 'id');
    }

}
