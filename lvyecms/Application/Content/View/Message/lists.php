<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>


<script type="text/javascript">

</script>


<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
  <div class="h_a">搜索</div>
  <form method="post" action="">
  <input type="hidden" value="{$catid}" name="catid">
  <input type="hidden" value="0" name="steps">
  <input type="hidden" value="1" name="search">
    <div class="search_type cc mb10">
      <div class="mb10"> 
        <span class="mr20">时间：
        <input type="text" name="start_time" class="input length_2 J_date" value="{$start_time}" style="width:80px;">-<input type="text" class="input length_2 J_date" name="end_time" value="{$end_time}" style="width:80px;">
        <select class="select_2" name="searchtype" style="width:70px;">
          <option value='0' <if condition=" $searchtype == '0' "> selected</if>>姓名</option>
          <option value='3' <if condition=" $searchtype == '3' "> selected</if>>留言</option>
        </select>
        关键字：
        <input type="text" class="input length_2" name="keyword" style="width:200px;" value="{$keyword}" placeholder="请输入关键字...">
        <button class="btn">搜索</button>
        </span>
      </div>
    </div>
  </form>

  <div class="table_list">
    <table width="100%" id = "testList">
        <colgroup>
        <col width="100">
        <col width="150">
        <col>
        <col width="80">
        <col width="100">
        <col width="50" >
        <col width="100">
        <col width="300">
        </colgroup>
        <thead>
          <tr>
            <td align='center'>操作</td>
            <td align='center'>姓名</td>
            <td align='center'>电话</td>
            <td align='center'>邮箱</td>
            <td align='center'>阅读状态</td>
            <td align='center'>留言时间</td>
            <td align='center'>管理操作</td>
          </tr>
        </thead>
        <form method="post" action="{:U('Content/Message/delmany')}">
        <volist name="data" id="vo">
        <tr>
            <td align='center'><input class="delmany" type="checkbox" name="delmany[]" value="{$vo.id}"/></td>
            <td align='center'>{$vo.name}</td>
            <td align='center'>{$vo.telephone}</td>
            <td>{$vo.email}</td>
            <td align='center'><if condition="$vo['readstatus'] eq 0"><span style="color:red">未读</span><else/>已读</if></td>
            <td align='center'>{:date('Y-m-d',$vo['inputtime'])}</td>
            <td align='center'><a href="__APP__?m=Message&a=show&id={$vo.id}">查看</a>&nbsp;/&nbsp;<a href="__APP__?m=Message&a=delete&id={$vo.id}" onclick="if (confirm('确定要删除吗？')) return true; else return false;">删除</a></td>
          </tr>
        </volist>
        
        
        <style>
            .page .all,.page .pageindex,.page .current,.page a{padding:10px;}
        </style>
        
        
       <if condition="$page neq ''"> 
        <tr>          
            <td colspan="11" align='center'><div class="page">{$page}</div></td>          
          </tr>
        </if>       
        <p><input type="checkbox" id="selall"/>全选<input type="checkbox" id="reverse"/>反选  <input type="submit" value="删除选中" onclick="if (confirm('确定要删除吗？')) return true; else return false;"/><br></p>
        </form>
      </table>
    <div class="btn_wrap">
      <div class="btn_wrap_pd">
        
      </div>
    </div>
  </div>
  <script>
    window.onload=function(){
        $('#selall').click(function(){
            if($('#selall').attr('checked')=='checked')
            {$('.delmany').attr('checked','checked');}else{$('.delmany').attr('checked',false);}
            });

        $('#reverse').click(function(){
        	
        	var ch=$('.delmany');
        	$('.delmany').each(function(){
        	    if($(this).attr('checked')){
        	        $(this).attr('checked',false);
            	    }else{
            	    	$(this).attr('checked','checked');
                	    }
            	});
            
        	var len=$('.delmany').length;
        	var num=0;
        	$('.delmany').each(function(){	
            	if($(this).attr('checked')=='checked'){
        	        num++;
            	    }
                })              
             if(len==num){
            	 $('#selall').attr('checked','checked');
                 }else{
                	 $('#selall').attr('checked',false);  
                     }

        	
            });
        $('.delmany').click(function(){
        	var len=$('.delmany').length;
        	var num=0;
        	$('.delmany').each(function(){	
            	if($(this).attr('checked')=='checked'){
        	        num++;
            	    }
                })              
             if(len==num){
            	 $('#selall').attr('checked','checked');
                 }else{
                	 $('#selall').attr('checked',false);  
                     }
        });
    }
  </script>
  </div>

</div>
<script src="{$config_siteurl}statics/js/common.js"></script>
</body>
</html>