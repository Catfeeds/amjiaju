<template file="Content/header.php"/>
<div class="nav over">
    <div class="zw">
        <div class="nav_left fl">
            <ul>
                <div class="nav_div">他们都在找：</div>
                <li><a href="/index.php?g=Search&g=Search&q=木制衣柜">木制衣柜</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=开放式衣柜">开放式衣柜</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=高级橱柜">高级橱柜</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=厨房布置">厨房布置</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=餐厅布置">餐厅布置</a></li>
                <li><a href="/index.php?g=Search&g=Search&q=卧室装修">卧室装修</a></li>
                <li style="border-right:0px;"><a href="/index.php?g=Search&g=Search&q=金属橱柜">金属橱柜</a></li>
            </ul>
        </div>
        <div class="big">
            <div class="nav_right fr">
                <form name="formsearch" action="{:U('Search/Index/index')}" method="post" onsubmit="return p()" >
                    <input type="hidden" name="g" value="Search" />
                    <div class="left fl">
                        <input name="q" id="q" type="text" placeholder="请输入你要搜索的关键词"/>
                    </div>
                    <div class="right fr">
                        <input type="submit" value=""/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function p(){
        var aa = document.getElementById("q").value;

        if (!aa)
        {
            alert("请输入您要查询的内容")
            return false;
        }
    }
</script>
<div class="cp">
    <div class="cp_nr clear">
        <div class="top">
            <ul>
                <content action="category" catid="3" order="listorder">
                    <volist name="data" id="vo">
                        <li><a href="{$vo.url}">{$vo.catname}</a></li>
                    </volist>
                </content>
            </ul>
        </div>
        <div class="bottom over">
            <content action="category" catid="3" order="listorder">
                <volist name="data" id="vp">
                    <div class="cp_nrl fl">
                        <content action="lists" catid="$vp['catid']" order="id desc" num="1">
                            <volist name="data" id="vo">
                                <div class="cr_left fl">
                                    <div class="cr_one" style="background: url('{$vo.thumb}');">
                                        <a href="{$vo.url}">
                                            <div class="blk_le fl"></div>
                                            <div class="blk_text clear"> {$vo.title} <br/>
                                                <br/>
                                                <img src="/skin/images/jia.png"/></div>
                                            <div class="blk_ri fr"></div>
                                        </a></div>
                                </div>
                            </volist>
                        </content>
                        <content action="lists" catid="$vp['catid']" order="id desc LIMIT 1,4--" num="4">
                            <volist name="data" id="vo">
                                <div class="cr_right fl">
                                    <div class="bigb clear">
                                        <div class="cr_two cpp fl" style="background: url('{$vo.thumb}');">
                                            <a href="{$vo.url}">
                                                <div class="blk1 fl"></div>
                                                <div class="text clear"> {$vo.title} <br/>
                                                    <br/>
                                                    <img src="/skin/images/jia.png"/></div>
                                                <div class="blk2 fr"></div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </volist>
                        </content>
                    </div>
                </volist>
            </content>
        </div>
    </div>
