<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Routing\UrlGenerator;
use Laravel\Socialite\Facades\Socialite;

class AuthController extends Controller
{
    /**
     * @var \Illuminate\Http\RedirectResponse|string
     */
    protected $url = '';

    /**
     * AuthController constructor.
     */
    public function __construct()
    {
        $this->url = redirect()->back();
    }
    /**
     * @return mixed
     */
    public function redirectToProvider()
    {
        return Socialite::driver('github')->redirect();
    }

    /**
     * @return bool|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Laravel\Lumen\Http\Redirector|void
     */
    public function handleProviderCallback()
    {
         $user = Socialite::driver('github')->user();

        return $this->fillAttributeData($user);
    }

    /**
     * @param $info
     * @return bool|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Laravel\Lumen\Http\Redirector|void
     */
    public function fillAttributeData($info)
    {
        $user = new User();

        if ($User = $this->checkIfAuthorized($user, $info->nickname)) {
            auth()->login($User);
            return $this->url;
        }
        return $this->authorizedToLogin($info, $user);
    }

    /**
     * @param User $user
     * @param $name
     * @return \Illuminate\Database\Eloquent\Collection|\Illuminate\Database\Eloquent\Model
     */
    public function checkIfAuthorized(User $user, $name)
    {
        return $user->whereUsername($name)->first();
    }

    /**
     * @param $info
     * @param $user
     * @return bool
     */
    protected function authorizedToLogin($info, User $user)
    {
        $userInfo = $info->user;
        $user->username = $userInfo['login'];
        $user->email = $userInfo['email'];
        $user->github_id = $userInfo['id'];
        $user->github_name = $userInfo['login'];
        $user->github_url = $userInfo['html_url'];
        $user->avatar = $userInfo['avatar_url'];
        $user->password = '';
        $user->remember_token = $info->token;
        $user->save();
        auth()->login($user);
        return $this->url;
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function Logout()
    {
        auth()->logout();
        return redirect()->back();
    }
}
