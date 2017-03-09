<!--footer-->
<div class="footer">
    <hr>
    Copyright © 2014-2015 沪ICP备15012378号-1
</div>
<script src="{{asset('front/js/jquery.min.js')}}"></script>
<script src="{{asset('front/js/bootstrap.min.js')}}"></script>
<script src="{{asset('front/js/flat.js')}}"></script>
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