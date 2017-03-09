
@forelse($article as $item)
    <div>
        <div class="row main-row">
            <div class="col-xs-6 col-md-3">
                <a href="{{route('article', [$item->slug])}}" class="thumbnail">
                    <img src="{{ isset($item->image_url) ? $item->image_url : 'http://lorempixel.com/182/182/?83080' }}" alt="...">
                </a>
            </div>
            <h6><a href="{{route('article', [$item->slug])}}">{{$item->title}}</a></h6>
            <p>{{$indexPresenter->limitLengthOfString($item->content)}}</p>
        </div>
        <div class="alert alert-warning my-alert" role="alert">
            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
            <span class="timer">{{$item->created_at->diffForHumans()}}</span>
            <span class="glyphicon glyphicon-leaf"></span>
            @forelse ($item->categories as $category)
                <span><a href="{{route('category', [$category->slug])}}">{{$category->title}}</a></span>
            @empty
                <span><a href="#">暂无分类</a></span>
            @endforelse


            <span class="glyphicon glyphicon-user"></span>
            <span><a href="#">{{$indexPresenter->getArticleUserName($item->user_id)}}</a></span>
            <a href="{{route('article', [$item->slug])}}" class="show-more"><span class="glyphicon glyphicon-option-horizontal"></span></a>
        </div>
    </div>
    <hr class="middle-hr">
@empty
    <p style="text-align: center;height:45px;line-height:45px;margin:0;padding: 0">No Article found.</p>
@endforelse