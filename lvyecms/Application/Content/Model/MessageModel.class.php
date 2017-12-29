<?php 
namespace Content\Model;

use Common\Model\RelationModel;
class MessageModel extends RelationModel{
    //自动验证
    protected $_validate=array(
        array('name','require','姓名必填！',self::EXISTS_VALIDATE),
        array('name','2,40','姓名长度为2-40位！',self::EXISTS_VALIDATE,'length'),
        array('telephone','/^1\d{10}$/','电话格式不正确',self::EXISTS_VALIDATE),
    );

    
    //自动完成
    protected $_auto=array(
        array('inputtime','time',0,'function'),
        array('ip','get_client_ip',0,'callback'),
    );
    
    protected function get_client_ip(){
        return $_SERVER["REMOTE_ADDR"];
    }
    
}



?>