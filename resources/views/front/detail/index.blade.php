@include('front.partial.header')
@inject('indexPresenter', 'App\Presenters\IndexPresenter')
    <div class="row">
        <!--路径导航-->
        @include('front.partial.nav')
        <!--主栏-->
        @include('front.partial.detailArticle')

        <!--侧边栏-->
       @include('front.partial.section')
    </div>

 @include('front.partial.footer')

<script>
    (function () {
        $('.comment').click(function (obj) {
            $(this).css("display","none");
            next = $(this).parent().next();
            $(next).css("display","block");
        });
    })()
</script>
