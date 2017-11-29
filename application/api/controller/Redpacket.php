<?php
namespace app\api\controller;
use think\Request; 
use think\Db;

class Redpacket extends Domain
{
    public function showmoney()
    {  
       /*$id=rand(1,1000);
       echo $id;
       if($id>0&&$id<951){
          echo "在5-6这个范围内";
          $res=$this->getmoney($min=5, $max=6);
       }elseif($id>950&&$id<976){
          echo "在6-10这个范围内";
          $res=$this->getmoney($min=6, $max=10);
       }elseif($id>975&&$id<981){
          echo "在10-20这个范围内";
          $res=$this->getmoney($min=10, $max=20);
       }elseif($id>980&&$id<985){
          echo "在20-30这个范围内";
          $res=$this->getmoney($min=20, $max=30);
       }elseif($id>984&&$id<989){
          echo "在30-40这个范围内";
          $res=$this->getmoney($min=30, $max=40);
       }elseif($id>988&&$id<992){
          echo "在40-50这个范围内";
          $res=$this->getmoney($min=40, $max=50);
       }elseif($id>991&&$id<995){
          echo "在50-60这个范围内";
          $res=$this->getmoney($min=50, $max=60);
       }elseif($id>994&&$id<997){
          echo "在60-70这个范围内";
          $res=$this->getmoney($min=60, $max=70);
       }elseif($id>996&&$id<999){
          echo "在70-80这个范围内";
          $res=$this->getmoney($min=70, $max=80);
       }elseif($id==999){
          echo "在80-90这个范围内";
          $res=$this->getmoney($min=80, $max=90);
       }elseif($id==1000){
          echo "在90-100这个范围内";
          $res=$this->getmoney($min=90, $max=100);
       }
       return $res;*/
       $data=10;
       $this->apiReturn(200,'操作成功',$data);
    }
    public function lists()
    {
       $request = request();
       $data=db('redpacket')->where('id',1)->find();
       $this->apiReturn(200,'操作成功',$data);
    }
    
    public function submit()
    {
       $request = request();
       $data=1;
       $this->apiReturn(200,'提交成功',$data);
    }
    public function checkpacket()
    {
       $request = request();
       $data=1;
       $this->apiReturn(200,'提交成功',$data);
    }
    public function detail()
    {
       $request = request();
       $data=1;
       $this->apiReturn(200,'提交成功',$data);
    }
    
    // public function getmoney($min, $max){
    //    return round($min + mt_rand()/mt_getrandmax() * ($max-$min),2);
    // }
}
