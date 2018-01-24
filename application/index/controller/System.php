<?php
namespace app\index\controller;
use think\Db;
class System extends Domain
{
    public function card()
    {        
      $res=$this->D('users_card')->alias('uc')->join('users u','uc.uid=u.id')->field('uc.*,u.usertype,u.names')->select();

      if($res){
         foreach($res as $k=>$v){
            if($v['status']==0){
               $res[$k]['status']="未激活";
            }else{

              $res[$k]['status']="已激活";
            }

            if($v['cstatus']==1){
               $res[$k]['cstatus']="正常";
            }else{

              $res[$k]['cstatus']="已作废";
            }
            if($v['usertype']==1){
               $res[$k]['usertype']="学生";
            }elseif($v['usertype']==2){
               $res[$k]['usertype']="家长";


            }elseif($v['usertype']==3){
               $res[$k]['usertype']="教师";


            }else{

              $res[$k]['usertype']="其它";
            }
            $res[$k]['instime']=date('Y-m-d:H-i-s',$v['instime']);
            $res[$k]['acttime']=date('Y-m-d:H-i-s',$v['acttime']);
            $res[$k]['actendtime']=date('Y-m-d:H-i-s',$v['actendtime']);
         }

      }else{
         $res=array();
      }
      $this->assign('data',$res);
			return $this->fetch('card');
    }
    public function addcard()
    {       
    	    
			return view('addcard');
    }
    public function redenvelopelist(){
            $db2=Db::connect('db2');
            $res=$db2->name('redpacket')->where(1)->order('submit_time desc')->paginate(10)->each(function($item, $key){
                     $item['money'] = $item['money']/100;
                     return $item;
                     });;
            if($res){
              
              $this->assign('list',$res); 
              
            }else{
              $res=array();
              $this->assign('list',$res);
            }
    
            return view('redenvelopelist');
    	  
    }
    
    public function cardDetail(){
        
            return view('carddetail');
              
    }
    //管理员列表
    public function index(){
        
  
         $uid=session('uid');
         if($uid==1){
           $res=$this->D('admins')->field('id,username,names,instime')->select();
         }else{
           $where['id']=array();
           $res=$this->D('admins')->field('id,username,names,instime')->where('id','neq',1)->select();
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


          return $this->fetch('addadmin');
              
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
            print_R($res);
            $this->assign('sessionid',$uid);
            $this->assign('data',$res);
            return $this->fetch('admindetail');
              
    }
    public function redsend(){
           $db2=Db::connect('db2');
           $request=request();
           $id=$request->post('id');
           $dat['is_send']=1;
           $where['id']=$id;

           $res=$db2->name('redpacket')->where($where)->update($dat);
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
           
           $where['id']=$id;
           $res=$this->D('admins')->where($where)->delete();
           if($res){
              $data['status']=1;
              $data['msg']="删除成功！";
           }else{
              $data['status']=0;
              $data['msg']="删除失败！";
           }

           return $data;

    }
    public function adminmodify(){
           $request=request();
           $id=$request->post('id');
           $auth=$request->post('auth');
           $dat['powers']=$auth;
           $where['id']=$id;
           $res=$this->D('admins')->where($where)->update($dat);
           if($res){
              $data['status']=1;
              $data['msg']="修改成功！";
           }else{
              $data['status']=0;
              $data['msg']="修改失败！";
           }

           return $data;



    }

    
}
