<?php

namespace App;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * App\Category
 *
 * @property int $id
 * @property string $name
 * @property string $slug
 * @property bool $parent_id
 * @property bool $order 排序
 * @property string $is_show 是否显示
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereName($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereTitle($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereSlug($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereParentId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereOrder($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereIsShow($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereCreatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property \Carbon\Carbon $deleted_at
 * @method static \Illuminate\Database\Query\Builder|\App\Category whereDeletedAt($value)
 */
class Category extends Model
{
    use SoftDeletes, ModelTree, AdminBuilder;
    /**
     * @var array
     */
    protected $dates = ['deleted_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function articles()
    {
        return $this->belongsToMany(Article::class, 'article_category', 'category_id', 'article_id');
    }
    /**
     * @param $limit
     * @return mixed
     */
    public function makeTree($limit = 10)
    {
        $categories = $this->whereIsShow(1)->orderBy('order', 'desc')->limit(10)->orderBy('created_at', 'desc')->get();

        return $this->buildTree($categories);
    }

    /**
     * @param array $data
     * @param int $parent_id
     * @return array
     */
    protected function buildTree($data, $parent_id = 0)
    {
        $branch = [];
        foreach ($data as $key=>$item) {
            if ($item->parent_id == $parent_id) {
                $children = $this->buildTree($data, $item->id);
                if ($children) {
                    $item->children = $children;
                }
                $branch[] = $item;
            }
        }
        return $branch;
    }

}
