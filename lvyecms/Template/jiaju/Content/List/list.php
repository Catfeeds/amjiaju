<template file="Content/header.php"/>
<div class="cpye_nav">
    <div class="cpye_zw">
        <div class="cpye_le fl">
            <ul>
                <content action="category" catid="2" order="listorder">
                    <volist name="data" id="vo">
                        <li <if condition="$catid eq $vo['catid']"> class="active" </if> ><a href="{$vo.url}">{$vo.catname}</a></li>
                    </volist>
                </content>
            </ul>
        </div>
        <div class="cpye_ri fr"> 当前位置：<a target="_blank" href="/">首页</a>&nbsp;&gt;&nbsp;<navigate catid="$catid" space="&nbsp;&gt;&nbsp;"/>
        </div>
    </div>
</div>

<!---block body--->
<div class="nye_nr">
    <div class="nye_zw">
        <div class="xwye_one clear">
            <content action="lists" catid="$catid" order="id desc" num="8" page="$page">
                <volist name="data" id="vo">
                    <div class="xwye_div fl"><a href="{$vo.url}">
                            <div class="xwye_bbg">
                                <div class="xwye_le fl">
                                    <div class="xwye_top fl"><img src="{$vo.thumb}" style="height:124px; width:169px;"/></div>
                                    <div class="xwye_bot"></div>
                                </div>
                                <div class="xwye_ri fl">
                                    <div class="xwye_ri_top"><b>{$vo.title|str_cut=###,19}</b>
                                        <p>Time : {$vo.updatetime|date='Y-m-d',###}</p>
                                    </div>
                                    <div class="xwye_ri_bot">{$vo.description|str_cut=###,42}</div>
                                </div>
                            </div>
                        </a></div>
                </volist>

        </div>
        <div class="nrye_page">
            <div class="pages">
                {$pages}
                </content>
            </div>
        </div>
    </div>
</div>

<!---block body end--->

<!---block body end--->
<template file="Content/footer.php"/>