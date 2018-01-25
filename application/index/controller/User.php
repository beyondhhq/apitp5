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
    	    $where['u.TeacherID']=$id;
    	    $res=Db::connect('db2')->name('teacher')->alias('u')->field('u.TeacherID as id,u.TeacherName as names,u.Username as loginname,u.Sex as sex,u.types,u.xian,u.phone as tel,u.deaddate,s.SchoolName as school')->where($where)->join("school s","u.SchoolID=s.SchoolID")->find();

            $this->assign("detail",$res);
			return view('teacherdetail');
    }
    public function parentDetail()
    {       
    	    $id=$_GET['id'];
    	    $where['parentid']=$id;
    	    $res=Db::connect('db2')->name('parent')->where($where)->field('parentid as id,valid,parentcard,studentcard,loginuser as loginname,parentname as names,phone as tel,sex,xian,address,deaddate,types')->find();
    	    if($res['parentcard']){
              $pcard=$res['parentcard'];
    	      $wherestu['parentcard']=$pcard;
    	      $stuinfo=Db::connect('db2')->name('student')->where($wherestu)->field('cardnum,StudentName as names')->find();
    	      if($stuinfo){
    	        $res['child']=$stuinfo['names'];
    	      }else{
    	        $res['child']="未关联子女信息";
    	      }

    	    }else{
    	    	$res['child']="未关联子女信息";
    	    }
    	    
    	   
            $this->assign("detail",$res);
			return view('parentdetail');
    }
  
}
