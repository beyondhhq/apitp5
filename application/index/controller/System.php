<?php
namespace app\index\controller;
class System extends Domain
{
    public function card()
    {       
    	    
			return view('card');
    }
    public function addcard()
    {       
    	    
			return view('addcard');
    }
    public function redenvelopelist(){

            $res=$this->D('redpacket')->where(1)->select();
            if($res){
              foreach($res as $k=>$v){
                  $res[$k]['money']=$v['money']/100;
              }
              $this->assign('list',$res); 
              
            }else{
              $res=array();
              $this->assign('list',$res);
            }
    
            return view('redenvelopelist');
    	  
    }
    
    public function cardDetail(){
        
            return view('cardDetail');
              
    }
    //管理员列表
    public function index(){
        
         $where['isdel']=0;
         $uid=session('uid');
         if($uid==1){
           $res=$this->D('admins')->field('id,username,names,instime')->where($where)->select();
         }else{
           $where['id']=array();
           $res=$this->D('admins')->field('id,username,names,instime')->where("isdel",0)->where('id','neq',1)->select();
         }
         
         if($res){   
           foreach($res as $k=>$v){
              $res[$k]['instime']=date("Y-m-d:H-i-s",$v['instime']);
           }

         }
       
         $this->assign('data',$res);
         $this->assign('sessionid',$uid);
         return $this->fetch('index');
              
    }
    public function addAdmin(){
          
          $where['pid']=0;
          $res=$this->D('admin_auth')->field('id,authname,pid')->where($where)->select();          
          foreach($res as $k=>$v){
             $wher['pid']=$v['id'];
             $sonres=$this->D('admin_auth')->field('id,authname')->where($wher)->select();
             $newarr[$k]['id']=$v['id'];
             $newarr[$k]['authname']=$v['authname'];
             $newarr[$k]['son']=$sonres;
          }
          $this->assign('auth',$newarr);


          return $this->fetch('addAdmin');
              
    }
    public function adminruku(){
          
          $request=request();
          if($request->isPost()){

            $names=$request->post('names');
            $username=$request->post('username');
            $password=$request->post('password');
            $rpassword=$request->post('rpassword');
            $auth=$request->post('auth');
            if($password==$rpassword){
                $dat['username']=$username;
                $dat['password']=md5($password);
                $dat['names']=$names;
                $dat['powers']=$auth;
                $dat['instime']=time();

                $res=$this->D("admins")->insert($dat);
                if($res){
                   $data['status']=1;
                   $data['msg']="添加成功！";

                }else{
                   $data['status']=0;
                   $data['msg']="添加失败！";
                }
            }else{
               $data['status']=0;
               $data['msg']="两次输入的密码不一致！";
            }
          }
          return $data;

    }

    public function adminDetail(){
            $where['pid']=0;
            $res=$this->D('admin_auth')->field('id,authname,pid')->where($where)->select();
          
            foreach($res as $k=>$v){
               $wher['pid']=$v['id'];
               $sonres=$this->D('admin_auth')->field('id,authname')->where($wher)->select();
               $newarr[$k]['id']=$v['id'];
               $newarr[$k]['authname']=$v['authname'];
               $newarr[$k]['son']=$sonres;
            }
            $this->assign('auth',$newarr);
            $request=request();
            if($request->isGet()){
               $id=$request->get('id');
               $whe['id']=$id;
               $res=$this->D('admins')->field('id,username,names,powers,instime')->where($whe)->find();
            }
            if($res){  
                 if($res['powers']!='super'){
                   $arr=explode(",",$res['powers']);
                   $res['powers']=$arr;
                 } 
                 
                 $res['instime']=date("Y-m-d:H-i-s",$res['instime']);
                 

            }
      
            $uid=session('uid');
            $this->assign('sessionid',$uid);
            $this->assign('data',$res);
            return $this->fetch('adminDetail');
              
    }
    public function redsend(){
           $request=request();
           $id=$request->post('id');
           $dat['is_send']=1;
           $where['id']=$id;
           $res=$this->D('redpacket')->where($where)->update($dat);
           if($res){
              $data['status']=1;
              $data['msg']="发送成功！";
           }else{
              $data['status']=0;
              $data['msg']="发送失败！";
           }

           return $data;



    }
    public function admindel(){
           
           $request=request();
           $id=$request->post('id');
           $dat['isdel']=1;
           $where['id']=$id;
           $res=$this->D('admins')->where($where)->update($dat);
           if($res){
              $data['status']=1;
              $data['msg']="删除成功！";
           }else{
              $data['status']=0;
              $data['msg']="删除失败！";
           }

           return $data;

    }
    
}
