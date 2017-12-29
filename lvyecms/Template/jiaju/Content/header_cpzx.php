<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><if condition=" isset($SEO['title']) && !empty($SEO['title']) ">{$SEO['title']}</if>{$SEO['site_title']}</title>
    <meta name="description" content="{$SEO['description']}" />
    <meta name="keywords" content="{$SEO['keyword']}" />
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
            <div class="head_tel fl"> {$SEO['site_title']} &ensp;&ensp;&ensp;<img src="/skin/images/tel.png" />&ensp;{:cache('Config.phone')} </div>
            <div class="head_wl fr">
                <ul>
                    <li><a href="{:cache('Config.qqdizhi')}" target="_blank"><img src="/skin/images/qq.png" />&ensp;&ensp;腾讯QQ&ensp;</a></li>
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
                    <content action="category" catid="0" order="listorder" >
                        <volist name="data" id="vo">
                            <li>
                                <div class="head_bor"></div>
                                <div class="li_a"><a href="{$vo.url}">{$vo.catname}&ensp;<br/>
                                        {$vo.catname_en}&ensp;</a></div>
                            </li>
                        </volist>
                    </content>
                </ul>
            </div>
        </div>
    </div>
</div>


