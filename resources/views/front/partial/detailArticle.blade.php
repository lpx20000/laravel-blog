<div class="col-md-9">
    <h5>{{$article->title}}</h5>
    <hr>
    <div class="alert alert-warning my-detail-alert" role="alert">
                <span class="left-alter">
                    <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                    <span class="timer">{{$article->created_at->diffForHumans()}}</span>
                    <span class="glyphicon glyphicon-leaf"></span>
                    @forelse ($article->categories as $category)
                        <span><a href="{{route('category', [$category->slug])}}">{{$category->title}}</a></span>
                    @empty
                        <span><a href="#">暂无分类</a></span>
                    @endforelse
                    <span class="glyphicon glyphicon-user"></span>
                    <span><a href="">{{$indexPresenter->getArticleUserName($article->user_id)}}</a></span>
                    <span class="glyphicon glyphicon-pencil"></span>
                    <span>{{$indexPresenter->isOriginal($article->is_original)}}</span>
                </span>
        <span class="right-alert">
                    <span class="glyphicon glyphicon-eye-open"></span>
                    <span>{{$article->view or '0'}}</span>
                    <span class="glyphicon glyphicon-sta"></span>
                    <span class="glyphicon glyphicon-comment"></span>
                    <span>{{$indexPresenter->commentForArticle($article->id)}}</span>
                </span>
    </div>
    <hr>
    <p>
        {!! $indexPresenter->comentToMarkdown($article->content) !!}
    </p>
    <div class="panel panel-warning my-panel-warning">
        {!! $nextAndPreArticle = $indexPresenter->nextAndPreArticle($article->id) !!}
    </div>
    @include('front.partial.comment', $comments = $indexPresenter->gainArticleCommentById($article->comments))
</div>