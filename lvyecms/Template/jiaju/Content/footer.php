<div class="footer">
    <div class="footer_zw">
        <div class="footer_le fl">
            <div class="footer_one">
                <ul>
                    <content action="category" catid="0" order="listorder">
                        <volist name="data" id="vo">
                            <li><a href="{$vo.url}">{$vo.catname}</a>&ensp;&ensp;|&ensp;&ensp;</li>
                        </volist>
                    </content>
                </ul>
            </div>
            <div class="footer_two"> &ensp;&ensp;&ensp;{:cache('Config.bqsy')}&ensp;&ensp;{:cache('Config.bah')} </div>
            <div class="footer_two"> 公司地址： {:cache('Config.gsdz')}&ensp;&ensp;&ensp;服务热线： {:cache('Config.phone')}&ensp;</div>
        </div>
        <div class="footer_ri fr">
            <div class="footer_ri_t"> 关于我们：&ensp;&ensp;<a href="{:cache('Config.qqdizhi')}" target="_blank"><img src="/skin/images/tengxun1.png" /></a>&ensp;<a href="#"  class="weixin"><img src="/skin/images/weixin1.png" />
                    <div class="footer_twm"><img src="/skin/images/2weima.jpg" /></div>
                </a> </div>
            <div class="footer_ri_b"> 服务热线： {:cache('Config.phone')} </div>
        </div>
    </div>
</div>


<!---block script--->

<script>
    function tab(menuname,tabboxname){
        var mname = 'active';
        var bname = 'show';
        var $li = $(menuname);
        var $listul = $(tabboxname);
        $li.eq(0).addClass(mname);
        $listul.eq(0).addClass(bname);
        $li.hover(function(){
            var index = $li.index(this);
            $li.removeClass(mname);
            $(this).addClass(mname);
            $listul.removeClass(bname);
            $listul.eq(index).addClass(bname);
            return false;
        })
    }
    $(function(){
        tab('.top li','.cp_nrl');
    });

    $(function(){
        var ww = $(window).width();
        if(ww<=1200){
            ww=1200;
        }
        $('.banner_2,.banner_no').width(ww);

        if($('.banner_no').length){
            var $frame = $('.banner_no');
            var $wrap  = $frame.parent();

            // Call Sly on frame
            var sly = new Sly($frame, {
                horizontal: 1,
                itemNav: 'basic',
                smart: 1,
                activateOn: 'click',
                mouseDragging: 1,
                touchDragging: 1,
                releaseSwing: 1,
                startAt: 0,
                scrollBar: $wrap.find('.scrollbar'),
                scrollBy: 1,
                speed: 1000,
                elasticBounds: 1,
                easing: 'easeOutExpo',
                dragHandle: 1,
                dynamicHandle: 1,
                clickBar: 1,
                pauseOnHover:false,

                // Cycling
                cycleBy: 'items',
                cycleInterval: 5000,


                // Buttons
                prev: $('.zzz'),
                next: $('.yyy')
            }).init();
        }
        $(window).resize(function(){
            var ww = $(window).width();
            if(ww<=1200){
                ww=1200;
            }
            $('.banner_2,.banner_no').width(ww);
            sly.reload();
        });

    });
    $(function(){
        $('.yy_big').sly({
            itemNav: 'basic',
            smart: 1,
            activateOn: 'click',
            mouseDragging: 1,
            touchDragging: 1,
            releaseSwing: 1,
            startAt: 0,
            speed: 500,
            elasticBounds: 1,
            easing: 'easeOutExpo',
            dragHandle: 1,
            dynamicHandle: 1,
            clickBar: 1,

            // Buttons
            prevPage: $('.bot_ss'),
            nextPage: $('.bot_xx')
        });
    })

    $(function(){
        $(window).scroll(function(){
            if($(window).scrollTop()>100){  //距顶部多少像素时，出现返回顶部按钮
                $("#side-bar .gotop").fadeIn();
            }
            else{
                $("#side-bar .gotop").hide();
            }
        });
        $("#side-bar .gotop").click(function(){
            $('html,body').animate({'scrollTop':0},500); //返回顶部动画 数值越小时间越短
        });
    });
    $(document).ready(function() {
        $(".iframe").colorbox({iframe: true, width: "800", height: "80%"});
    });
</script>
<script language="JavaScript" src="/skin/js/jquery.colorbox.js"></script>
<link rel="stylesheet" href="/skin/css/colorbox.css"/>

<!---block script end--->
<script type="text/javascript">
    $(document).ready(function(){
        $(".weixin").hover(function(){
            $(".footer_twm").slideToggle("slow");
        });
    });
</script>
</body>
</html>