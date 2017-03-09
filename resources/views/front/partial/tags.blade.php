<div>
    <div class="alert alert-danger my-danger" role="alert">
        <span class="glyphicon glyphicon-leaf left-leaf"></span>
        <span>云标签</span>
    </div>
    <hr class="my-tag-line">
    <div class="my-tag">
        @foreach($tags as $tag)
            <a href="{{route('tag', $indexPresenter->turnIntoSlug([$tag->name]))}}" class="label label-{{$tagsClass[array_rand($tagsClass)]}}">
                {{$indexPresenter->limitLengthOfString($tag->name, 10)}}
            </a>&nbsp;
        @endforeach
    </div>
</div>