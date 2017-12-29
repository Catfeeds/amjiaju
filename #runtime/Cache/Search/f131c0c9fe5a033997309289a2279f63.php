<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php if( isset($SEO['title']) && !empty($SEO['title']) ): echo ($SEO['title']); endif; echo ($SEO['site_title']); ?></title>
    <meta name="description" content="<?php echo ($SEO['description']); ?>" />
    <meta name="keywords" content="<?php echo ($SEO['keyword']); ?>" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="order by cmsbuy.cn" />
    <link rel="stylesheet" href="/skin/css/code.css"/>
    <link rel="stylesheet" href="/skin/css/lightbox.css"/>
    <link rel="stylesheet" href="/skin/css/gd.css"/>
    <link rel="stylesheet" href="/skin/css/lrtk.css"/>
    <script language="JavaScript" src="/skin/js/jquery-1.9.1.js"></script>
    <script src="/skin/js/sly.min.js"></script>
    <script src="/skin/js/plugins.js"></script>
</head>
<body>
<div class="head clear">
    <div class="head_top clear">
        <div class="head_top_zw">
            <div class="head_tel fl"> <?php echo ($SEO['site_title']); ?> &ensp;&ensp;&ensp;<img src="/skin/images/tel.png" />&ensp;<?php echo cache('Config.phone');?> </div>
            <div class="head_wl fr">
                <ul>
                    <li><a href="<?php echo cache('Config.qqdizhi');?>" target="_blank"><img src="/skin/images/qq.png" />&ensp;&ensp;腾讯QQ&ensp;</a></li>
                    <li><a href="#">| &ensp;&ensp;加入收藏</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="head_zw">
        <div class="head_bottom">
            <div class="head_logo fl"><a href="/"><img src="/skin/images/logo.jpg" /></a></div>
            <div class="head_nav fr">
                <ul>
                    <li style="border-left: 0px; ">&ensp;&ensp;<a href="/" style="text-align: left;">网站首页<br/>
                            HOME</a>&ensp;&ensp;&ensp;</li>
                    <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data = $content_tag->category(array('action'=>'category','catid'=>'0','order'=>'listorder','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                                <div class="head_bor"></div>
                                <div class="li_a"><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["catname"]); ?>&ensp;<br/>
                                        <?php echo ($vo["catname_en"]); ?>&ensp;</a></div>
                            </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
        </div>
    </div>
</div>



<!---block body--->
<div class="nye_nr">
    <div class="nye_zw">
        <div class="xwye_one clear">
                <?php if( !$result ): ?><div id="result" class="noResult">
                        <h3>抱歉，找不到与 "<em><?php echo ($keyword); ?></em>" 相符的信息</h3>
                        <h4>搜搜建议您:</h4>
                        <ul>
                            <li>请检查输入的关键词是否有误</li>
                        </ul>
                    </div>
                    <?php else: ?>
                    <div id="result" class="result">
                        <!--result list begin-->
                        <ol>
                            <?php if(is_array($result)): $i = 0; $__LIST__ = $result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$r): $mod = ($i % 2 );++$i; if(is_array($words)): $i = 0; $__LIST__ = $words;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $r["description"] = str_replace($vo,'<font color="red">'.$vo.'</font>',$r["description"]); $r["title"] = str_replace($vo,'<font color="red">'.$vo.'</font>',$r["title"]); endforeach; endif; else: echo "" ;endif; ?>
                                <li loc="1">
                                    <div id='box_0_0' class="selected boxGoogleList">
                                        <h3><a href="<?php echo ($r["url"]); ?>"  class="tt tu"  target="_blank"><?php echo ($r["title"]); ?></a></h3>
                                        <p class="ds">
                                            <?php echo ($r["description"]); ?>
                                        </p>
                                        <div class="result_summary">
                                            <div class="url"><cite><?php echo ($r["url"]); ?>&nbsp;<?php echo (date("Y-m-d",$r["updatetime"])); ?> -</cite></div>
                                            <div class="sp"><a href="<?php echo ($category[$r['catid']]['url']); ?>" target="_blank" style="color:#999"><?php echo ($category[$r['catid']]['catname']); ?></a></div>
                                        </div>
                                        <div class="highLight"></div>
                                    </div>
                                </li><?php endforeach; endif; else: echo "" ;endif; ?>
                        </ol>
                        <!--result list end--></div><?php endif; ?>
        </div>
        <div class="nrye_page">
            <div class="pages">
                <?php echo ($Page); ?>
            </div>
        </div>
    </div>
</div>

<!---block body end--->

<!---block body end--->
<div class="footer">
    <div class="footer_zw">
        <div class="footer_le fl">
            <div class="footer_one">
                <ul>
                    <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data = $content_tag->category(array('action'=>'category','catid'=>'0','order'=>'listorder','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["catname"]); ?></a>&ensp;&ensp;|&ensp;&ensp;</li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            <div class="footer_two"> &ensp;&ensp;&ensp;<?php echo cache('Config.bqsy');?>&ensp;&ensp;<?php echo cache('Config.bah');?> </div>
            <div class="footer_two"> 公司地址： <?php echo cache('Config.gsdz');?>&ensp;&ensp;&ensp;服务热线： <?php echo cache('Config.phone');?>&ensp;</div>
        </div>
        <div class="footer_ri fr">
            <div class="footer_ri_t"> 关于我们：&ensp;&ensp;<a href="<?php echo cache('Config.qqdizhi');?>" target="_blank"><img src="/skin/images/tengxun1.png" /></a>&ensp;<a href="#"  class="weixin"><img src="/skin/images/weixin1.png" />
                    <div class="footer_twm"><img src="/skin/images/2weima.jpg" /></div>
                </a> </div>
            <div class="footer_ri_b"> 服务热线： <?php echo cache('Config.phone');?> </div>
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