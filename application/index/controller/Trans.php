<?php
namespace app\index\controller;
use think\Db;
class Trans extends Domain
{   

    public function dotrans()
    {   
        

        $jiaoshirushishuo=$this->inser($this->xuan('teacher_xsczzd',"class=12 and kind=1","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'老师如是说'");
        echo $jiaoshirushishuo;

    }
    public function xuan($tablename,$where,$field){
       $db2=Db::connect('db2');
       $res=$db2->name($tablename)->where($where)->field($field)->select();
       return $res;
    }
    public function inser($array,$name){
       $tp=$this->D('news_type')->field('id');
       
       if($array){
         $id=$tp->where("names=$name")->find();
         foreach($array as $k=>$v){
            $array[$k]['instime']= strtotime($v['instime']);
            $array[$k]['typeid']= $id['id'];
         }
         $res=$this->D('news')->insertAll($array);
         if($res){
            $msg=$name."数据迁移成功！";
         }else{
            $msg=$name."数据迁移失败！";
         }
       }else{

            $msg=$name."无数据可迁移";
       }
       return $msg;


    }
  
}
