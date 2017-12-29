<template file="Content/header.php"/>
<div class="cpye_nav">
    <div class="cpye_zw">
        <div class="cpye_le fl">
            <ul>
                <content action="category" catid="3" order="listorder">
                    <volist name="data" id="vo">
                        <li <if condition="$catid eq $vo['catid']"> class="active"</if> ><a href="{$vo.url}">{$vo.catname}</a></li>
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
        <div class="cpye_one clear">
            <content action="lists" catid="$catid" num="6" order="listorder desc" page="$page">
                <volist name="data" id="vo">
                    <div class="cpye_div fl">
                        <div class="cpye_im" style="width: 382px;height: 243px;background: url('{$vo.thumb}');">
                            <a class="example-image-link" data-lightbox="example-set" title="{$vo.title}"
                               href="{$vo.thumb}">
                                <div class="cpye_blk">
                                    <div class="cpye_text"><img src="/skin/images/jia.png"/> <br/>
                                        【了解详情】
                                    </div>
                                    <div class="cpye_title"> {$vo.title}</div>
                                </div>
                            </a></div>
                    </div>
                </volist>
        </div>
        <div class="nrye_page">
            <div class="pages">{$pages}
            </div>
            </content>
        </div>
    </div>
</div>

<!---block body end--->

<!---block body end--->
<template file="Content/footer.php"/>
<script src="/skin/js/lightbox.min.js"></script>
<script>
    $(window).resize(function () {
        var h = ($(window).height() - 608) / 2;
        if (h <= 0) {
            h = 50;
        }
        lightbox.option({
            'positionFromTop': h
        })
    })


</script>