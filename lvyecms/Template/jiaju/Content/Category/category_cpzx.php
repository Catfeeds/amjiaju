<template file="Content/header_cpzx.php"/>

<!---block body--->
<div class="nye_nr GD_bj">
    <div class="nye_zw">
        <div class="cpye_gd">
            <ul>
                <li><a href="{:getcategory(67,'url')}">
                        <div class="GD_bor"></div>
                        <div class="GD_big1">
                            <div class="GD_title"><b>橱柜<br/>
                                    橱柜</b></div>
                            <div class="GD_text">
                                <p>Cupboard</p>
                                <div class="GD_b">环保生活，从智能开始</div>
                            </div>
                            <div class="GD_qiu"></div>
                            <div class="GD_tu"><img src="/skin/images/cp_cup.png"/></div>
                        </div>
                    </a></li>

                <li><a href="{:getcategory(68,'url')}">
                        <div class="GD_bor"></div>
                        <div class="GD_big1">
                            <div class="GD_title"><b>衣柜<br/>
                                    衣柜</b></div>
                            <div class="GD_text">
                                <p>Wardrobe</p>
                                <div class="GD_b">环保生活，从智能开始</div>
                            </div>
                            <div class="GD_qiu"></div>
                            <div class="GD_tu"><img src="/skin/images/cp_war.png"/></div>
                        </div>
                    </a></li>

                <li><a href="{:getcategory(69,'url')}">
                        <div class="GD_bor"></div>
                        <div class="GD_big1">
                            <div class="GD_title"><b>鞋柜<br/>
                                    鞋柜</b></div>
                            <div class="GD_text">
                                <p>Customized shoe</p>
                                <div class="GD_b">环保生活，从智能开始</div>
                            </div>
                            <div class="GD_qiu"></div>
                            <div class="GD_tu"><img src="/skin/images/cp_war.png"/></div>
                        </div>
                    </a></li>
                <li><a href="{:getcategory(70,'url')}">
                        <div class="GD_bor"></div>
                        <div class="GD_big1">
                            <div class="GD_title"><b>浴柜<br/>
                                    浴柜</b></div>
                            <div class="GD_text">
                                <p>Bath cabinet</p>
                                <div class="GD_b">环保生活，从智能开始</div>
                            </div>
                            <div class="GD_qiu"></div>
                            <div class="GD_tu"><img src="/skin/images/cp_bat.png"/></div>
                        </div>
                    </a></li>
                <li><a href="{:getcategory(71,'url')}">
                        <div class="GD_bor"></div>
                        <div class="GD_big1">
                            <div class="GD_title"><b>背景墙<br/>
                                    背景墙</b></div>
                            <div class="GD_text">
                                <p>Background wall</p>
                                <div class="GD_b">环保生活，从智能开始</div>
                            </div>
                            <div class="GD_qiu"></div>
                            <div class="GD_tu"><img src="/skin/images/cp_well.png"/></div>
                        </div>
                    </a></li>
                <li><a href="{:getcategory(72,'url')}">
                        <div class="GD_bor"></div>
                        <div class="GD_big1">
                            <div class="GD_title"><b>室门<br/>
                                    室门</b></div>
                            <div class="GD_text">
                                <p>Interior doors</p>
                                <div class="GD_b">环保生活，从智能开始</div>
                            </div>
                            <div class="GD_qiu"></div>
                            <div class="GD_tu"><img src="/skin/images/cp_do.png"/></div>
                        </div>
                    </a></li>
                <li><a href="{:getcategory(73,'url')}">
                        <div class="GD_bor"></div>
                        <div class="GD_big1">
                            <div class="GD_title"><b>门窗套<br/>
                                    门窗套</b></div>
                            <div class="GD_text">
                                <p>Windows set</p>
                                <div class="GD_b">环保生活，从智能开始</div>
                            </div>
                            <div class="GD_qiu"></div>
                            <div class="GD_tu"><img src="/skin/images/cp_won.png"/></div>
                        </div>
                    </a></li>
                <li><a href="{:getcategory(74,'url')}">
                        <div class="GD_bor"></div>
                        <div class="GD_big1">
                            <div class="GD_title"><b>踢脚线<br/>
                                    踢脚线</b></div>
                            <div class="GD_text">
                                <p>Skirting line</p>
                                <div class="GD_b">环保生活，从智能开始</div>
                            </div>
                            <div class="GD_qiu"></div>
                            <div class="GD_tu"><img src="/skin/images/cp_bjx.png"/></div>
                        </div>
                    </a></li>
            </ul>
        </div>
        <div class="GD_page"><a href="#">
                <div class="GD_paz fl"></div>
            </a> <a href="#">
                <div class="GD_pay fl"></div>
            </a></div>
    </div>
</div>

<!---block body end--->
<template file="Content/footer.php"/>
<script>
    $(function () {
        $('.cpye_gd').sly({
            horizontal: 1,
            itemNav: 'basic',
            smart: 1,
            activateOn: 'click',
            mouseDragging: 1,
            touchDragging: 1,
            releaseSwing: 1,
            startAt: 0,
            speed: 300,
            elasticBounds: 1,
            easing: 'easeOutExpo',
            dragHandle: 1,
            dynamicHandle: 1,
            clickBar: 1,

            cycleBy: 'items',
            cycleInterval: 1000,
            pauseOnHover: 1,
            // Buttons
            prevPage: $('.GD_paz'),
            nextPage: $('.GD_pay')
        });
        $(window).resize(function () {
            $('.cpye_gd').sly("reload");
        })
    });
</script>