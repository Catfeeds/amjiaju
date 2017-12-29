<template file="Wap/header.php" />
    <div class="content content_new">
        <div class="banner">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <content action="lists" catid="77" order="listorder" num="3">
                        <volist name="data" id="vo">
                            <div class="swiper-slide"> <img src="{$vo.thumb}" /> </div>
                        </volist>
                    </content>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <!-- 导航 start-->
        <div class="hnav2 clear-fix">
            <content action="category" catid="0" order="listorder">
                <volist name="data" id="vo">
                    <a href="{:caturl($vo['catid'])}" title="{$vo.catname}" class="son2">{$vo.catname}</a>
                </volist>
            </content>
        </div>
        <!-- 导航 end-->
        <!--产品展示 start-->
        <div class="common_title"> <a href="{:caturl(1)}">查看更多<span class="iconfont_s">&#xe6ad;</span></a>
            <h2><span class="iconfont_s">&#xe707;</span>关于我们</h2>
        </div>
        <div class="index_about">
            <get sql="select * from lvyecms_page where catid=62">
                <volist name="data" id="vo">
                    {$vo.content}
                </volist>
            </get>
        </div>
        <div class="common_title">
            <h2><span class="iconfont_s">&#xe707;</span>产品中心</h2>
        </div>
        <div class="index_product clear-fix">
            <ul>
                <content action="lists" catid="3" order="id desc" num="6">
                    <volist name="data" id="vo">
                        <li><a href="{:geturl($vo)}">{$vo.title}</a></li>
                    </volist>
                </content>
            </ul>
        </div>
        <div class="common_title">
            <h2><span class="iconfont_s">&#xe707;</span>新闻资讯</h2>
        </div>
        <div class="index_news">
            <ul>
                <content action="lists" catid="2" order="id desc" num="6">
                    <volist name="data" id="vo">
                        <li><a href="{:geturl($vo)}">{$vo.title}</a></li>
                    </volist>
                </content>
            </ul>
        </div>
        <div class="hotline">
            <a href="tel:{:cache('Config.phone')}" title="电话" class="clear-fix">
                <h3><span class="iconfont_s">&#xe6ba;</span>立即咨询</h3>
                <span>地址：{:cache('Config.gsdz')}<br>电话：<b>{:cache('Config.phone')}</b></span>
            </a>
        </div>
        <!--hotline end-->
        <!--点击回上部 start-->
        <div class="cbtn-top vip_backup" style="display: block;"> <a href="javascript:;"><img src="/wap/picture/gotop.png"></a> </div>
        <!--点击回上部 end-->
        <div class="beian">{:cache('Config.bah')}</div>
    </div>
<template file="Wap/footer.php" />