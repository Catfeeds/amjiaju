<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="telephone=no" name="format-detection" />
    <title><?php if( isset($SEO['title']) && !empty($SEO['title']) ): echo ($SEO['title']); endif; echo ($SEO['site_title']); ?></title>
    <meta name="description" content="<?php echo ($SEO['description']); ?>" />
    <meta name="keywords" content="<?php echo ($SEO['keyword']); ?>" />
    <link rel="stylesheet" type="text/css" href="/wap/css/subpage.css" />
    <script type="text/javascript" src="/wap/js/jquery.js"></script>
    <style>
        .head {
            background: #10b666
        }
        .foot {
            background: #10b666
        }
        .nav {
            background: #10b666
        }
        .nav_color {
            background: #10b666
        }
    </style>
    <link rel="stylesheet" type="text/css" href="/wap/css/master.css" />
    <link rel="stylesheet" type="text/css" href="/wap/css/swiper.css" />
    <script type="text/javascript" src="/wap/js/nav.js"></script>
    <script type="text/javascript" src="/wap/js/cart_icon.js"></script>
    <script type="text/javascript" src="/wap/js/swiper.js"></script>
    <script type="text/javascript" src="/wap/js/lihe.js"></script>
    <script type="text/javascript" src="/wap/js/form.js"></script>
</head>
<body>
<ul class="nav">
    <li><a href="index.php" title="网站首页"><span class="iconfont">&#xe607;</span>网站首页</a></li>
    <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "category")){ $data = $content_tag->category(array('action'=>'category','catid'=>'0','order'=>'listorder','num'=>'0','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo caturl($vo['catid']);?>"" title="<?php echo ($vo["catname"]); ?>"><span class="iconfont">&#xe607;</span><?php echo ($vo["catname"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>
<?php if($catid == 0): ?><div class="allpage">
    <div class="black-fixed iconfont">&#xe60f;</div>
    <div class="header">
        <div class="head"> <a href="/index.php?g=wap" title="我的网站" class="logo"> <img src="<?php echo ($Config["sitewaplogo"]); ?>" alt="网站首页"/> </a>
            <div class="nav-btn commonfont">&#xe60b;</div>
            <div class="search_hl search_l iconfont">&#xe600;</div>
            <div class="search" style="display: block;">
                <form class="am-topbar-form am-topbar-left am-form-inline am-topbar-right" role="search" action="<?php echo U('Search/Index/index');?>" method="post" onsubmit="return p()">
                    <input type="hidden" name="g" value="Search" />
                    <a class="xbtn iconfont" href="javascript:;">&#xe60f;</a>
                    <input type="text" name="q" id="q" placeholder="请输入搜索关键词" class="search-input">
                    <input type="submit" class="search-btn iconfont" value="&#xe600;">
                </form>
            </div>
        </div>
    </div>
    <?php else: ?>
    <div class="allpage">
        <div class="black-fixed commonfont">&#xe607;</div>
        <div class="header">
            <div class="head"> <a href="/index.php?g=wap" title="网站首页" class="home-btn commonfont">&#xe608;</a>
                <p class="top-title"><?php echo (str_cut($title,5)); ?></p>
                <div class="class-btn"><span class="commonfont">&#xe60a;</span></div>
                <div class="nav-btn commonfont">&#xe60b;</div>
            </div>
            <div class="type">
                <h1>搜索：</h1>
                <div class="common-pro-search">
                    <form class="am-topbar-form am-topbar-left am-form-inline am-topbar-right" role="search"action="<?php echo U('Search/Index/index');?>" method="post" onsubmit="return p()">
                        <input type="hidden" name="g" value="Search" />
                        <input type="text" class="common-text" name="q" id="q"  placeholder="请输入搜索关键词"/>
                        <input type="submit" class="common-submit commonfont" value="&#xe602;"/>
                    </form>
                </div>
            </div>
        </div><?php endif; ?>
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
<div class="allpage">
    <div class="black-fixed commonfont">&#xe607;</div>
    <div class="header">
        <div class="head"> <a href="index.php" title="首页" class="home-btn commonfont">&#xe608;</a>
            <p class="top-title">很好</p>
            <div class="class-btn"><span class="commonfont">&#xe60a;</span></div>
            <div class="nav-btn commonfont">&#xe60b;</div>
        </div>
        <div class="type">
            <h1>搜索：</h1>
            <div class="common-pro-search">
                <form class="am-topbar-form am-topbar-left am-form-inline am-topbar-right" role="search" action="/plus/search.php">
                    <input type="hidden" name="mobile" value="1" />
                    <input type="hidden" name="kwtype" value="0" />
                    <input type="text" class="common-text" name="q" placeholder="请输入搜索关键词"/>
                    <input type="submit" class="common-submit commonfont" value="&#xe602;"/>
                </form>
            </div>
            <h1>产品展示分类：</h1>
            <ul>

            </ul>
        </div>
    </div>
    <div class="content">
        <ul class="common_news" id="contentArea">
            <?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); $count = $content_tag->count(array('action'=>'lists','catid'=>$catid,'num'=>'8','order'=>'id desc','page'=>$page,'pagefun'=>'page','return'=>'data',)); $_page_ = page($count ,8,$page,array('isrule'=>'1',)); $GLOBALS["Total_Pages"] = $_page_->Total_Pages; $pages = $_page_->show("default"); $pagetotal = $_page_->Total_Pages; $totalsize = $_page_->Total_Size; if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>$catid,'num'=>'8','order'=>'id desc','page'=>$page,'pagefun'=>'page','return'=>'data','count'=>$count,'limit'=>$_page_->firstRow.",".$_page_->listRows,)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="news1"> <a href="<?php echo geturl($vo);?>" title="<?php echo ($vo["title"]); ?>"><span><?php echo (str_cut($vo["title"],6)); ?></span><span><?php echo (date('Y/m/d',$vo["updatetime"])); ?></span></a> </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
        <div class="nrye_page">
            <div class="pages">
                <?php echo ($pages); ?>
            </div>
        </div>
    </div>
    <div class="footer">
    <div class="foot foot-relative" id="foot">
        <div class="foot-relative"> <a href="" title="地图"> <span class="commonfont">&#xe605;</span>
                <h3>地图</h3>
            </a><a href="tel:<?php echo cache('Config.phone');?>" title="电话"> <span class="commonfont">&#xe604;</span>
                <h3>电话</h3>
            </a><a href="sms:<?php echo cache('Config.phone');?>" title="短信"> <span class="commonfont">&#xe601;</span>
                <h3>短信</h3>
            </a><a href="" title="分享"> <span class="commonfont">&#xe600;</span>
                <h3>分享</h3>
            </a> </div>
    </div>
</div>
</div>
</div>
</body>
</html>