<template file="Content/header.php" />
<div class="cpye_nav">
    <div class="cpye_zw">
        <div class="cpye_le fl">
            <ul>

            </ul>
        </div>
        <div class="cpye_ri fr"> 当前位置：<a target="_blank" href="/">首页</a>&nbsp;&gt;&nbsp;<navigate catid="$catid" space="&nbsp;&gt;&nbsp;"/></div>
    </div>
</div>

<!---block body--->
<style type="text/css">
    .clear{
        zoom: 1;
        clear: both;
    }
    textarea{
        max-height: 58px;
        min-height: 58px;
        max-width: 1104px;
        min-width: 1104px;
    }
    .yichu{
        width: 16px;
        height: 16px;
        text-align: center;
        line-height: 16px;
        position: absolute;
        left: 64px;
        background: red;
        color: #ffffff;
        font-size: 10px;
        top: 0px;
    }
    .picList li{
        list-style: none;
        position: relative;
        margin-right: 20px;
    }
    .picList li img{
        width: 80px;
        height: 46px;
    }
    .picList li {
        float: left;
    }
    .anniu{
        width: 100px;
        height: 30px;
        text-align: center;
        line-height: 30px;
        font-size: 14px;
        color: #ffffff;
        background: #9F9F9F;
        margin-left: 300px;
    }
    form{
        margin-bottom: 50px;
        margin-top: 50px;
    }
</style>
<style type="text/css">
    #masonry{
        width: 1200px;
    }
    .box{
        width: 386px;
        background: #fff;
        box-shadow: 0 3px 10px #e0e0e0;
        margin-bottom: 20px;
        float: left;
    }
    .box a{
        display:block;
    }
    .info{

    }
    .pic{
        width: 380px;
        padding-left: 3px;
        overflow: hidden;
        padding-top: 3px;
    }
    .title{

    }
    .sjfx_zj{
        width: 346px;
        height: 31px;
        padding: 15px 20px;
        line-height: 26px;
        font-size: 16px;
        color: black;
    }

    .sjfx_item a{
        display: inline-block;
        vertical-align: middle;
        height: 20px;
        line-height: 20px;
        padding: 0 5px;
        background: #585858;
        color: #fff;
        margin-right: 15px;
        border-radius: 3px;
    }
    .sjfx_boot{
        background: #fafafa;
        padding: 10px 25px 25px;
        width: 334px;
        overflow: hidden;
    }
    .sjfx_nr{
        margin-left: 5px;
        float: left;
    }
    .sjfx_text{
        width: 280px;
        height: 50px;
        font-size: 16px;
    }
    .sjfx_cont{
        width: 280px;
        font-size: 16px;
    }
    .pic img{
        width: 100%;
    }
    .pic a{
        display: block;
    }
    .tishi{
        width: 200px;
        margin: 0 auto;
        height: 40px;
        font-size: 16px;
        color: #ffffff;
        background: #10B666;
        text-align: center;
        line-height: 40px;
    }
</style>
<div class="nye_nr">
    <div class="nye_zw">
        <div id="masonry" class="clear" style="border-bottom:1px solid #10B666">
            <content action="lists" catid="4" order="id desc" num="4" page="$page">
                <volist name="data" id="vo">
                    <div class="box">
                        <div class="info">
                            <div class="pic">
                                <a class="colobox group14" href="{$vo.thumb}">
                                    <img src='{$vo.thumb}' alt=""/>
                                </a>
                            </div>
                            <a href="javascript:void($('.group14').eq(0).click());">
                                <div class="title">
                                    <div class="sjfx_zj"> {$vo.title|str_cut=###,17} </div>
                                    <div class="sjfx_boot"> <img src="{$vo.yhtouxiang}" class="fl"/>
                                        <div class="sjfx_nr">
                                            <div class="sjfx_text"> {$vo.yhnicheng} </div>
                                            <div class="sjfx_cont">  {$vo.description|str_cut=###,68} </div>
                                        </div>
                                    </div>
                                </div>
                            </a> </div>
                    </div>
                </volist>

        </div>
        <div class="nrye_page">
            <div class="pages">{$pages}
            </div>
        </div>
        </content>
    </div>
</div>

<!---block body end--->

<!---block body end--->
<template file="Content/footer.php" />
<link href="/skin/css/dialog.css" rel="stylesheet" type="text/css">
<link href="/skin/css/table_form.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/skin/js/dialog.js"></script>
<script language="JavaScript" src="/skin/js/masonry-docs.min.js"></script>
<link rel="stylesheet" href="/skin/css/colorbox.css"/>
<script language="JavaScript" src="/skin/js/jquery.colorbox.js"></script>
<script type="text/javascript">

    function change_images(uploadid,returnid){
        var d = window.top.art.dialog({id:uploadid}).data.iframe;
        var in_content = d.$("#att-status").html().substring(1);
        var in_filename = d.$("#att-name").html().substring(1);
        var str = $('#'+returnid).html();
        var contents = in_content.split('|');
        var filenames = in_filename.split('|');
        $('#'+returnid+'_tips').css('display','none');
        if(contents=='') return true;
        $.each( contents, function(i, n) {
            var ids = parseInt(Math.random() * 10000 + 10*i);
            var filename = filenames[i].substr(0,filenames[i].indexOf('.'));
            str += "<li id='image"+ids+"'> <input type='hidden' name='"+returnid+"_url[]' value='"+n+"' style='width:310px;' ondblclick='image_priview(this.value);' class='input-text'> <img src='"+n+"' /> <input type='hidden' name='"+returnid+"_alt[]' value='"+filename+"' style='width:160px;' class='input-text' onfocus=\"if(this.value == this.defaultValue) this.value = ''\" onblur=\"if(this.value.replace(' ','') == '') this.value = this.defaultValue;\"> <a href=\"javascript:remove_div('image"+ids+"')\"><div class='yichu'>X</div></a> </li>";
        });

        $('#'+returnid).html(str);
    }

    $(function() {
        var $container = $('#masonry');
        $container.imagesLoaded(function() {
            $container.masonry({
                itemSelector: '.box',
                gutter: 10,
                isAnimated: true
            });
        });
    });
    $(".colobox").colorbox({iframe:true, innerWidth:820, innerHeight:600});

</script>