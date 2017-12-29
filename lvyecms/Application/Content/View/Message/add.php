<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8" />
<title>系统后台 - {$Config.sitename} - by ShuipFCMS</title>
<script type="text/javascript" src="{$config_siteurl}statics/youtiao/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="{$config_siteurl}statics/youtiao/js/ckeditor/ckeditor.js"></script>
<head>

<script type="text/javascript">
window.onload=function(){
	var sl=document.getElementById("project");
	var fm1=document.getElementById("fm1");
	var len=sl.options.length;
	sl.onchange=function(){
	    for(var i=1;i<len;i++){
	    	if(sl.options[i].selected==true){
	    	    var catid=sl.options[i].value;
	    	    $.post("http://localhost/index.php?m=category&a=childcat",{catid:catid},function(data){$("#childproject").html(data)});
		    }
		}
	}
	fm1.onsubmit=function(){
		//电话
		var re1 = '/^1\d{10}$/';
		var re2 ='/^0\d{2,3}-?\d{7,8}$/';
			if(re1.test(fm1.telephone.value) || re2.test(fm1.telephone.value)){
				return true;
			}else{
				alert("电话格式不正确");
				fm1.telephone.focus();
				return false;
			}

		return true;
	}
}




</script>



</head>
<body>




<div>
    <dl>
    <dt>认真填写一下内容</dt>
    <form method="post" action="{:U("Message/add")}" id="fm1" name="fm1">
    <dd>姓名：<input type="text" name="name" placeholder="请填写真实姓名" required="required"/></dd>
    <dd>电话：<input type="text" name="telephone" placeholder="请填写电话" required="required"/></dd>
    <dd>地址：<input type="text" name="address" placeholder="请填写地址"/></dd>
    <dd>留言：<textarea name="info" id="container"></textarea></dd>
    
    
    
    <input type="submit" value="提交"/>
    <input type="reset" value="重置"/>
    </form> 
</div>





</body>
</html>