</div>
<div class="xw">
    <div class="xw_zw clear">
        <div class="xw_top">
            <div class="xw_quan fr">
                <ul>
                    <a href="{:getcategory(2,'url')}">
                        <li></li>
                        <li></li>
                        <li></li>
                    </a>
                </ul>
            </div>
        </div>
        <div class="xw_boot">
            <content action="lists" catid="2" order="id desc" num="4">
                <volist name="data" id="vo">
                    <div class="xw_nr fl"><a href="{$vo.url}">
                            <div class="nr1" style="background: url('{$vo.thumb}')">
                                <div class="nr_bl">
                                    <div class="xw_text"> {$vo.title|str_cut=###,12}<br/>
                                        <br/>
                                        <img src="/skin/images/jia.png"/></div>
                                </div>
                            </div>
                        </a></div>
                </volist>
            </content>
            <div class="xw_nr1 fl">
                <content action="lists" catid="2" order="id desc limit 4,3--" nuim="3">
                    <volist name="data" id="vo">
                        <a href="{$vo.url}">
                            <div class="nr">
                                <div class="bl">
                                    <div class="font1">{$vo.title|str_cut=###,11}</div>
                                    <div class="font2">{$vo.description|str_cut=###,35}</div>
                                    <div class="font3">
                                        <div class="fl">DATA:{$vo.updatetime|date='Y-m-d',###}</div>
                                        <div class="fr"><img src="/skin/images/xw_you.png"/></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </volist>
                </content>
            </div>
        </div>
    </div>
</div>
<div class="pp">
    <div class="pp_zw">
        <div class="pp_zz fl">
            <div class="pp_zs">
                <div class="zuo fl">
                    <div class="zuo_s"></div>
                    <div class="zuo_x"> 办公环境展示</div>
                </div>
                <div class="you fr">
                    <div class="you_s">
                        <div class="logo fl"><a href="{:getcategory(62,'url')}"><img src="/skin/images/logo1.jpg"/></a>
                        </div>
                        <div class="mo fr"><a href="{:getcategory(62,'url')}">MORE</a></div>
                    </div>
                    <div class="you_x">
                        <div class="text">
                            合肥荣事达电子电器集团有限公司的荣事达智能家居是荣事达集团根据市场发展，汲取国际领先的智能家居理念，紧跟时代潮流，追求科技、智能、时尚、品质的设计风格，重金打造的智能家居品牌。
                            经过不断的钻研和发展，荣事达智能家居系统可以实现包括环境监测与智能控制、实时双向智能报警、智能报警联动、智能开关控制、智能插座控制、智能电器控制、智能窗帘控制、智能定时控制、智能红外远程控制、智能场景控制、远程视频监控以及可编程定时控制等多种功能和手段。
                            合肥荣事达电子电器集团有限公司的荣事达智能家居系统以住宅为平台，利用综合布线技术、网络通信技术、安全防范技术、自动控制技术、音视频技术将家居生活有关的设施集成，构建高效的住宅设施与家庭日程事务的管理系统，提升家居安全性、便利性、舒适性、艺术性，并实现环保节能的居住环境。并致力于提供各行业的智能解决方案而努力，荣事达智能酒店解决方案、智能办公解决方案、智能农业解决方案、...
                        </div>
                    </div>
                </div>
            </div>
            <div class="pp_zx">
                <div class="pp_tu fl" style="background: url('/skin/images/ppfw2.jpg')">
                    <div class="pp_blk">
                        <div class="pp_btex">
                            <p> DEVELOPMENT COURSE</p>
                            <p class="pp_bteb"> 发展历程</p>
                            <div class="pp_bku"></div>
                        </div>
                    </div>
                </div>
                <div class="pp_tu fl" style="background: url('/skin/images/ppfw3.jpg')">
                    <div class="pp_blk">
                        <div class="pp_btex">
                            <p> DEVELOPMENT COURSE</p>
                            <p class="pp_bteb"> 经营理念</p>
                            <div class="pp_bku"></div>
                        </div>
                    </div>
                </div>
                <div class="pp_tu fl" style="margin-right: 0px; background: url('/skin/images/ppfw4.jpg')">
                    <div class="pp_blk">
                        <div class="pp_btex">
                            <p> DEVELOPMENT COURSE</p>
                            <p class="pp_bteb"> 拓展市场</p>
                            <div class="pp_bku"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pp_yy fr">
            <div class="yy_top">
                <div class="top_z fl"><a href="#"><img src="/skin/images/logo2.jpg"/></a></div>
                <div class="top_y fr"><a href="#">MORE</a></div>
            </div>
            <div class="yy_big">
                <div class="yy_box">
                    <div class="yy_bot">
                        <div class="bot_tab"> 1、客户咨询</div>
                        <div class="bot_text"> 现场为客户提供全方位咨询（设计、材料、品质、价格）</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 2、上门测量</div>
                        <div class="bot_text"> 上门测量房屋尺寸</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 3、图纸材料</div>
                        <div class="bot_text"> 所有智能设计师可以根据您的需求为您提供免费的家装设计，家装设计咨询服务。</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 4、方案报价</div>
                        <div class="bot_text"> 主材，基础预算业主带走比价</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 5、签订合同</div>
                        <div class="bot_text"> 签订装修合同</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 6、各项验收</div>
                        <div class="bot_text"> 各项验收</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 7、工程开始</div>
                        <div class="bot_text"> 隐蔽工程、泥水工程、木作工程、油漆工程施工</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 8、支付首款</div>
                        <div class="bot_text"> 支付首款。</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 9、二三期款</div>
                        <div class="bot_text"> 支付二三期款</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 10、竣工验收</div>
                        <div class="bot_text"> 检验整体工程</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 11、支付尾款</div>
                        <div class="bot_text"> 支付尾款</div>
                    </div>
                    <div class="yy_bot">
                        <div class="bot_tab"> 12、整体保修</div>
                        <div class="bot_text"> 进行售后保修</div>
                    </div>
                </div>
            </div>
            <div class="bot_sx"><a href="#">
                    <div class="fl bot_ss"></div>
                </a><a href="#">
                    <div class="fr bot_xx"></div>
                </a></div>
        </div>
    </div>
</div>
<div class="zs"></div>
<div class="wm">
    <div class="wm_zw">
        <div class="wm_nr">
            <div class="wm_top">
                <div class="wm_left fl"><img src="/skin/images/lxwm.png"/></div>
                <div class="wm_right fr">
                    <form action="{:U('Message/add')}" enctype="multipart/form-data" method="post">
                        <div class="tex">
                            <input name="name" class="fr" type="text" placeholder="联系人："/>
                        </div>
                        <div class="tex">
                            <input name="telephone" class="fr" type="text" placeholder="电 话："/>
                        </div>
                        <div class="tex">
                            <input name='email' class="fr" type="text" placeholder="邮 箱："/>
                        </div>
                        <div class="liuyan">
                            <textarea name='info' class="fr" placeholder="留 言："></textarea>
                        </div>
                        <div class="butn">
                            <input type="submit" name="dosubmit" id="dosubmit" value="提交留言"/>
                        </div>
                    </form>
                </div>
            </div>
            <div class="wm_bott">
                <div class="penr fl">
                    <!-- <div class="yql"> 友情链接： </div>-->
                </div>
                <div class="lianjie fl">
                    <ul>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<ul id="side-bar" class="side-pannel side-bar">
    <a href="javascript:;" class="gotop" style="display:none;"><s class="g-icon-top"></s>TOP</a>
</ul>

<!---block body end--->

<template file="Content/footer.php"/>