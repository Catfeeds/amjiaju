<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="telephone=no" name="format-detection" />
    <title><if condition=" isset($SEO['title']) && !empty($SEO['title']) ">{$SEO['title']}</if>{$SEO['site_title']}</title>
    <meta name="description" content="{$SEO['description']}" />
    <meta name="keywords" content="{$SEO['keyword']}" />
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
    <content action="category" catid="0" order="listorder">
        <volist name="data" id="vo">
            <li><a href="{:caturl($vo['catid'])}"" title="{$vo.catname}"><span class="iconfont">&#xe607;</span>{$vo.catname}</a></li>
        </volist>
    </content>
</ul>
<if condition="$catid eq 0">
<div class="allpage">
    <div class="black-fixed iconfont">&#xe60f;</div>
    <div class="header">
        <div class="head"> <a href="/index.php?g=wap" title="我的网站" class="logo"> <img src="{$Config.sitewaplogo}" alt="网站首页"/> </a>
            <div class="nav-btn commonfont">&#xe60b;</div>
            <div class="search_hl search_l iconfont">&#xe600;</div>
            <div class="search" style="display: block;">
                <form class="am-topbar-form am-topbar-left am-form-inline am-topbar-right" role="search" action="{:U('Search/Index/index')}" method="post" onsubmit="return p()">
                    <input type="hidden" name="g" value="Search" />
                    <a class="xbtn iconfont" href="javascript:;">&#xe60f;</a>
                    <input type="text" name="q" id="q" placeholder="请输入搜索关键词" class="search-input">
                    <input type="submit" class="search-btn iconfont" value="&#xe600;">
                </form>
            </div>
        </div>
    </div>
    <else/>
    <div class="allpage">
        <div class="black-fixed commonfont">&#xe607;</div>
        <div class="header">
            <div class="head"> <a href="/index.php?g=wap" title="网站首页" class="home-btn commonfont">&#xe608;</a>
                <p class="top-title">{$title|str_cut=###,5}</p>
                <div class="class-btn"><span class="commonfont">&#xe60a;</span></div>
                <div class="nav-btn commonfont">&#xe60b;</div>
            </div>
            <div class="type">
                <h1>搜索：</h1>
                <div class="common-pro-search">
                    <form class="am-topbar-form am-topbar-left am-form-inline am-topbar-right" role="search"action="{:U('Search/Index/index')}" method="post" onsubmit="return p()">
                        <input type="hidden" name="g" value="Search" />
                        <input type="text" class="common-text" name="q" id="q"  placeholder="请输入搜索关键词"/>
                        <input type="submit" class="common-submit commonfont" value="&#xe602;"/>
                    </form>
                </div>
            </div>
        </div>
</if>
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