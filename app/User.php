<?php

namespace App;

use App\Permission;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

/**
 * App\User
 *
 * @property int $id
 * @property string $name
 * @property string $email
 * @property string $confirm_code
 * @property bool $is_admin
 * @property string $github_id
 * @property string $github_name
 * @property string $github_url
 * @property string $weibo_name
 * @property string $weibo_link
 * @property string $avatar
 * @property string $password
 * @property string $remember_token
 * @property string $deleted_at
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $readNotifications
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $unreadNotifications
 * @method static \Illuminate\Database\Query\Builder|\App\User whereId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereName($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereEmail($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereConfirmCode($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereIsAdmin($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereGithubId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereGithubName($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereGithubUrl($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereWeiboName($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereWeiboLink($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereAvatar($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User wherePassword($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereRememberToken($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereDeletedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereCreatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\User whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property string $username
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Role[] $roles
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Permission[] $permissions
 * @method static \Illuminate\Database\Query\Builder|\App\User whereUsername($value)
 */
class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'user_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * User constructor.
     * @param array $attributes
     */
    public function __construct(array $attributes = [])
    {
        $connection = config('admin.database.connection') ?: config('database.default');

        $this->setConnection($connection);

        $this->setTable(config('admin.database.users_table'));


        parent::__construct($attributes);

    }

    /**
     * @param $value
     * @return string
     */
    public function getEmailAttribute($value)
    {
        return ucfirst($value);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function roles()
    {
        $pivotTable = config('admin.database.role_users_table');
        return $this->belongsToMany(Role::class, $pivotTable, 'user_id', 'role_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function permissions()
    {
        $pivotTable = config('admin.database.user_permissions_table');
        return $this->belongsToMany(Permission::class, $pivotTable, 'user_id', 'permission_id');
    }

    /**
     * @param string $ability
     * @param array $arguments
     * @return bool
     * @internal param string $permissions
     */
    public function can($ability, $arguments = [])
    {
        if ($this->isSuperAdmin()) return true;

        if (is_string($ability)) {
            return $this->hasPermission($ability);
        };

        if (is_array($ability)) {
            array_filter($ability, function($permission) {
                return $this->hasPermission($permission);
            });
        }

//        if (!is_null($permissions)) {
//            foreach ($this->roles as $role) {
//                return $role->can($permissions);
//            }
//        }
        return false;
    }

    /**
     * @return bool
     */
    public function isSuperAdmin()
    {
        return $this->isAdmin() && $this->isAdministrator();
    }

    /**
     * @return bool
     */
    public function isAdmin()
    {
        return $this->is_admin;
    }

    /**
     * @return mixed
     */
    public function isAdministrator()
    {
        return $this->isRole('administrator');
    }

    /**
     * @param $role
     * @return mixed
     */
    public function isRole($role)
    {
        return $this->roles()->whereSlug($role)->exists();
    }

    /**
     * @param array $role
     * @return mixed
     */
    public function inRole(array $role)
    {
        return $this->roles()->whereSlugIn($role)->exists();
    }

    /**
     * @param $permissions
     * @return mixed
     */
    protected function hasPermission($permissions)
    {
        return $this->permissions()->whereSlug($permissions)->exists();
    }
}
