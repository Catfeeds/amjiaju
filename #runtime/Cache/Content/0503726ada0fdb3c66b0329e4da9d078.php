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
    <meta http-equiv="mobile-agent" content="format=xhtml;url=/index.php?g=wap">
    <script type="text/javascript">if(window.location.toString().indexOf('pref=padindex') != -1){}else{if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){if(window.location.href.indexOf("?mobile")<0){try{if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){window.location.href="/index.php?g=wap";}else if(/iPad/i.test(navigator.userAgent)){}else{}}catch(e){}}}}</script>
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
            <div class="head_logo fl"><a href="/"><img src="<?php echo ($Config["sitepclogo"]); ?>" /></a></div>
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
<?php if($catid == 0): ?><div class="banner">
        <div class="big_float">
            <div class="float">
                <div class="zzz fl"><a href="#"><img src="/skin/images/zuo.png"/></a></div>
                <div class="yyy fr"><a href="#"><img src="/skin/images/you.png" class=""/></a></div>
            </div>
        </div>
        <div class="banner_no">
            <div class="banner_bo">
                <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'77','order'=>'listorder','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div style="background: url('<?php echo ($vo["thumb"]); ?>') center no-repeat;" class="banner_2 fl"> <a href="" title=""></a> </div><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        </div>
    </div>
    <?php else: ?>
    <div class="lxye_banner" style="background:url(<?php echo getcategory($catid,'image');?>) no-repeat center;"></div><?php endif; ?>



<div class="cpye_nav">
    <div class="cpye_zw">
        <div class="cpye_le fl">
            <ul>

            </ul>
        </div>
        <div class="cpye_ri fr"> 当前位置：<a target="_blank" href="/">首页</a>&nbsp;&gt;&nbsp;<?php  $arrparentid = array_filter(explode(',', getCategory($catid,"arrparentid") . ',' . $catid)); foreach ($arrparentid as $cid) { $parsestr[] = '<a href="' . getCategory($cid,'url') . '" >' . getCategory($cid,'catname') . '</a>'; } echo implode("&nbsp;&gt;&nbsp;", $parsestr);?></div>
    </div>
</div>

<!---block body--->
<div class="nye_nr">
    <div class="nye_zw">
        <div class="lxye_top">
            <div class="lxye_zuo fl">
                <div class="lxye_tit"> 广东智能家居有限公司 </div>
                <div class="lxye_li" style="width: 821px;">
                    <ul>
                        <li style="width: 300px;"><img src="/skin/images/lx_dd.jpg" />广东智能家居有限公司</li>
                        <li><img src="/skin/images/lx_em.png" /> admin@cmsbuy.cn</li>
                        <li style="width: 300px;"><img src="/skin/images/lx_tel.png" /> 0755-88888888</li>
                        <li><img src="/skin/images/lx_tel.png" /> 传真 : 0898-66889886</li>
                        <li style="width: 300px;"><img src="/skin/images/lx_tel.png" /> 陈总 : 18565676808</li>
                        <li style="width: 460px;"><img src="/skin/images/lx_dd.jpg" />乘坐1路公交车，中村站点下车，往西500米，到达国贸玉沙大街广东智能家居有限公司</li>
                    </ul>
                </div>
            </div>
            <div class="lxye_you fl">
                <div class="lxye_zzz fl"> 手机站： <img src="/skin/images/2weima.png" style="width: 130px;height: 130px;margin-top: 12px;"/> </div>
                <div class="lxye_zzz fl"> 微信站： <img src="/skin/images/2weima.jpg" /> </div>
            </div>
        </div>
        <div class="lxye_bot">
            <div style="width:1200px;height:490px;border:#ccc solid 1px;font-size:12px" id="map"></div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/skin/js/map.js"></script>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMapOverlay();//向地图添加覆盖物
    }
    function createMap(){
        map = new BMap.Map("map");
        map.centerAndZoom(new BMap.Point(<?php echo cache('Config.dtzb');?>),12);
    }
    function setMapEvent(){
        map.enableScrollWheelZoom();
        map.enableKeyboard();
        map.enableDragging();
        map.enableDoubleClickZoom()
    }
    function addClickHandler(target,window){
        target.addEventListener("click",function(){
            target.openInfoWindow(window);
        });
    }
    function addMapOverlay(){
        var markers = [
            {content:"<?php echo cache('Config.zbdj');?>",title:"<?php echo cache('Config.zbtitle');?>",imageOffset: {width:0,height:3},position:{lat:37.643405,lng:120.483939}}
        ];
        for(var index = 0; index < markers.length; index++ ){
            var point = new BMap.Point(markers[index].position.lng,markers[index].position.lat);
            var marker = new BMap.Marker(point,{icon:new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap/images/icon.png",new BMap.Size(20,25),{
                imageOffset: new BMap.Size(markers[index].imageOffset.width,markers[index].imageOffset.height)
            })});
            var label = new BMap.Label(markers[index].title,{offset: new BMap.Size(25,5)});
            var opts = {
                width: 200,
                title: markers[index].title,
                enableMessage: false
            };
            var infoWindow = new BMap.InfoWindow(markers[index].content,opts);
            marker.setLabel(label);
            addClickHandler(marker,infoWindow);
            map.addOverlay(marker);
        };
    }
    //向地图添加控件
    function addMapControl(){
        var scaleControl = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
        scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
        map.addControl(scaleControl);
        var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(navControl);
        var overviewControl = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:true});
        map.addControl(overviewControl);
    }
    var map;
    initMap();
</script>

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