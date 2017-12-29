<template file="Wap/header.php" />
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
            <content action="lists" catid="$catid" num="8" order="id desc" page="$page">
                <volist name="data" id="vo">
                    <li class="news1"> <a href="{:geturl($vo)}" title="{$vo.title}"><span>{$vo.title|str_cut=###,6}</span><span>{$vo.updatetime|date='Y/m/d',###}</span></a> </li>
                </volist>
        </ul>
        <div class="nrye_page">
            <div class="pages">
                {$pages}
            </div>
        </div>
        </content>
    </div>
<template file="Wap/footer.php" />