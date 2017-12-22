<?php
namespace app\index\controller;

class User extends Domain
{
    public function studentList()
    {       
    	    $where['usertype']=1;
    	    $res=$this->D('users')->alias('u')
->where($where)->field('u.id,u.names as sname,u.instime,s.names as schname')->join("schools s","u.schid=s.id")->select();
            if($res){
               foreach($res as $k=>$v){
                    $res[$k]['instime']=date("Y-m-d",$v['instime']);
               }
            }
    	    $this->assign("data",$res);
			return view('studentList');
    }
    public function teacherList()
    {       
    	    $where['usertype']=3;
    	    $res=$this->D('users')->alias('u')
->where($where)->field('u.id,u.names as sname,u.instime,s.names as schname')->join("schools s","u.schid=s.id")->select();
            if($res){
               foreach($res as $k=>$v){
                    $res[$k]['instime']=date("Y-m-d",$v['instime']);
               }
            }
    	    $this->assign("data",$res);
			
			return view('teacherList');
    }
    public function parentList()
    {       
    	    $where['usertype']=2;
    	    $res=$this->D('users')->where($where)->field('id,names as sname,instime')->select();
            if($res){
               foreach($res as $k=>$v){
                    $res[$k]['instime']=date("Y-m-d",$v['instime']);
               }
            }
    	    $this->assign("data",$res);
			return view('parentList');
    }
    public function studentDetail()
    {       
    	    $id=$_GET['id'];
    	    $where['u.id']=$id;
    	    $res=$this->D('users')->alias('u')->field('u.*,us.stuid,us.schoolold,us.scoreold,s.names as schname')->where($where)->join("users_student us",'u.id=us.uid')->join("schools s","u.schid=s.id")->find();
    	    $res['instime']=date("Y-m-d",$res['instime']);
            $this->assign("data",$res);
			return view('studentDetail');
    }
    public function teacherDetail()
    {       
    	    $id=$_GET['id'];
    	    $where['u.id']=$id;
    	    $res=$this->D('users')->alias('u')->where($where)->field("u.*,s.names as schname")->join("schools s","u.schid=s.id")->find();

            $this->assign("data",$res);
			return view('teacherDetail');
    }
    public function parentDetail()
    {       
    	    $id=$_GET['id'];
    	    $where['id']=$id;
    	    $res=$this->D('users')->where($where)->find();
    	    $pcard=$res['cardnum'];
    	    $scard=str_replace("F","S",$pcard);
    	    $wherestu['cardnum']=$scard;
    	    $stuinfo=$this->D('users')->where($wherestu)->field('cardnum,names')->find();
    	    if($stuinfo){
    	       $res['child']=$stuinfo['names'];
    	       $res['instime']=date("Y-m-d",$res['instime']);
    	    }else{
    	       $res['child']="";
    	    }
    	    print_R($res);
            $this->assign("data",$res);
			return view('parentDetail');
    }
  
}
