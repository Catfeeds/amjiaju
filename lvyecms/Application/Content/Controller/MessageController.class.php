<?php
namespace Content\Controller;
use Think\Controller;
use Admin\Service\User;
use Think\Page;

class MessageController extends Controller {
    //添加
    public function add(){
        if(IS_POST){
            $mg=D('Message');
            $data['name']=I('post.name');
            $data['telephone']=I('post.telephone');
            $data['email']=I('post.email');
            $data['info']=I('post.info');
            $data=$mg->create($data);
            if($data){
                $inId=$mg->add($data);
                $inId?$this->success("留言成功",'',5000):$this->error("留言失败");
            }else{
                $this->error($mg->getError(),'',5000);
            }
        }
    }
    //列表
    public function lists(){
        $this->auth();
        $mg=D('Message');
        $pagesize=20;
        $currentpage=I("get.page", 0, "intval");

        if(IS_POST){
            $map=array();
            //搜索时间
            $start_time=I('post.start_time');
            $end_time=I('post.end_time');
            $this->assign('start_time',$start_time);
            $this->assign('end_time',$end_time);
            $start_time=strtotime($start_time);
            $end_time=strtotime($end_time);
            if($start_time && $end_time){
                $map['inputtime']=array("between","$start_time,$end_time");
            }elseif($start_time && !$end_time){
                $map['inputtime']=array('egt',$start_time);
            }elseif(!$start_time && $end_time){
                $map['inputtime']=array('elt',$end_time);
            }
            //搜索字段
            $searchtype=I('post.searchtype');
            if(isset($searchtype)){
                $this->assign('searchtype',$searchtype);
                switch($searchtype){
                    case '0':
                        $searchtype='name';
                        break;
                    case '3':
                        $searchtype='info';
                        break;
                    default:
                        $searchtype='info';
                }
            }
            //搜索关键字
            $keyword=I('post.keyword');
            if($keyword){
                $this->assign('keyword',$keyword);
                $keyword=preg_replace("/<(.*?)>/","",$keyword);
                if($searchtype!='catid'){
                    $map[$searchtype]=array("like","%{$keyword}%");
                }
            }
            $data=$mg->where($map)->page("$currentpage,$pagesize")->order('id desc')->select();
            $count=$mg->where($map)->count();
        }else{
            $data=$mg->page("$currentpage,$pagesize")->order('id desc')->select();
            $count=$mg->count();
        }
        $page=new Page($count,$pagesize);
        $show=$page->show();
        $this->assign('page',$show);
        $this->assign('data',$data);
        $this->display();
    }
    //查看详情
    public function show(){
        $this->auth();
        $id = I("get.id", "", "intval");
        $mg=D('Message');
        $re=$mg->relation(true)->where('id='.$id)->find();
        if($re){
            $data['readstatus']=1;
            $mg->where('id='.$id)->save($data);
            $this->assign('message',$re);
            $this->display();
        }else{
            $this->error("你所查询的内容不存在");
        }
    }
    //删除单条
    public function delete(){
        $this->auth();
        $id = I("get.id", 0, "intval");
        $mg=D('Message');
        if($id){
            $re=$mg->relation(true)->where('id='.$id)->delete();
            $re?$this->success("删除成功"):$this->error("删除失败");
        }else{
            $this->error("信息不存在");
        }


    }
    //删除多条
    public function delmany(){
        $this->auth();
        if(IS_POST){
            $ids=I('post.delmany');
            $mg=D('Message');
            $map['id']=array('in',$ids);
            $re=$mg->where($map)->delete();
            $re?$this->success("删除成功"):$this->error("删除失败");
        }
    }

    //导出Excel
    public function toExcel(){
        $this->auth();
        $mg=D('Message');
        $result=$mg->select();
        if($result){
            header ( "Content-type:application/vnd.ms-excel" );
            header ( "Content-Disposition:filename=csat.xls" );

            $str1= "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
    <html xmlns='http://www.w3.org/1999/xhtml'>
    <head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <title>无标题文档</title>
    <style>
    td{
        text-align:center;
        font-size:12px;
        font-family:Arial, Helvetica, sans-serif;
        border:#1C7A80 1px solid;
        color:#152122;
        width:100px;
    }
    table,tr{
        border-style:none;
    }
    .title{
        background:#7DDCF0;
        color:#FFFFFF;
        font-weight:bold;
    }
    </style>
    </head>
            
    <body>
    <table width='800' border='1'>
      <tr>
        <td class='title'>姓名</td>
        <td class='title'>电话</td>
        <td class='title'>邮箱</td>
        <td class='title'>留言</td>        
        <td class='title'>阅读状态</td>
        <td class='title'>留言时间</td>       
      </tr> ";

            $str2="";
            foreach($result as $key=>$value){
                $value['catid']=getCategory($value['catid'],'catname');
                $value['inputtime']=date('Y-m-d',$value['inputtime']);
                if($value['readstatus']==0){
                    $value['readstatus']='未读';
                }elseif($value['readstatus']==1){
                    $value['readstatus']='已读';
                }

                $str2.="<tr><td>".$value['name']."</td><td>".$value['telephone']."</td><td>".$value['email']."</td><td>".$value['info']."</td><td>".$value['readstatus']."</td><td>".$value['inputtime']."</td></tr>";
            }
            $str3="</table></body></html>";
            echo $str1.$str2.$str3;
        }else{
            $this->error("没有相关内容");
        }
    }
//判断权限
    protected function auth(){
        if (User::getInstance()->isAdministrator() !== true) {
            $userInfo = User::getInstance()->getInfo();
            if(!$userInfo){
                $this->error("请先登录",U('Admin/Public/login'));
            }
            $roleId=$userInfo['role_id'];
            $ac=D("access");
            $a=ACTION_NAME;
            $c=CONTROLLER_NAME;
            $map[id]=$roleId;
            $map['controller']=array('like',$c.'%');
            $map['action']=array('like',$a.'%');
            $re=$ac->where($map)->find();
            if($re){
                return true;
            }else{
                $this->error("您没有操作权限",U('Admin/Index/index'));
            }
        }
    }


}
?>