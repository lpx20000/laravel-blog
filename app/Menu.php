<?php

namespace App;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Menu
 *
 * @mixin \Eloquent
 * @property int $id
 * @property int $parent_id
 * @property int $order
 * @property string $title
 * @property string $icon
 * @property string $uri
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @method static \Illuminate\Database\Query\Builder|\App\Menu whereId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Menu whereParentId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Menu whereOrder($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Menu whereTitle($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Menu whereIcon($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Menu whereUri($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Menu whereCreatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Menu whereUpdatedAt($value)
 */
class Menu extends Model
{
    use ModelTree, AdminBuilder;
    /**
     * Menu constructor.
     * @param array $attributes
     */
    public function __construct(array $attributes = [])
    {
        $connection = config('admin.database.connection') ?: config('database.default');

        $this->setConnection($connection);

        $this->setTable(config('admin.database.menu_table'));


        parent::__construct($attributes);

    }
}
