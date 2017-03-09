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
   @foreach($hots as $hot)
    <div class="row">
        <div class="col-xs-6 col-md-4">
            <a href="{{url('article', [$hot->slug])}}" class="thumbnail">
                <img src="{{asset($hot->image_url)}}" alt="...">
            </a>
        </div>
        <a href="{{route('article', $hot->slug)}}"><p>{{$indexPresenter->limitLengthOfString($hot->title, 15)}}</p></a>
    </div>
    <hr class="hr">
  @endforeach
</div>
<!--tab-->
<div class="tab tab2">
    @foreach($mosts as $most)
        <div class="row">
            <div class="col-xs-6 col-md-4">
                <a href="{{url('article', [$most->slug])}}" class="thumbnail">
                    <img src="{{asset($most->image_url)}}" alt="...">
                </a>
            </div>
            <a href="{{route('article', $hot->slug)}}"><p>{{$indexPresenter->limitLengthOfString($most->title, 15)}}</p></a>
        </div>
    <hr class="hr">
    @endforeach
</div>
<!--tab-->
<div class="tab tab3">
    @foreach($news as $new)
        <div class="row">
            <div class="col-xs-6 col-md-4">
                <a href="{{url('article', [$new->slug])}}" class="thumbnail">
                    <img src="{{asset($new->image_url)}}" alt="...">
                </a>
            </div>
            <a href="{{route('article', $hot->slug)}}"><p>{{$indexPresenter->limitLengthOfString($new->title, 15)}}</p></a>
        </div>
        <hr class="hr">
    @endforeach
</div>