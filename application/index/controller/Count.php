<?php
namespace app\index\controller;
use think\Db;
class Count extends Domain
{
    public function distribution(){
     
      $db2=Db::connect('db3');
      $res=$db2->table('wx_userinfo')->alias('ui')->join('wx_userinfo wui','ui.fid=wui.openid','left')->where('ui.usertype','neq',0)->field('ui.usertype,ui.id,ui.names,ui.tel,ui.instime,wui.names as fname,ui.status,ui.nickname,ui.issue_bonus')->order('ui.instime desc')->paginate(10);
      $this->assign('lists',$res);
      return $this->fetch('count/distribution');

    }
    public function banduser(){
      
      $db2=Db::connect('db2');
      $res=$db2->table('wx_users')->order('instime desc')->select();
      $this->assign('lists',$res);
      return $this->fetch('banduser');

    }
    public function orderlist(){
      
      $db2=Db::connect('db2');
      $res=$db2->table('wx_payment')->order('paytime desc')->paginate(10);
      
      $this->assign('lists',$res);
      return $this->fetch('count/orderlist');

    }
    public function wxuserdetail()
    {   
    	// echo "<pre>";
    	$request=request();
    	$id=$request->get('id');
    	$where['id']=$id;
    	$db2=Db::connect('db3');
        $res=$db2->table('wx_userinfo')->where($where)->find();
        $res['instime']=date('Y-m-d:H-i-s',$res['instime']);
        $oid=$res['openid'];
        if($res['fid']==""){

           $res['fid']="无推荐人";
        }else{
           $wher['openid']=$res['fid'];
           $fres=$db2->table('wx_userinfo')->where($wher)->field('names')->find();
           $res['fid']=$fres['names'];
        }
        $owhere['openid']=$oid;
        $isbuy=$db2->table('wx_payment')->where($owhere)->find();
        if($isbuy){
          if($isbuy['pay_status']==2&&$isbuy['order_status']==2){
             $res['isbuy']="已支付";
          }else{

          	 $res['isbuy']="未支付";
          }
        }else{
           $res['isbuy']="未支付";
        }
        $xianwhere['ProvincesID']=$res['prov_id'];
        $xianres=$this->D('provinces')->field('ProvincesName,PID')->where($xianwhere)->find();
        $xianname=$xianres['ProvincesName'];
        $shiid=$xianres['PID'];
        
        $shiwhere['ProvincesID']=$shiid;
        $shires=$this->D('provinces')->field('ProvincesName,PID')->where($shiwhere)->find();
        $shiname=$shires['ProvincesName'];
        $shengid=$shires['PID'];

        $shengwhere['ProvincesID']=$shengid;
        $shengres=$this->D('provinces')->field('ProvincesName,PID')->where($shengwhere)->find();
        $shengname=$shengres['ProvincesName'];
        $location=$shengname.$shiname.$xianname;
        $res['location']=$location;

        $this->assign('detail',$res);
        
        $resall=$db2->table('wx_userinfo')->alias('ui')->where('usertype','neq',0)->field('ui.names,ui.usertype,ui.id,ui.tel,ui.status,ui.nickname,ui.fid,ui.openid,p.pay_status,p.order_status')->join('wx_payment p','ui.openid=p.openid','left')->select();
    
        $tree=$this->GetTree($resall,$oid,0);
        $this->assign('tree',$tree);
        $father_link=$this->getarr($resall);
        $one=$this->get_level_son($father_link,$oid,1);
        if($one){
          $cone=count($one);
          $this->assign('cone',$cone);
          $two=$this->get_level_son($father_link,$oid,2);
          if($two){
          	$ctwo=count($two);
            $this->assign('ctwo',$ctwo);
          	$three=$this->get_level_son($father_link,$oid,3);
          	if($three){
          	  $cthree=count($three);
              $this->assign('cthree',$cthree);
              $four=$this->get_level_son($father_link,$oid,4);
              if($four){
                $cfour=count($four);
                $this->assign('cfour',$cfour);
                $five=$this->get_level_son($father_link,$oid,5);
                if($five){
                   $cfive=count($five);
                   $this->assign('cfive',$cfive);
                   $six=$this->get_level_son($father_link,$oid,6);
                   if($six){
                     $csix=count($six);
                     $this->assign('csix',$csix);
                    
                   }
                }
              }
          	}
          }
        }
        
        return $this->fetch('wxuserdetail');
    }

    public function GetTree($arr,$pid,$step){
        global $tree;
        foreach($arr as $key=>$val) {
            if($val['fid'] == $pid) {
               $flg = str_repeat('I――I',$step);
               $val['names'] = $flg.$val['names'];
               $tree[] = $val;
               $this->GetTree($arr, $val['openid'] ,$step+1);
            }
        }
        return $tree;
    }
    public function modifystatus(){
    	$request=request();
    	$statusid=$request->post('id');
    	$uid=$request->post('userinfoid');
    	$where['id']=$uid;
    	$data['status']=$statusid;
    	$db2=Db::connect('db2');
    	$res=$db2->table('wx_userinfo')->where($where)->update($data);
    	if($res){
    	  $data['status']=1;
    	  $data['msg']="修改成功！";
    	}else{
          $data['status']=0;
    	  $data['msg']="修改失败！";

    	}
    	return $data;
    } 
    public function getarr($arr){
        
        foreach ($arr as $key => $value)
        {
           //$user_list[$value['openid']]=$value['id'];
           $father_link[$value['fid']][]=$value['openid'];
        }
        return $father_link;
    }
    public function get_level_son($father_link=array(),$user_id=0,$level=1)
    {
        $father_list=array($user_id);
    for ($i=0; $i < $level; $i++)
    {
        $tmp_father=array();
        foreach ($father_list as $key => $v)
        {
            if(isset($father_link[$v]))
            {
                $tmp_father=array_unique(array_merge($tmp_father,$father_link[$v]));//找子孙
            }
        }
        $father_list=$tmp_father;//将子孙赋值给父亲
    }
    return $father_list;
    }

    
}
