<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Role
 *
 * @property int $id
 * @property string $name
 * @property string $slug
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @method static \Illuminate\Database\Query\Builder|\App\Role whereId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Role whereName($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Role whereSlug($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Role whereCreatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Role whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Permission[] $permissions
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\User[] $users
 */
class Role extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['name', 'slug'];

    /**
     * Role constructor.
     * @param array $attributes
     */
    public function __construct(array $attributes = [])
    {
        $connection = config('admin.database.connection') ?: config('database.default');

        $this->setConnection($connection);

        $this->setTable(config('admin.database.roles_table'));

        parent::__construct($attributes);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function permissions()
    {
        $pivotTable = config('admin.database.role_permissions_table');
        return $this->belongsToMany(Permission::class, $pivotTable, 'role_id', 'permission_id');
    }

    public function menus()
    {
        $pivotTable = config('admin.database.role_menu_table');
        return $this->belongsToMany(Menu::class, $pivotTable, 'role_id', 'menu_id');
    }
    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function users()
    {
        $pivotTable = config('admin.database.role_users_table');
        return $this->belongsToMany(User::class, $pivotTable, 'role_id', 'user_id');
    }

    /**
     * @param $permission
     * @return mixed
     */
//    public function can($permission)
//    {
//        return $this->permissions()->whereSlugIn($permission)->exists();
//    }

    /**
     * @param $permission
     * @return bool
     */
//    public function cannot($permission)
//    {
//        return !$this->can($permission);
//    }
}
