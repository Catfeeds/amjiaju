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
<div class="nye_nr">
    <div class="nye_zw">
        <div class="lxye_top">
            <div class="lxye_zuo fl">
                <div class="lxye_tit"> 广东智能家居有限公司 </div>
                <div class="lxye_li" style="width: 821px;">
                    <ul>
                        <li style="width: 300px;"><img src="/skin/images/lx_dd.jpg" />广东智能家居有限公司</li>
                        <li><img src="/skin/images/lx_em.png" /> admin@cmsbuy.cn</li>
                        <li style="width: 300px;"><img src="/skin/images/lx_tel.png" /> 0755-88888888</li>
                        <li><img src="/skin/images/lx_tel.png" /> 传真 : 0898-66889886</li>
                        <li style="width: 300px;"><img src="/skin/images/lx_tel.png" /> 陈总 : 18565676808</li>
                        <li style="width: 460px;"><img src="/skin/images/lx_dd.jpg" />乘坐1路公交车，中村站点下车，往西500米，到达国贸玉沙大街广东智能家居有限公司</li>
                    </ul>
                </div>
            </div>
            <div class="lxye_you fl">
                <div class="lxye_zzz fl"> 手机站： <img src="/skin/images/2weima.png" style="width: 130px;height: 130px;margin-top: 12px;"/> </div>
                <div class="lxye_zzz fl"> 微信站： <img src="/skin/images/2weima.jpg" /> </div>
            </div>
        </div>
        <div class="lxye_bot">
            <div style="width:1200px;height:490px;border:#ccc solid 1px;font-size:12px" id="map"></div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/skin/js/map.js"></script>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMapOverlay();//向地图添加覆盖物
    }
    function createMap(){
        map = new BMap.Map("map");
        map.centerAndZoom(new BMap.Point({:cache('Config.dtzb')}),12);
    }
    function setMapEvent(){
        map.enableScrollWheelZoom();
        map.enableKeyboard();
        map.enableDragging();
        map.enableDoubleClickZoom()
    }
    function addClickHandler(target,window){
        target.addEventListener("click",function(){
            target.openInfoWindow(window);
        });
    }
    function addMapOverlay(){
        var markers = [
            {content:"{:cache('Config.zbdj')}",title:"{:cache('Config.zbtitle')}",imageOffset: {width:0,height:3},position:{lat:37.643405,lng:120.483939}}
        ];
        for(var index = 0; index < markers.length; index++ ){
            var point = new BMap.Point(markers[index].position.lng,markers[index].position.lat);
            var marker = new BMap.Marker(point,{icon:new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap/images/icon.png",new BMap.Size(20,25),{
                imageOffset: new BMap.Size(markers[index].imageOffset.width,markers[index].imageOffset.height)
            })});
            var label = new BMap.Label(markers[index].title,{offset: new BMap.Size(25,5)});
            var opts = {
                width: 200,
                title: markers[index].title,
                enableMessage: false
            };
            var infoWindow = new BMap.InfoWindow(markers[index].content,opts);
            marker.setLabel(label);
            addClickHandler(marker,infoWindow);
            map.addOverlay(marker);
        };
    }
    //向地图添加控件
    function addMapControl(){
        var scaleControl = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
        scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
        map.addControl(scaleControl);
        var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(navControl);
        var overviewControl = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:true});
        map.addControl(overviewControl);
    }
    var map;
    initMap();
</script>

<!---block body end--->

<!---block body end--->
<template file="Content/footer.php" />