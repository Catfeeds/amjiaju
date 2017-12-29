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



<div class="nav over">
    <div class="zw">
        <div class="nav_left fl">
            <ul>
                <div class="nav_div">他们都在找：</div>
                <li><a href="/index.php?g=Search&g=Search&q=木制衣柜">木制衣柜</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=开放式衣柜">开放式衣柜</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=高级橱柜">高级橱柜</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=厨房布置">厨房布置</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=餐厅布置">餐厅布置</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=卧室装修">卧室装修</a></li>
                <li style="border-right:0px;"><a href="/index.php?g=Search&g=Search&q=金属橱柜">金属橱柜</a></li>
            </ul>
        </div>
        <div class="big">
            <div class="nav_right fr">
                <form name="formsearch" action="<?php echo U('Search/Index/index');?>" method="post" onsubmit="return p()" >
                    <input type="hidden" name="g" value="Search" />
                    <div class="left fl">
                        <input name="q" id="q" type="text" placeholder="请输入你要搜索的关键词"/>
                    </div>
                    <div class="right fr">
                        <input type="submit" value=""/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function p(){
        var aa = document.getElementById("q").value;

        if (!aa)
        {
            alert("请输入您要查询的内容")
            return false;
        }
    }
</script>
<div class="cp">
    <div class="cp_nr clear">
        <div class="top">
            <ul>
                <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data = $content_tag->category(array('action'=>'category','catid'=>'3','order'=>'listorder','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["catname"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
        <div class="bottom over">
            <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data = $content_tag->category(array('action'=>'category','catid'=>'3','order'=>'listorder','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vp): $mod = ($i % 2 );++$i;?><div class="cp_nrl fl">
                        <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>$vp['catid'],'order'=>'id desc','num'=>'1','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="cr_left fl">
                                    <div class="cr_one" style="background: url('<?php echo ($vo["thumb"]); ?>');">
                                        <a href="<?php echo ($vo["url"]); ?>">
                                            <div class="blk_le fl"></div>
                                            <div class="blk_text clear"> <?php echo ($vo["title"]); ?> <br/>
                                                <br/>
                                                <img src="/skin/images/jia.png"/></div>
                                            <div class="blk_ri fr"></div>
                                        </a></div>
                                </div><?php endforeach; endif; else: echo "" ;endif; ?>
                        <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>$vp['catid'],'order'=>'id desc LIMIT 1,4--','num'=>'4','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="cr_right fl">
                                    <div class="bigb clear">
                                        <div class="cr_two cpp fl" style="background: url('<?php echo ($vo["thumb"]); ?>');">
                                            <a href="<?php echo ($vo["url"]); ?>">
                                                <div class="blk1 fl"></div>
                                                <div class="text clear"> <?php echo ($vo["title"]); ?> <br/>
                                                    <br/>
                                                    <img src="/skin/images/jia.png"/></div>
                                                <div class="blk2 fr"></div>
                                            </a>
                                        </div>
                                    </div>
                                </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    </div><?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
    </div>
</div>
<div class="xw">
    <div class="xw_zw clear">
        <div class="xw_top">
            <div class="xw_quan fr">
                <ul>
                    <a href="<?php echo getcategory(2,'url');?>">
                        <li></li>
                        <li></li>
                        <li></li>
                    </a>
                </ul>
            </div>
        </div>
        <div class="xw_boot">
            <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'2','order'=>'id desc','num'=>'4','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="xw_nr fl"><a href="<?php echo ($vo["url"]); ?>">
                            <div class="nr1" style="background: url('<?php echo ($vo["thumb"]); ?>')">
                                <div class="nr_bl">
                                    <div class="xw_text"> <?php echo (str_cut($vo["title"],12)); ?><br/>
                                        <br/>
                                        <img src="/skin/images/jia.png"/></div>
                                </div>
                            </div>
                        </a></div><?php endforeach; endif; else: echo "" ;endif; ?>
            <div class="xw_nr1 fl">
                <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'2','order'=>'id desc limit 4,3--','nuim'=>'3','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo ($vo["url"]); ?>">
                            <div class="nr">
                                <div class="bl">
                                    <div class="font1"><?php echo (str_cut($vo["title"],11)); ?></div>
                                    <div class="font2"><?php echo (str_cut($vo["description"],35)); ?></div>
                                    <div class="font3">
                                        <div class="fl">DATA:<?php echo (date('Y-m-d',$vo["updatetime"])); ?></div>
                                        <div class="fr"><img src="/skin/images/xw_you.png"/></div>
                                    </div>
                                </div>
                            </div>
                        </a><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        </div>
    </div>
</div>
<div class="pp">
    <div class="pp_zw">
        <div class="pp_zz fl">
            <div class="pp_zs">
                <div class="zuo fl">
                    <div class="zuo_s"></div>
                    <div class="zuo_x"> 办公环境展示</div>
                </div>
                <div class="you fr">
                    <div class="you_s">
                        <div class="logo fl"><a href="<?php echo getcategory(62,'url');?>"><img src="/skin/images/logo1.jpg"/></a>
                        </div>
                        <div class="mo fr"><a href="<?php echo getcategory(62,'url');?>">MORE</a></div>
                    </div>
                    <div class="you_x">
                        <div class="text">
                            合肥荣事达电子电器集团有限公司的荣事达智能家居是荣事达集团根据市场发展，汲取国际领先的智能家居理念，紧跟时代潮流，追求科技、智能、时尚、品质的设计风格，重金打造的智能家居品牌。
                            经过不断的钻研和发展，荣事达智能家居系统可以实现包括环境监测与智能控制、实时双向智能报警、智能报警联动、智能开关控制、智能插座控制、智能电器控制、智能窗帘控制、智能定时控制、智能红外远程控制、智能场景控制、远程视频监控以及可编程定时控制等多种功能和手段。
                            合肥荣事达电子电器集团有限公司的荣事达智能家居系统以住宅为平台，利用综合布线技术、网络通信技术、安全防范技术、自动控制技术、音视频技术将家居生活有关的设施集成，构建高效的住宅设施与家庭日程事务的管理系统，提升家居安全性、便利性、舒适性、艺术性，并实现环保节能的居住环境。并致力于提供各行业的智能解决方案而努力，荣事达智能酒店解决方案、智能办公解决方案、智能农业解决方案、...
                        </div>
                    </div>
                </div>
            </div>
            <div class="pp_zx">
                <div class="pp_tu fl" style="background: url('/skin/images/ppfw2.jpg')">
                    <div class="pp_blk">
                        <div class="pp_btex">
                            <p> DEVELOPMENT COURSE</p>
                            <p class="pp_bteb"> 发展历程</p>
                            <div class="pp_bku"></div>
                        </div>
                    </div>
                </div>
                <div class="pp_tu fl" style="background: url('/skin/images/ppfw3.jpg')">
                    <div class="pp_blk">
                        <div class="pp_btex">
                            <p> DEVELOPMENT COURSE</p>
                            <p class="pp_bteb"> 经营理念</p>
                            <div class="pp_bku"></div>
                        </div>
                    </div>
                </div>
                <div class="pp_tu fl" style="margin-right: 0px; background: url('/skin/images/ppfw4.jpg')">
                    <div class="pp_blk">
                        <div class="pp_btex">
                            <p> DEVELOPMENT COURSE</p>
                            <p class="pp_bteb"> 拓展市场</p>
                            <div class="pp_bku"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pp_yy fr">
            <div class="yy_top">
                <div class="top_z fl"><a href="#"><img src="/skin/images/logo2.jpg"/></a></div>
                <div class="top_y fr"><a href="#">MORE</a></div>
            </div>
            <div class="yy_big">
                <div class="yy_box">
                    <div class="yy_bot">
                        <div class="bot_tab"> 1、客户咨询</div>
                        <div class="bot_text"> 现场为客户提供全方位咨询（设计、材料、品质、价格）</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 2、上门测量</div>
                        <div class="bot_text"> 上门测量房屋尺寸</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 3、图纸材料</div>
                        <div class="bot_text"> 所有智能设计师可以根据您的需求为您提供免费的家装设计，家装设计咨询服务。</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 4、方案报价</div>
                        <div class="bot_text"> 主材，基础预算业主带走比价</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 5、签订合同</div>
                        <div class="bot_text"> 签订装修合同</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 6、各项验收</div>
                        <div class="bot_text"> 各项验收</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 7、工程开始</div>
                        <div class="bot_text"> 隐蔽工程、泥水工程、木作工程、油漆工程施工</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 8、支付首款</div>
                        <div class="bot_text"> 支付首款。</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 9、二三期款</div>
                        <div class="bot_text"> 支付二三期款</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 10、竣工验收</div>
                        <div class="bot_text"> 检验整体工程</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 11、支付尾款</div>
                        <div class="bot_text"> 支付尾款</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 12、整体保修</div>
                        <div class="bot_text"> 进行售后保修</div>
                    </div>
                </div>
            </div>
            <div class="bot_sx"><a href="#">
                    <div class="fl bot_ss"></div>
                </a><a href="#">
                    <div class="fr bot_xx"></div>
                </a></div>
        </div>
    </div>
</div>
<div class="zs"></div>
<div class="wm">
    <div class="wm_zw">
        <div class="wm_nr">
            <div class="wm_top">
                <div class="wm_left fl"><img src="/skin/images/lxwm.png"/></div>
                <div class="wm_right fr">
                    <form action="<?php echo U('Message/add');?>" enctype="multipart/form-data" method="post">
                        <div class="tex">
                            <input name="name" class="fr" type="text" placeholder="联系人："/>
                        </div>
                        <div class="tex">
                            <input name="telephone" class="fr" type="text" placeholder="电 话："/>
                        </div>
                        <div class="tex">
                            <input name='email' class="fr" type="text" placeholder="邮 箱："/>
                        </div>
                        <div class="liuyan">
                            <textarea name='info' class="fr" placeholder="留 言："></textarea>
                        </div>
                        <div class="butn">
                            <input type="submit" name="dosubmit" id="dosubmit" value="提交留言"/>
                        </div>
                    </form>
                </div>
            </div>
            <div class="wm_bott">
                <div class="penr fl">
                    <!-- <div class="yql"> 友情链接： </div>-->
                </div>
                <div class="lianjie fl">
                    <ul>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<ul id="side-bar" class="side-pannel side-bar">
    <a href="javascript:;" class="gotop" style="display:none;"><s class="g-icon-top"></s>TOP</a>
</ul>

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