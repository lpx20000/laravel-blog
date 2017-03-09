<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="./bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="./css/flatui.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./css/search.css">
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
                    <a class="navbar-brand" href="#">Project Name</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a id="drop1" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="drop1">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a id="drop2" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="drop2">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li id="fat-menu" class="dropdown">
                            <a id="drop3" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="drop3">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="page-header">
            <h1>wellcome to my home <small>Hotell carifori</small></h1>
        </div>
        <!--路径导航-->
        <div class="nav-path">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Search</li>
            </ol>
        </div>
        <!---->
        <div class="row">
            <div class="col-md-9">
                <!-- Success state -->
                <form action="">
                    <div class="form-group has-success">
                        <input class="form-control my-search" type="text" placeholder="Search for something new ?" /><button class="btn btn-warning">Search</button>
                    </div>
                </form>
            <hr>
                <div class="list-group">
                    <button disabled class="list-group-item active">
                        为您找到 “ 10	” 个与 “ mysql	” 相关的文章，以下为搜索结果：
                    </button>
                    <div class="search-list">
                        <a href="#" class="list-group-item"><span class="search-time">2016-09-01 02:08:21</span>Dapibus ac facilisis in</a>
                        <a href="#" class="list-group-item"><span class="search-time">2016-09-01 02:08:21</span>Morbi leo risus</a>
                        <a href="#" class="list-group-item"><span class="search-time">2016-09-01 02:08:21</span>Porta ac consectetur ac</a>
                        <a href="#" class="list-group-item"><span class="search-time">2016-09-01 02:08:21</span>Vestibulum at eros</a>
                    </div>
                </div>
        </div>
        <!--侧边栏-->
    <div class="col-md-3">
        <div>
            <div class="alert alert-danger my-danger" role="alert">
                <span class="glyphicon glyphicon-leaf left-leaf"></span>
                <span>云标签</span>
            </div>
            <hr class="my-tag-line">
            <div class="my-tag">
                <a class="label label-default">Info</a>
                <a class="label label-primary">Primary</a>
                <a class="label label-success">Success</a>
                <a class="label label-info">Info</a>
                <a class="label label-warning">Warning</a>
                <a class="label label-danger">Danger</a>
                <a class="label label-default">Default</a>
                <a class="label label-primary">Primary</a>
                <a class="label label-success">Success</a>
                <a class="label label-info">Info</a>
                <a class="label label-warning">Warning</a>
                <a class="label label-danger">Danger</a>
            </div>
        </div>
        <hr>
        <!--tab切换-->
        <div>
            <ul class="nav nav-tabs" id="myTabs">
                <li role="presentation" class="active"><a class="tab1" href="#">最热文章</a></li>
                <li role="presentation"><a class="tab2" href="#">阅读最多</a></li>
                <li role="presentation"><a class="tab3" href="#">最新文章</a></li>
            </ul>
        </div>
        <!--tab-->
        <div class="tab tab1" style="display: block">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>12第一遍文章描述第一遍文章描</p></a>
            </div>
            <hr class="hr">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>12第一遍文章描述第一遍文章描</p></a>
            </div>
            <hr class="hr">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>12第一遍文章描述第一遍文章描</p></a>
            </div>
            <hr class="hr">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>12第一遍文章描述第一遍文章描</p></a>
            </div>
        </div>
        <!--tab-->
        <div class="tab tab2">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>第一遍文章描述第一遍文章描述第一遍文章描述</p></a>
            </div>
            <hr class="hr">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>第一遍文章描述第一遍文章描述第一遍文章描述</p></a>
            </div>
            <hr class="hr">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>第一遍文章描述第一遍文章描述第一遍文章描述</p></a>
            </div>
            <hr class="hr">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>第一遍文章描述第一遍文章描述第一遍文章描述</p></a>
            </div>
        </div>
        <!--tab-->
        <div class="tab tab3">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>第一遍文章描述第一遍文章描述第一遍文章描述</p></a>
            </div>
            <hr class="hr">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>第一遍文章描述第一遍文章描述第一遍文章描述</p></a>
            </div>
            <hr class="hr">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>第一遍文章描述第一遍文章描述第一遍文章描述</p></a>
            </div>
            <hr class="hr">
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <a href="###" class="thumbnail">
                        <img src="./img/1.jpg" alt="...">
                    </a>
                </div>
                <a href=""><p>第一遍文章描述第一遍文章描述第一遍文章描述</p></a>
            </div>
        </div>
        <hr class="hr">

        <!--link-->
        <div class="alert alert-info my-info" role="alert">
            <span class="glyphicon glyphicon-link"></span>
            <span>友情链接</span>
        </div>
        <div class="friend-link">
            <a href="www.baidu.com"><button class="btn btn-primary" type="button">士大夫sfsdfdsfs</button></a>
            <a href="www.baidu.com"><button class="btn btn-default" type="button">士大夫</button></a>
            <a href="www.baidu.com"><button class="btn btn-info" type="button">士大夫sdfsdfdsf</button></a>
            <a href="www.baidu.com"><button class="btn btn-warning" type="button">士大夫</button></a>
            <a href="www.baidu.com"><button class="btn btn-danger" type="button">士大夫sdfsdfsdfds</button></a>
            <a href="www.baidu.com"><button class="btn btn-success" type="button">士大夫sdfsdfsdfds</button></a>
        </div>
        <hr class="my-tag-line">
    </div>
    </div>
        <!--footer-->
    <hr>
    Copyright © 2014-2015 沪ICP备15012378号-1
    <script src="./js/jquery.min.js"></script>
    <script src="./bootstrap/js/bootstrap.js"></script>
    <script src="./js/flat.js"></script>
    <script>
        //下拉
        $('.dropdown-toggle').dropdown();
        //tab切换
        $('#myTabs a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
            $('.tab').each(function (idex, domEle) {
                $(domEle).css('display','none');
            });
            $('.'+$(this).attr("class")).css('display','block');
        })
    </script>
</body>
</html>