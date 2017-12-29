<template file="Content/header.php" />
<!---block body--->

<div class="cpye_nav">
    <div class="cpye_zw">
        <div class="cpye_le fl">
            <ul>
                <content action="category" catid="$catid" order="listorder" num="3">
                    <volist name="data" id="vo">
                        <li><a href="{$vo.url}">{$vo.catname}</a></li>
                    </volist>
                </content>
            </ul>
        </div>
        <div class="cpye_ri fr"> 当前位置：<a target="_blank" href="/">首页</a>&nbsp;&gt;&nbsp;<navigate catid="$catid" space="&nbsp;&gt;&nbsp;" /></div>
    </div>
</div>

<!---block body--->
<div class="jjye_nr">
    <div class="nye_zw">
        <get sql="select * from lvyecms_page where catid=62">
            <volist name="data" id="vo">
                {$vo.content}
            </volist>
        </get>
    </div>
</div>
<!---block body end--->
<!---block body end--->

<template file="Content/footer.php" />