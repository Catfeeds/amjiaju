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



<!---block body--->
<div class="nye_nr">
    <div class="nye_zw">
        <div class="xwye_one clear">
                <if condition=" !$result ">
                    <div id="result" class="noResult">
                        <h3>抱歉，找不到与 "<em>{$keyword}</em>" 相符的信息</h3>
                        <h4>搜搜建议您:</h4>
                        <ul>
                            <li>请检查输入的关键词是否有误</li>
                        </ul>
                    </div>
                    <else />
                    <div id="result" class="result">
                        <!--result list begin-->
                        <ol>
                            <volist name="result" id="r">
                                <volist name="words" id="vo">
                                    <php>
                                        $r["description"] = str_replace($vo,'<font color="red">'.$vo.'</font>',$r["description"]);
                                        $r["title"] = str_replace($vo,'<font color="red">'.$vo.'</font>',$r["title"]);
                                    </php>
                                </volist>
                                <li loc="1">
                                    <div id='box_0_0' class="selected boxGoogleList">
                                        <h3><a href="{$r.url}"  class="tt tu"  target="_blank">{$r.title}</a></h3>
                                        <p class="ds">
                                            {$r.description}
                                        </p>
                                        <div class="result_summary">
                                            <div class="url"><cite>{$r.url}&nbsp;{$r.updatetime|date="Y-m-d",###} -</cite></div>
                                            <div class="sp"><a href="{$category[$r['catid']]['url']}" target="_blank" style="color:#999">{$category[$r['catid']]['catname']}</a></div>
                                        </div>
                                        <div class="highLight"></div>
                                    </div>
                                </li>
                            </volist>
                        </ol>
                        <!--result list end--></div>
                </if>
        </div>
        <div class="nrye_page">
            <div class="pages">
                {$Page}
            </div>
        </div>
    </div>
</div>

<!---block body end--->

<!---block body end--->
<template file="Content/footer.php"/>