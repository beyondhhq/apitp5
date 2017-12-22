<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Session;
class Login extends Controller
{
    public function login()
    {       
    	
        $request=request();
		if($request->isPost()){
			$username=$request->post('username');
			$password=$request->post('password');
			$where['username']=$username;
      $where['isdel']=0;
			$res=Db::table('admins')->where($where)->field("id,password")->find();
			if($res){
               if($res['password']==md5($password)){
               	  Session::set('uid',$res['id']);
                  $this->redirect("index/index/index");
               }else{
                 
                  $data="账号或密码错误！！！";
                  $this->assign("data",$data);
                  return $this->fetch();
               }
			}else{
               $data="账号或密码错误！！！";
               $this->assign("data",$data);
               return $this->fetch();
			}
		}else{
			if(session('uid')){
				return $this->redirect('Index/index');
			}else{
			   
			   $data="";
               $this->assign("data",$data);
               return $this->fetch();
				
			}
		}
    }
    public function logout(){
		
		Session::set('uid',null);
		$this->redirect('index/login/login');
    	  
    }
}
