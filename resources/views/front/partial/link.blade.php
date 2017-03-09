@foreach($links as $link)
    <a href="{{url($link->link_url)}}">
        <button style="width: 270px;" class="btn btn-{{$tagsClass[array_rand($tagsClass)]}}" type="button">{{$link->name}}</button>
    </a>
@endforeach