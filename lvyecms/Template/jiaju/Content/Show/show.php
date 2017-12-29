<template file="Content/header.php" />
<div class="cpye_nav">
    <div class="cpye_zw">
        <div class="cpye_le fl">
            <ul>
                <content action="category" catid="2" order="listorder">
                    <volist name="data" id="vo">
                        <li <if condition="$catid eq $vo['catid']"> class='active'</if>><a href='{$vo.url}' class='thisclass'>{$vo.catname}</a></li>
                    </volist>
                </content>
            </ul>
        </div>
        <div class="cpye_ri fr"> 当前位置：<a target="_blank" href="/">首页</a>&nbsp;&gt;&nbsp;<navigate catid="$catid" space="&nbsp;&gt;&nbsp;"/></div>
    </div>
</div>

<!---block body--->
<div class="nye_nr">
    <div class="nye_zw">
        <div class="xwye_lb">
            <div class="xwye_toop"> {$title} </div>
            <div class="xwye_boot"> 日期：{$updatetime} </div>
        </div>
        <div class="xwye_texx">
            {$content}
        </div>
        <div class="xwye_pn">
            <div class="xwye_pr fl"> 上一篇：<pre catid="$catid" id="$id" target="1" msg="已经没有了" /> </div>
            <div class="xwye_pr fr"> 下一篇：<next catid="$catid" id="$id" target="1" msg="已经没有了" /> </div>
        </div>
    </div>
</div>

<!---block body end--->

<!---block body end--->
<template file="Content/footer.php" />