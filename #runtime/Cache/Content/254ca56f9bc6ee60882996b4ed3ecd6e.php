<?php if (!defined('THINK_PATH')) exit(); if (!defined('SHUIPF_VERSION')) exit(); ?>
<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>系统后台 - <?php echo ($Config["sitename"]); ?> - by LvyeCMS</title>
<?php if (!defined('SHUIPF_VERSION')) exit(); ?><link href="<?php echo ($config_siteurl); ?>statics/css/admin_style.css" rel="stylesheet" />
<link href="<?php echo ($config_siteurl); ?>statics/js/artDialog/skins/default.css" rel="stylesheet" />
<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<script type="text/javascript">
//全局变量
var GV = {
    DIMAUB: "<?php echo ($config_siteurl); ?>",
	JS_ROOT: "<?php echo ($config_siteurl); ?>statics/js/"
};
</script>
<script src="<?php echo ($config_siteurl); ?>statics/js/wind.js"></script>
<script src="<?php echo ($config_siteurl); ?>statics/js/jquery.js"></script>
</head>
<body class="J_scroll_fixed">
<style>
.pop_nav{
	padding: 0px;
}
.pop_nav ul{
	border-bottom:1px solid #266AAE;
	padding:0 5px;
	height:25px;
	clear:both;
}
.pop_nav ul li.current a{
	border:1px solid #266AAE;
	border-bottom:0 none;
	color:#333;
	font-weight:700;
	background:#F3F3F3;
	position:relative;
	border-radius:2px;
	margin-bottom:-1px;
}

