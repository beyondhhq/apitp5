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
            $res=Db::connect('db2')->name('student')->alias('u')->field('u.StudentID as id,u.StudentName as sname,u.LoginName,u.Tel,s.SchoolName as schname')->join("school s","u.SchoolID=s.SchoolID",'left')->where('u.StudentID|u.StudentName|s.SchoolName|u.LoginName|u.Tel','like',"%".$biaoti."%")->paginate(16,false,$pageParam);
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
            $res=Db::connect('db2')->name('teacher')->alias('u')->field('u.TeacherID as id,u.TeacherName as sname,u.Username,u.phone,s.SchoolName as schname')->join("school s","u.SchoolID=s.SchoolID","left")->where('u.TeacherID|u.TeacherName|s.SchoolName|u.Username|u.phone','like',"%".$biaoti."%")->paginate(16,false,$pageParam);
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
            $res=Db::connect('db2')->name('parent')->field('parentid as id,parentname as sname,loginuser,phone')->where('parentid|parentname|loginuser|phone','like',"%".$biaoti."%")->paginate(16,false,$pageParam);
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
            $res=Db::connect('db2')->name('student')->alias('u')->field('u.StudentID as id,u.valid,u.StudentName as names,u.LoginName as loginname,u.Sex as sex,u.types,u.Type as type,u.xian,u.Tel as tel,u.deaddate,s.SchoolName as school')->where($where)->join("school s","u.SchoolID=s.SchoolID",'left')->find();
            if($res['deaddate']){
               
               $res['deaddate']=date("m/d/Y",$res['deaddate']);
            }
            $this->assign("detail",$res);
			return view('studentdetail');
    }
    public function teacherDetail()
    {       
    	    // $id=$_GET['id'];
    	    // $where['u.id']=$id;
    	    // $res=$this->D('users')->alias('u')->where($where)->field("u.*,s.names as schname")->join("schools s","u.schid=s.id")->find();

         //    $this->assign("data",$res);
            $id=$_GET['id'];
            $where['u.TeacherID']=$id;
            $res=Db::connect('db2')->name('teacher')->alias('u')->field('u.TeacherID as id,u.TeacherName as names,u.Username as loginname,u.Sex as sex,u.types,u.xian,u.phone as tel,u.deaddate,s.SchoolName as school')->where($where)->join("school s","u.SchoolID=s.SchoolID",'left')->find();
            if($res['deaddate']){
               
               $res['deaddate']=date("m/d/Y",$res['deaddate']);
            }
            $this->assign("detail",$res);
            return view('teacherdetail');
    }
    public function parentDetail()
    {       
    	    // $id=$_GET['id'];
    	    // $where['id']=$id;
    	    // $res=$this->D('users')->where($where)->find();
    	    // $pcard=$res['cardnum'];
    	    // $scard=str_replace("F","S",$pcard);
    	    // $wherestu['cardnum']=$scard;
    	    // $stuinfo=$this->D('users')->where($wherestu)->field('cardnum,names')->find();
    	    // if($stuinfo){
    	    //    $res['child']=$stuinfo['names'];
    	    //    $res['instime']=date("Y-m-d",$res['instime']);
    	    // }else{
    	    //    $res['child']="";
    	    // }
    	   
         //    $this->assign("data",$res);
            $id=$_GET['id'];
            $where['parentid']=$id;
            $res=Db::connect('db2')->name('parent')->where($where)->field('parentid as id,valid,parentcard,studentcard,loginuser as loginname,parentname as names,phone as tel,sex,xian,address,deaddate,types')->find();
            if($res['parentcard']){
              $pcard=$res['parentcard'];
              $wherestu['parentcard']=$pcard;
              $stuinfo=Db::connect('db2')->name('student')->where($wherestu)->field('parentcard,StudentName as names')->find();
              if($stuinfo){
                $res['child']=$stuinfo['names'];
              }else{
                $res['child']="未关联子女信息";
              }

            }else{
                $res['child']="未关联子女信息";
            }
            
            if($res['deaddate']){
               
               $res['deaddate']=date("m/d/Y",$res['deaddate']);
            }
            $this->assign("detail",$res);
			return view('parentdetail');
    }
    public function modifystu(){
           

        $request=request();
        $id=$request->post('id');
        $type=$request->post('type');
        $where['StudentID']=$id;
        $data['types']=$type;
        $db2=Db::connect('db2');
        $res=$db2->name('student')->where($where)->update($data);
        if($res){
          $data['status']=1;
          $data['msg']="修改成功！";
        }else{
          $data['status']=0;
          $data['msg']="修改失败！";

        }
        return $data;

    }
    public function modifytea(){
        $request=request();
        $id=$request->post('id');
        $type=$request->post('type');
        $where['TeacherID']=$id;
        $data['types']=$type;
        $db2=Db::connect('db2');
        $res=$db2->name('teacher')->where($where)->update($data);
        if($res){
          $data['status']=1;
          $data['msg']="修改成功！";
        }else{
          $data['status']=0;
          $data['msg']="修改失败！";

        }
        return $data;


    }
    public function modifypar(){
        $request=request();
        $id=$request->post('id');
        $type=$request->post('type');
        $where['parentid']=$id;
        $data['types']=$type;
        $db2=Db::connect('db2');
        $res=$db2->name('parent')->where($where)->update($data);
        if($res){
          $data['status']=1;
          $data['msg']="修改成功！";
        }else{
          $data['status']=0;
          $data['msg']="修改失败！";

        }
        return $data;


    }
    public function initzhuanye(){
        $request=request();
        $id=$request->post('id');
        $where['studentid']=$id;
        $wher['student_id']=$id;
        Db::startTrans();
        try{
          Db::connect('db2')->name('student_test_result')->where($where)->where('xueke','null')->delete();
          Db::connect('db2')->name('student_huolande_result_one')->where($where)->delete();        
          Db::connect('db2')->name('student_mbti_result')->where($where)->delete();
          Db::connect('db2')->name('student_test_zonghe')->where($where)->delete();
          Db::connect('db2')->name('redpacket')->where($wher)->delete();
          // 提交事务
          Db::commit();
          $hao=1;    
        } catch (\Exception $e) {
          // 回滚事务
          Db::rollback();
          $hao=0;
        }
        $data=array();
        $data['status']=$hao;
        if($hao==1){
           
           $data['msg']="初始化数据成功！";  

        }else{
           $data['msg']="初始化数据失败！";
        }
        return $data;
    }
    public function initxuanke(){
        $request=request();
        $id=$request->post('id');
        $where['studentid']=$id;
        Db::startTrans();
        try{
          Db::connect('db2')->name('xuekebianzu')->where($where)->delete();
          Db::connect('db2')->name('comment_xuankejilu')->where($where)->delete();
          // 提交事务
          Db::commit();
          $hao=1;    
        } catch (\Exception $e) {
          // 回滚事务
          Db::rollback();
          $hao=0;
        }
        $data=array();
        $data['status']=$hao;
        if($hao==1){
           
           $data['msg']="初始化数据成功！";  

        }else{
           $data['msg']="初始化数据失败！";
        }
        return $data;
        
        
    }

    public function initxueke(){
        $request=request();
        $id=$request->post('id');
        $where['studentid']=$id;
        $wher['StudentID']=$id;
        Db::startTrans();
        try{
          Db::connect('db2')->name('student_test_result')->where($where)->where('xueke','<>','null')->delete();
          Db::connect('db2')->name('sub_stuent_score')->where($wher)->delete();
          // 提交事务
          Db::commit();
          $hao=1;    
        } catch (\Exception $e) {
          // 回滚事务
          Db::rollback();
          $hao=0;
        }
        $data=array();
        $data['status']=$hao;
        if($hao==1){
           
           $data['msg']="初始化数据成功！";  

        }else{
           $data['msg']="初始化数据失败！";
        }
        return $data;
        
        
    }
    public function stumodifytime(){
        $request=request();
        $time=$request->post('time');
        $id=$request->post('id');
        $where['StudentID']=$id;

        $timestamp=strtotime($time);
        $data['deaddate']=$timestamp;
        $res=Db::connect('db2')->name('student')->where($where)->update($data);
        $rdata=array();
        if($res){
          $rdata['status']=1;
          $rdata['msg']="修改截止时间成功！";
        }else{
          $rdata['status']=0;
          $rdata['msg']="修改截止时间失败！";
        }
        return $rdata;

    }

    public function parmodifytime(){
        $request=request();
        $time=$request->post('time');
        $id=$request->post('id');
        $where['parentid']=$id;

        $timestamp=strtotime($time);
        $data['deaddate']=$timestamp;
        $res=Db::connect('db2')->name('parent')->where($where)->update($data);
        $rdata=array();
        if($res){
          $rdata['status']=1;
          $rdata['msg']="修改截止时间成功！";
        }else{
          $rdata['status']=0;
          $rdata['msg']="修改截止时间失败！";
        }
        return $rdata;

    }

    public function teamodifytime(){
        $request=request();
        $time=$request->post('time');
        $id=$request->post('id');
        $where['TeacherID']=$id;

        $timestamp=strtotime($time);
        $data['deaddate']=$timestamp;
        $res=Db::connect('db2')->name('teacher')->where($where)->update($data);
        $rdata=array();
        if($res){
          $rdata['status']=1;
          $rdata['msg']="修改截止时间成功！";
        }else{
          $rdata['status']=0;
          $rdata['msg']="修改截止时间失败！";
        }
        return $rdata;

    }
    public function initzhiyuan(){
        $request=request();
        $id=$request->post('id');
        $where['user_id']=$id;
        $result =Db::connect('db2')->name('d_user_planned')->where($where)->delete();
        if($result){
           $hao=1;
        }else{
           $hao=0;
        }
        $data=array();
        $data['status']=$hao;
        if($hao==1){
           
           $data['msg']="初始化数据成功！";  

        }else{
           $data['msg']="初始化数据失败！";
        }
        return $data;

    }
  
}
