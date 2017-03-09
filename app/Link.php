<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * App\Link
 *
 * @property int $id
 * @property string $name
 * @property string $link_url
 * @property string $link_class
 * @property bool $status
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @method static \Illuminate\Database\Query\Builder|\App\Link whereId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Link whereName($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Link whereLinkUrl($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Link whereLinkClass($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Link whereStatus($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Link whereCreatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Link whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property \Carbon\Carbon $deleted_at
 * @method static \Illuminate\Database\Query\Builder|\App\Link whereDeletedAt($value)
 */
class Link extends Model
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
        return $this->belongsTo(Label::class, 'link_class');
    }

    /**
     * @param $query
     * @param string $order
     * @param int $limit
     * @return @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeLink($query, $order = 'recommend', $limit = 20)
    {
        return $query->whereStatus(1)->orderBy($order, 'desc')->limit($limit);
    }
}
