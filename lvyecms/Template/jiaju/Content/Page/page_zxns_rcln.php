<template file="Content/header.php" />
<div class="cpye_nav">
    <div class="cpye_zw">
        <div class="cpye_le fl">
            <ul>
                <content action="category" catid="6" order="listorder">
                    <volist name="data" id="vo">
                        <li <if condition="$catid eq $vo['catid']"> class="active" </if> ><a href='{$vo.url}' class='thisclass'>{$vo.catname}</a></li>
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
        <div style="text-align: center">
            {$content}
        </div>
    </div>
</div>

<!---block body end--->

<!---block body end--->
<template file="Content/footer.php" />