</style>
<div class="wrap J_check_wrap">
  <?php  $getMenu = isset($Custom)?$Custom:D('Admin/Menu')->getMenu(); if($getMenu) { ?>
<div class="nav">
  <?php
 if(!empty($menuReturn)){ echo '<div class="return"><a href="'.$menuReturn['url'].'">'.$menuReturn['name'].'</a></div>'; } ?>
  <ul class="cc">
    <?php
 foreach($getMenu as $r){ $app = $r['app']; $controller = $r['controller']; $action = $r['action']; ?>
    <li <?php echo $action==ACTION_NAME ?'class="current"':""; ?>><a href="<?php echo U("".$app."/".$controller."/".$action."",$r['parameter']);?>" <?php echo $r['target']?'target="'.$r['target'].'"':"" ?>><?php echo $r['name'];?></a></li>
    <?php
 } ?>
  </ul>
</div>
<?php } ?>
  <div class="pop_nav">
    <ul class="J_tabs_nav">
      <li class="current"><a href="javascript:;;">基本属性</a></li>
      <li class=""><a href="javascript:;;">选项设置</a></li>
      <li class=""><a href="javascript:;;">模板设置</a></li>
      <li class=""><a href="javascript:;;">生成设置</a></li>
      <li class=""><a href="javascript:;;">权限设置</a></li>
      <li class=""><a href="javascript:;;">扩展字段</a></li>
    </ul>
  </div>
  <form class="J_ajaxForms" name="myform" id="myform" action="<?php echo U("Category/edit");?>" method="post">
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">基本属性</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
            <tr>
              <th width="200">上级栏目：</th>
              <td><select name="info[parentid]" id="parentid">
                  <option value='0'>≡ 作为一级栏目 ≡</option>
                  <?php echo ($category); ?>
                </select></td>
            </tr>
            <tr>
              <th>栏目名称：</th>
              <td><input type="text" name="info[catname]" id="catname" class="input" value="<?php echo ($data["catname"]); ?>"></td>
            </tr>
            <tr id="catdir_tr">
              <th>英文目录：</th>
              <td>
              <input type="hidden" name="old_catdir" id="old_catdir" class="input-text" value="<?php echo ($data["catdir"]); ?>">
              <input type="hidden" name="old_parentdir" id="old_parentdir" class="input-text" value="<?php echo ($data["parentdir"]); ?>">
              <input type="text" name="info[catdir]" id="catdir" class="input" value="<?php echo ($data["catdir"]); ?>"></td>
            </tr>
              <tr>
                  <th>导航英文名称：</th>
                  <td><input type="text" name="info[catname_en]" id="catname_en" class="input" value="<?php echo ($data["catname_en"]); ?>"></td>
              </tr>
            <tr>
              <th>栏目缩略图：</th>
              <td><?php  echo call_user_func_array(array("\Form","images"),array('0'=>'info[image]','1'=>'image','2'=>$data['image'],'3'=>'content',)); ?><span class="gray"> 双击可以查看图片！</span></td>
            </tr>
            <tr>
              <th>栏目简介：</th>
              <td><textarea name="info[description]" maxlength="255" style="width:300px;height:60px;"><?php echo ($data["description"]); ?></textarea></td>
            </tr>
            <tr>
              <th>关闭动态访问：</th>
              <td><label><input name="setting[listoffmoving]" type="checkbox" value="1" <?php if($data['setting']['listoffmoving']): ?>checked<?php endif; ?>>关闭前台动态地址访问</label></td>
            </tr>
            <tr>
              <th>指定栏目地址：</th>
              <td><input type="text" name="setting[seturl]" id="seturl" class="input length_6" value="<?php echo ($data['setting']['seturl']); ?>"><span class="gray"> 指定地址后，栏目url将变成这个！</span></td>
            </tr>
          </table>
        </div>
      </div>
      <div style="display:none">
        <div class="h_a">选项设置</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
            <tr>
              <th width="200">是否在导航显示：</th>
              <td><ul class="switch_list cc ">
                  <li>
                    <label>
                      <input type='radio' name='info[ismenu]' value='1' <?php if($data['ismenu'] == '1' ): ?>checked<?php endif; ?>>
                      <span>在导航显示</span></label>
                  </li>
                  <li>
                    <label>
                      <input type='radio' name='info[ismenu]' value='0'  <?php if($data['ismenu'] == '0' ): ?>checked<?php endif; ?>>
                      <span>不在导航显示</span></label>
                  </li>
                </ul></td>
            </tr>
            <tr>
              <th>显示排序：</th>
              <td><input type="text" name="info[listorder]" id="listorder" class="input" value="<?php echo ($data["listorder"]); ?>"></td>
            </tr>
            <tr>
              <th ><strong>META Title（栏目标题）</strong><br/>
                针对搜索引擎设置的标题</th>
              <td><input name='setting[meta_title]' type='text' id='meta_title' class="input" value='<?php echo ($data['setting']['meta_title']); ?>' size='60' maxlength='60'></td>
            </tr>
            <tr>
              <th ><strong>META Keywords（栏目关键词）</strong><br/>
                关键字中间用半角逗号隔开</th>
              <td><textarea name='setting[meta_keywords]' id='meta_keywords' style="width:90%;height:40px"><?php echo ($data['setting']['meta_keywords']); ?></textarea></td>
            </tr>
            <tr>
              <th ><strong>META Description（栏目描述）</strong><br/>
                针对搜索引擎设置的网页描述</th>
              <td><textarea name='setting[meta_description]' id='meta_description' style="width:90%;height:50px"><?php echo ($data['setting']['meta_description']); ?></textarea></td>
            </tr>
          </table>
        </div>
      </div>
      <div style="display:none">
        <div class="h_a">模板设置</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
            <tr>
              <th width="200">单页模板：</th>
              <td><select name="setting[page_template]" id="page_template">
                  <option value="page<?php echo C("TMPL_TEMPLATE_SUFFIX")?>" selected>默认内容页：page<?php echo C("TMPL_TEMPLATE_SUFFIX")?></option>
                  <?php if(is_array($tp_page)): $i = 0; $__LIST__ = $tp_page;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo); ?>" <?php if($data['setting']['page_template'] == $vo ): ?>selected<?php endif; ?>><?php echo ($vo); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                </select>
                <span class="gray">新增模板以page_x<?php echo C("TMPL_TEMPLATE_SUFFIX")?>形式</span></td>
            </tr>
          </table>
        </div>
      </div>
      <div style="display:none">
        <div class="h_a">生成设置</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
            <tr>
              <th width="200">生成Html：</th>
              <td><ul class="switch_list cc ">
                  <li>
                    <label>
                      <input type="radio" onClick="$('#category_php_ruleid').css('display','none');$('#category_html_ruleid').css('display','');$('#tr_domain').css('display','');$('.repagenum').css('display','');" value="1" name="setting[ishtml]" <?php if($setting['ishtml'] == '1' ): ?>checked<?php endif; ?>>
                      <span>栏目生成静态</span></label>
                  </li>
                  <li>
                    <label>
                      <input type="radio" onClick="$('#category_php_ruleid').css('display','');$('#category_html_ruleid').css('display','none');$('#tr_domain').css('display','none');$('.repagenum').css('display','none');" value="0" name="setting[ishtml]" <?php if($setting['ishtml'] == '0' ): ?>checked<?php endif; ?>>
                      <span>栏目不生成静态</span></label>
                  </li>
                </ul></td>
            </tr>
            <tr>
              <th>单页URL规则：</th>
              <td><div style="<?php if($setting['ishtml'] == '1' ): ?>display:none<?php endif; ?>" id="category_php_ruleid"> <?php echo ($category_php_ruleid); ?> </div>
                <div style="<?php if($setting['ishtml'] == '0' ): ?>display:none<?php endif; ?>" id="category_html_ruleid"> <?php echo ($category_html_ruleid); ?> </div></td>
            </tr>
            <tr style="<?php if($setting['ishtml'] == '0' ): ?>display:none<?php endif; ?>" id="tr_domain">
              <th>绑定域名：</th>
              <td><input type="text" value="<?php echo ($data["domain"]); ?>" size="50" class="input" id="url" name="info[url]">
                <span class="gray"> 域名可为空，格式应该为http://www.abc3210.com/</span> </td>
            </tr>
          </table>
        </div>
      </div>
      <div style="display:none">
        <div class="h_a">权限设置</div>
        <div class="table_full">
          <table width="100%" >
            <tr>
              <th width="200">角色权限：</th>
              <td><div class="user_group J_check_wrap">
                  <dl>
                  <?php if(is_array($Role_group)): $i = 0; $__LIST__ = $Role_group;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><dt>
                      <label><input type="checkbox" data-direction="y" data-checklist="J_check_priv_roleid<?php echo ($vo["id"]); ?>" class="checkbox J_check_all" <?php if( $vo['id'] == 1 ): ?>disabled<?php endif; ?> /><?php echo ($vo["name"]); ?></label>
                    </dt>
                    <dd>
                      <label><input  class="J_check" type="checkbox" data-yid="J_check_priv_roleid<?php echo ($vo["id"]); ?>"  name="priv_roleid[]" <?php if( $vo['id'] == 1 ): ?>disabled<?php endif; ?>   <?php echo D("Content/CategoryPriv")->check_category_priv($privs,'init',$vo['id'],1);?> value="init,<?php echo ($vo["id"]); ?>" ><span>查看</span></label>
                      <label><input class="J_check" type="checkbox" data-yid="J_check_priv_roleid<?php echo ($vo["id"]); ?>" name="priv_roleid[]" <?php if( $vo['id'] == 1 ): ?>disabled<?php endif; ?>     <?php echo D("Content/CategoryPriv")->check_category_priv($privs,'add',$vo['id'],1);?> value="add,<?php echo ($vo["id"]); ?>" ><span>添加</span></label>
                      <label><input class="J_check" type="checkbox" data-yid="J_check_priv_roleid<?php echo ($vo["id"]); ?>" name="priv_roleid[]" <?php if( $vo['id'] == 1 ): ?>disabled<?php endif; ?>     <?php echo D("Content/CategoryPriv")->check_category_priv($privs,'edit',$vo['id'],1);?> value="edit,<?php echo ($vo["id"]); ?>" ><span>修改</span></label>
                      <label><input class="J_check" type="checkbox" data-yid="J_check_priv_roleid<?php echo ($vo["id"]); ?>" name="priv_roleid[]" <?php if( $vo['id'] == 1 ): ?>disabled<?php endif; ?>     <?php echo D("Content/CategoryPriv")->check_category_priv($privs,'delete',$vo['id'],1);?> value="delete,<?php echo ($vo["id"]); ?>" ><span>删除</span></label>
                      <label><input class="J_check" type="checkbox" data-yid="J_check_priv_roleid<?php echo ($vo["id"]); ?>" name="priv_roleid[]" <?php if( $vo['id'] == 1 ): ?>disabled<?php endif; ?>     <?php echo D("Content/CategoryPriv")->check_category_priv($privs,'listorder',$vo['id'],1);?> value="listorder,<?php echo ($vo["id"]); ?>" ><span>排序</span></label>
                      <label><input class="J_check" type="checkbox" data-yid="J_check_priv_roleid<?php echo ($vo["id"]); ?>" name="priv_roleid[]" <?php if( $vo['id'] == 1 ): ?>disabled<?php endif; ?>     <?php echo D("Content/CategoryPriv")->check_category_priv($privs,'push',$vo['id'],1);?> value="push,<?php echo ($vo["id"]); ?>" ><span>推送</span></label>
                      <label><input class="J_check" type="checkbox" data-yid="J_check_priv_roleid<?php echo ($vo["id"]); ?>" name="priv_roleid[]" <?php if( $vo['id'] == 1 ): ?>disabled<?php endif; ?>     <?php echo D("Content/CategoryPriv")->check_category_priv($privs,'move',$vo['id'],1);?> value="move,<?php echo ($vo["id"]); ?>" ><span>移动</span></label>
                    </dd><?php endforeach; endif; else: echo "" ;endif; ?>
                  </dl>
                </div></td>
            </tr>
          </table>
        </div>
      </div>
      <div style="display:none;">
        <div class="h_a">添加字段</div>
        <div class="table_full">
        <table cellpadding="0" cellspacing="0" class="table_form" width="100%">
          <tbody>
            <tr>
              <td width="50">键名:</td>
              <td><input type="text" class="input" name="extend_add[fieldname]" value="">
                注意：只允许英文、数组、下划线</td>
            </tr>
            <tr>
              <td>名称:</td>
              <td><input type="text" class="input" name="extend_add[setting][title]" value=""></td>
            </tr>
            <tr>
              <td>类型:</td>
              <td><select name="extend_add[type]" onChange="extend_type(this.value)">
                  <option value="input" >单行文本框</option>
                  <option value="textarea" >多行文本框</option>
                  <option value="password" >密码输入框</option>
                  <option value="radio" >单选框</option>
                  <option value="checkbox" >多选框</option>
                </select></td>
            </tr>
            <tr>
              <td>提示:</td>
              <td><input type="text" class="input length_4" name="extend_add[setting][tips]" value=""></td>
            </tr>
            <tr>
              <td>样式:</td>
              <td><input type="text" class="input length_4" name="extend_add[setting][style]" value=""></td>
            </tr>
            <tr class="setting_radio" style="display:none">
              <td>选项:</td>
              <td><textarea name="extend_add[setting][option]" disabled="true" style="width:380px; height:150px;">选项名称1|选项值1</textarea>
                注意：每行一个选项</td>
            </tr>
          </tbody>
        </table>
        </div>
        <input type="hidden" name="extenddelete" value=""/>
        <div class="btn_wrap_pd add_extend"><a href="javascript:;;">添加字段</a></div>
        <div class="h_a">扩展字段列表(提示：请使用 <b>getCategory(栏目ID,'extend.<font color="#FF0000">键名</font>')</b> 的方式获取该值)</div>
        <div class="table_full">
        <table width="100%"  class="table_form extend_list">
        <?php if(is_array($extendList)): $i = 0; $__LIST__ = $extendList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
          <th width="120"><?php echo ($vo["setting"]["title"]); ?>(<a href="javascript:;;" class="extend_del" data-fid="<?php echo ($vo["fid"]); ?>">删除</a>)</th>
          <th class="y-bg">
          <?php switch($vo["type"]): case "input": ?><input type="text" class="input" style="<?php echo ($vo["setting"]["style"]); ?>"  name="extend[<?php echo ($vo["fieldname"]); ?>]" value="<?php echo ($data['setting']['extend'][$vo['fieldname']]); ?>" placeholder="<?php echo ($vo["setting"]["tips"]); ?>"><?php break;?>
             <?php case "textarea": ?><textarea name="extend[<?php echo ($vo["fieldname"]); ?>]" style="<?php echo ($vo["setting"]["style"]); ?>" placeholder="<?php echo ($vo["setting"]["tips"]); ?>"><?php echo ($data['setting']['extend'][$vo['fieldname']]); ?></textarea><?php break;?>
             <?php case "password": ?><input type="password" class="input" style="<?php echo ($vo["setting"]["style"]); ?>"  name="extend[<?php echo ($vo["fieldname"]); ?>]" value="<?php echo ($data['setting']['extend'][$vo['fieldname']]); ?>" placeholder="<?php echo ($vo["setting"]["tips"]); ?>"><?php break;?>
             <?php case "radio": if(is_array($vo['setting']['option'])): $i = 0; $__LIST__ = $vo['setting']['option'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$rs): $mod = ($i % 2 );++$i;?><label><input name="extend[<?php echo ($vo["fieldname"]); ?>]" value="<?php echo ($rs["value"]); ?>" type="radio"  <?php if( $data['setting']['extend'][$vo['fieldname']] == $rs['value'] ): ?>checked<?php endif; ?>> <?php echo ($rs["title"]); ?></label><?php endforeach; endif; else: echo "" ;endif; break;?>
             <?php case "checkbox": if(is_array($vo['setting']['option'])): $i = 0; $__LIST__ = $vo['setting']['option'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$rs): $mod = ($i % 2 );++$i;?><label><input name="extend[<?php echo ($vo["fieldname"]); ?>][]" value="<?php echo ($rs["value"]); ?>" type="checkbox"  <?php if( in_array($rs['value'],$data['setting']['extend'][$vo['fieldname']]) ): ?>checked<?php endif; ?>> <?php echo ($rs["title"]); ?></label><?php endforeach; endif; else: echo "" ;endif; break; endswitch;?>
          <br/><font color="#999999">模板调用：{:getCategory(<?php echo ($data["catid"]); ?>,'extend.<?php echo ($vo["fieldname"]); ?>')}</font>
          </th>
         </th><?php endforeach; endif; else: echo "" ;endif; ?>
        </table>
        </div>
      </div>
    </div>
    <div class="btn_wrap">
      <div class="btn_wrap_pd">
        <input name="catid" type="hidden" value="<?php echo ($data["catid"]); ?>">
        <button class="btn btn_submit mr10 " type="submit">提交</button>
      </div>
    </div>
  </form>
