@include('front.partial.header')
    <div class="row">
        <!--主栏-->
        <div class="col-md-9">
        @yield('content')
    </div>

    <!--侧边栏-->
    @include('front.partial.section')


@include('front.partial.footer')