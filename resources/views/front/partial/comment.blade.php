
<div class="panel panel-success" style="float: left">
    <div class="alert alert-success my-success" role="alert"><h5>评论</h5></div>
    @foreach($comments as $comment)
        <div class="panel-body">
        <div class="person">
            <div class="alert alert-warning my-warning" role="alert">
                <img src="{{asset('front/img/1.jpg')}}" alt="..." class="img-circle">
                <div class="person-info">
                    <span class="my-name">{{$comment->user_id}}</span>
                    <span class="repy-time">{{$comment->created_at->diffForHumans()}}</span>
                </div>
                <div class="message">
                    {{$comment->content}}
                    <button type="submit" class="btn btn-default comment">回复</button>
                </div>
                <form action="{{route('comment', [$article->id])}}" class="form" style="display: none" method="post">
                    {{csrf_field()}}
                    <input type="hidden" name="parent_id" value="{{$comment->id}}">
                    <textarea class="form-control" name="content" rows="3" placeholder="Text input"></textarea>
                    <button class="btn btn-success my-success-button">发布</button>
                </form>
            </div>
            {!! $indexPresenter->commentLevelTree($comment, $article->id) !!}
        </div>
        <hr>
    </div>
    @endforeach
    <form action="{{route('comment', [$article->id])}}" method="post" class="form">
        <input type="hidden" name="parent_id" value="0">
        {{csrf_field()}}
        <textarea class="form-control" name="content" rows="3" placeholder="输入评论"></textarea>
        <button class="btn btn-success my-success-button">发布</button>
    </form>
    @include('front.partial.errors')
</div>



