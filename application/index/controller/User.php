<?php
namespace app\index\controller;
use think\Db;
class User extends Domain
{
    public function studentList()
    {       

//     	    $where['usertype']=1;
//     	    $res=$this->D('users')->alias('u')
// ->where($where)->field('u.id,u.names as sname,u.instime,s.names as schname')->join("schools s","u.schid=s.id")->select();
//             if($res){
//                foreach($res as $k=>$v){
//                     $res[$k]['instime']=date("Y-m-d",$v['instime']);
//                }
//             }
            $request=request();
            $biaoti=$request->get('biaoti');
            $pageParam=array();
            if($biaoti){
              $this->assign('biaoti',$biaoti);
              $pageParam['query']['biaoti'] = $biaoti;
            }
            $res=Db::connect('db2')->name('student')->alias('u')->field('u.StudentID as id,u.StudentName as sname,s.SchoolName as schname')->join("school s","u.SchoolID=s.SchoolID")->where('u.StudentID|u.StudentName|s.SchoolName','like',"%".$biaoti."%")->paginate(16,false,$pageParam);
    	    $this->assign("data",$res);
			return view('studentlist');
    }
    public function teacherList()
    {       
//     	    $where['usertype']=3;
//     	    $res=$this->D('users')->alias('u')
// ->where($where)->field('u.id,u.names as sname,u.instime,s.names as schname')->join("schools s","u.schid=s.id")->select();
//             if($res){
//                foreach($res as $k=>$v){
//                     $res[$k]['instime']=date("Y-m-d",$v['instime']);
//                }
//             }
            $request=request();
            $biaoti=$request->get('biaoti');
            $pageParam=array();
            if($biaoti){
              $this->assign('biaoti',$biaoti);
              $pageParam['query']['biaoti'] = $biaoti;
            }
            $res=Db::connect('db2')->name('teacher')->alias('u')->field('u.TeacherID as id,u.TeacherName as sname,s.SchoolName as schname')->join("school s","u.SchoolID=s.SchoolID")->where('u.TeacherID|u.TeacherName|s.SchoolName','like',"%".$biaoti."%")->paginate(16,false,$pageParam);
    	    $this->assign("data",$res);
			
			return view('teacherlist');
    }
    public function parentList()
    {       
    	    // $where['usertype']=2;
    	    // $res=$this->D('users')->where($where)->field('id,names as sname,instime')->select();
         //    if($res){
         //       foreach($res as $k=>$v){
         //            $res[$k]['instime']=date("Y-m-d",$v['instime']);
         //       }
         //    }
            $request=request();
            $biaoti=$request->get('biaoti');
            $pageParam=array();
            if($biaoti){
              $this->assign('biaoti',$biaoti);
              $pageParam['query']['biaoti'] = $biaoti;
            }
            $res=Db::connect('db2')->name('parent')->field('parentid as id,parentname as sname')->where('parentid|parentname','like',"%".$biaoti."%")->paginate(16,false,$pageParam);
    	    $this->assign("data",$res);
			return view('parentlist');
    }
    public function studentDetail()
    {       
    	    // $id=$_GET['id'];
    	    // $where['u.id']=$id;
    	    // $res=$this->D('users')->alias('u')->field('u.*,us.stuid,us.schoolold,us.scoreold,s.names as schname')->where($where)->join("users_student us",'u.id=us.uid')->join("schools s","u.schid=s.id")->find();
    	    // $res['instime']=date("Y-m-d",$res['instime']);
            $id=$_GET['id'];
            $where['u.StudentID']=$id;
            $res=Db::connect('db2')->name('student')->alias('u')->field('u.StudentID as id,u.valid,u.StudentName as names,u.LoginName as loginname,u.Sex as sex,u.types,u.Type as type,u.xian,u.Tel as tel,u.deaddate,s.SchoolName as school')->where($where)->join("school s","u.SchoolID=s.SchoolID")->find();
            $this->assign("detail",$res);
			return view('studentdetail');
    }
    public function teacherDetail()
    {       
    	    $id=$_GET['id'];
    	    $where['u.id']=$id;
    	    $res=$this->D('users')->alias('u')->where($where)->field("u.*,s.names as schname")->join("schools s","u.schid=s.id")->find();

            $this->assign("data",$res);
			return view('teacherdetail');
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
    	   
            $this->assign("data",$res);
			return view('parentdetail');
    }
  
}
