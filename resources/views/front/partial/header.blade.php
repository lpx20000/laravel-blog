<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="{{asset('front/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('front/css/flatui.css')}}" rel="stylesheet">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <link rel="stylesheet" href="{{asset('front/css/index.css')}}">
    <link rel="stylesheet" href="{{asset('front/css/detail.css')}}">
</head>
<body>

<div class="container">
    <nav  class="navbar navbar-default navbar-static navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-example-js-navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{route('home')}}">雨一直下,人生</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                 @foreach($categories as $category)
                    <li class="dropdown">
                        <a id="drop1"  href="{{route('category', [$category->slug])}}"
                           aria-expanded="false">
                            {{$category->title}}
                        </a>
                    </li>
                 @endforeach
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    @if($user=auth()->user())
                        <li>
                            <li><img src="{{$user->avatar}}/" alt="头像" style="width: 20px;position: relative;top: 15px;right: 100px;"></li>
                            <li><a style="padding: 0;margin: 0;position:relative ;top: 18px;right: 80px;" href="{{url($user->github_url)}}">{{$user->username}}</a></li>
                            <li><a href="{{route('logout')}}" style="padding: 0;margin: 0;position: relative;top:18px;right:60px;">退出</a></li>
                        </li>
                    @else
                        <li id="fat-menu">
                            <a href="{{route('githubLogin')}}">
                                登录
                            </a>
                        </li>
                    @endif
                </ul>
            </div>
        </div>
    </nav>
    <div class="page-header">
        {{--<h1>气氛不算融洽 <small>Hotell carifori</small></h1>--}}
    </div>