</div>
<script type="text/javascript" src="<?php echo ($config_siteurl); ?>statics/js/common.js?v"></script>
<script type="text/javascript" src="<?php echo ($config_siteurl); ?>statics/js/content_addtop.js"></script>
<script type="text/javascript">
//扩展字段处理
function extend_type(type){
	if(type == 'radio' || type == 'checkbox'){
		$('.setting_radio').show();
		$('.setting_radio textarea').attr('disabled',false);
	}else{
		$('.setting_radio').hide();
		$('.setting_radio textarea').attr('disabled',true);
	}
}
$(function(){
	//删除扩展字段
	$('.extend_list .extend_del').click(function(){
		var fid = $(this).data('fid');
		if(fid){
			$(this).parent('th').parent('tr').remove();
			var extenddelete = $('input[name="extenddelete"]').val();
			if(extenddelete == ''){
				extenddelete = fid;
			}else{
				extenddelete = extenddelete+'|'+fid;
			}
			$('input[name="extenddelete"]').val(extenddelete);
		}
	});
	//添加扩展字段
	$('.add_extend a').click(function(){
		var fieldname = $('input[name="extend_add[fieldname]"]').val();
		var type = $('select[name="extend_add[type]"]').val();
		var setting = {};
		setting.title = $('input[name="extend_add[setting][title]"]').val();
		setting.tips = $('input[name="extend_add[setting][tips]"]').val();
		setting.style = $('input[name="extend_add[setting][style]"]').val();
		setting.option = $('textarea[name="extend_add[setting][option]"]').val();
		
		if(fieldname == ''){
			alert("键名不能为空！");
			return false;
		}else{
			if(fieldname.replace(/^[0-9a-zA-Z_]{1,}$/g) != 'undefined'){
				alert("键名只允许数字，字母，下划线！");
				return false;
			}
		}
		if(type == ''){
			alert("类型不能为空！");
			return false;
		}
		if(setting.title == ''){
			alert("名称不能为空！");
			return false;
		}
		
		//单选框
		if(type == 'input'){
			$('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">\
          <input type="text" class="input" style="'+setting.style+'"  name="extend['+fieldname+']" value="" placeholder="'+setting.tips+'">\
		  <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
		  <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
		}else if(type == 'textarea'){
			//多行文本框
			$('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">\
          <textarea name="extend['+fieldname+']" style="'+setting.style+'" placeholder="'+setting.tips+'"></textarea>\
		  <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
		  <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
		}else if(type == 'password'){
			//密码框
			$('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">\
          <input type="password" class="input" style="'+setting.style+'"  name="extend['+fieldname+']" value="" placeholder="'+setting.tips+'">\
		  <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
		  <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
		}else if(type == 'radio'){
			//单选框
			if(setting.option == ''){
				alert('选项不能为空！');
				return false;
			}
			var html = '';
			var op = setting.option.split("\n");
			$.each(op,function(i,rs){
				var at = rs.split("|");
				html += '<label><input name="extend['+fieldname+']" value="'+at[1]+'" type="radio" > '+at[0]+'</label>';
			});
			$('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">'+html+'\
		  <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
		  <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
		}else if(type == 'checkbox'){
			//复选框
			if(setting.option == ''){
				alert('选项不能为空！');
				return false;
			}
			var html = '';
			var op = setting.option.split("\n");
			$.each(op,function(i,rs){
				var at = rs.split("|");
				html += '<label><input name="extend['+fieldname+'][]" value="'+at[1]+'" type="checkbox" > '+at[0]+'</label>';
			});
			$('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">'+html+'\
		  <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
		  <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
		  <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
		}
		//清空
		$('input[name="extend_add[fieldname]"]').val('');
		$('select[name="extend_add[type]"]').val('');
		$('input[name="extend_add[setting][title]"]').val('');
		$('input[name="extend_add[setting][tips]"]').val('');
		$('input[name="extend_add[setting][style]"]').val('');
		//删除扩展字段
		$('.extend_list .extend_del').click(function(){
			$(this).parent('th').parent('tr').remove()
		});
	});
    Wind.use('validate', 'ajaxForm', 'artDialog', function () {
        var form = $('form.J_ajaxForms');
        //ie处理placeholder提交问题
        if ($.browser.msie) {
            form.find('[placeholder]').each(function () {
                var input = $(this);
                if (input.val() == input.attr('placeholder')) {
                    input.val('');
                }
            });
        }
        //表单验证开始
        form.validate({
			//是否在获取焦点时验证
			onfocusout:false,
			//是否在敲击键盘时验证
			onkeyup:false,
			//当鼠标掉级时验证
			onclick: false,
            //验证错误
            showErrors: function (errorMap, errorArr) {
				//errorMap {'name':'错误信息'}
				//errorArr [{'message':'错误信息',element:({})}]
				try{
					$(errorArr[0].element).focus();
					art.dialog({
						id:'error',
						icon: 'error',
						lock: true,
						fixed: true,
						background:"#CCCCCC",
						opacity:0,
						content: errorArr[0].message,
						cancelVal: '确定',
						cancel: function(){
							$(errorArr[0].element).focus();
						}
					});
				}catch(err){
				}
            },
            //验证规则
            rules: {
				"info[catname]":{
					required:true
				},
				"info[catdir]":{
					required:true
				}
			},
            //验证未通过提示消息
            messages: {
				"info[catname]":{
					required:"栏目名称不能为空！"
				},
				"info[catdir]":{
					required:"栏目目录不能为空！"
				}
			},
            //给未通过验证的元素加效果,闪烁等
            highlight: false,
            //是否在获取焦点时验证
            onfocusout: false,
            //验证通过，提交表单
            submitHandler: function (forms) {
                $(forms).ajaxSubmit({
                    url: form.attr('action'), //按钮上是否自定义提交地址(多按钮情况)
                    dataType: 'json',
                    beforeSubmit: function (arr, $form, options) {
                        
                    },
                    success: function (data, statusText, xhr, $form) {
                        if(data.status){
							//添加成功
							Wind.use("artDialog", function () {
							    art.dialog({
							        id: "succeed",
							        icon: "succeed",
							        fixed: true,
							        lock: true,
							        background: "#CCCCCC",
							        opacity: 0,
							        content: data.info,
									button:[
										{
											name: '继续添加？',
											callback:function(){
												reloadPage(window);
												return true;
											},
											focus: true
										},{
											name: '返回栏目管理页',
											callback:function(){
												window.location.href = "<?php echo U('Category/index',array('catid'=>$catid));?>";
												return true;
											}
										}
									]
							    });
							});
						}else{
							isalert(data.info);
						}
                    }
                });
            }
        });
    });
});
</script>
</body>
</html>