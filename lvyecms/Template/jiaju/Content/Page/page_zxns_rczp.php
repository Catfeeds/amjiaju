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
        <div class="zpye_one clear">
            <div class="zpye_img"> <img src="/skin/images/zpye_ban.jpg" /> </div>
            <div class="zpye_tab">
                <table>
                    <tbody>
                    <tr class="zpye_tr">
                        <td> 招聘职位 </td>
                        <td> 招聘部门 </td>
                        <td> 薪资水平 </td>
                        <td> 添加时间 </td>
                    </tr>
                    <tr>
                        <td> 设计工程师 3名 </td>
                        <td> 设计部 </td>
                        <td> 3000+ </td>
                        <td> 2015-09-09 </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="nrye_page">
                <div class="pages"> </div>
            </div>
        </div>
    </div>
</div>

<!---block body end--->

<!---block body end--->
<template file="Content/footer.php" />