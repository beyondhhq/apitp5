<?php
namespace app\index\controller;
use think\Db;
use think\Session;
class Manager extends Domain
{
     public function password()
    {       
			return view('password');
    }
    public function changepass(){
         $request=request();
         if($request->isPost()){
         	  $uid=session('uid');
            $oldpass=$request->post('oldpassword');
            $newpass=$request->post('newpassword');
            $rnewpass=$request->post('rnewpassword');
            $where['id']=$uid;
            $where['password']=md5($oldpass);
            $res=$this->D('admins')->where($where)->field("id,password")->find();
            if($res){
               if($newpass==$rnewpass){
                  $dat['password']=md5($newpass);
                  $sres=$this->D('admins')->where($where)->update($dat);
                  if($sres){
                    $data['status']=100;
                    $data['msg']="修改成功！";
                    	
                  }else{
                    $data['status']=0;
                    $data['msg']="修改失败！";
                   
                  }

               }else{
                  
                  $data['status']=0;
                  $data['msg']="两次输入的密码不正确请重新输入！";
                  
              
               }


            }else{
              $data['status']=0;
              $data['msg']="原密码不正确！";
              
            }

            return $data;
           












         }


    }
    
}
