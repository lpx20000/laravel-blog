<div class="col-md-3">
    <!--搜索框开始-->
    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for...">
        <span class="input-group-btn">
             <button class="btn btn-primary" type="button">Go!</button>
        </span>
    </div>
    <!--搜索框结束-->
    @include('front.partial.tags')
    <hr>
    @include('front.partial.siderBar')
    <hr class="hr">

    <!--link-->
    <div class="alert alert-info my-info" role="alert">
        <span class="glyphicon glyphicon-link"></span>
        <span>友情链接</span>
    </div>
    <div class="friend-link">
        @include('front.partial.link')
    </div>
    <hr class="my-tag-line">
</div>
</div>
