<?php
namespace app\api\controller;
use think\Request; 
use think\Db;

class Zhc
{
    public function index()
    {
       echo "此文件用来进行接口文档的书写！";
    }
    public function jiekou()
    {
       $request = request();
       $act=$request->post('act');
       $type=$request->post('type');
       //act==1处理学校平台往优生涯平台同步数据
       if($act==1){
       	  //处理当type==student时的情况
          if($type=='student'){
             $info=$request->post('info');
             if($info){
               $infoarr=json_decode($info,true);
               if(is_array($infoarr)){
               	 
               	

               }else{
                 
                 $request->apiReturn(0,'info参数格式不对');
               }
             }else{
             
               $request->apiReturn(0,'info参数有误');
             }
          }
          //处理当type==teacher时的情况
          elseif($type=='teacher'){
             $info=$request->post('info');
             if($info){
               $infoarr=json_decode($info,true);
               if(is_array($infoarr)){
                 

               }else{
                 
                 $request->apiReturn(0,'info参数格式不对');
               }
             }else{
             
               $request->apiReturn(0,'info参数有误');
             }
          }else{
            
            $request->apiReturn(0,'type参数不是规定类型');

          }
       }
       //act==2处理优生涯平台向学校平台同步数据
       else if($act==2){
          
       }
       //act不是1和2的话返回参数有
       else{
       	
       	 $request->apiReturn(0,'act参数有误');
       }

    }
}
