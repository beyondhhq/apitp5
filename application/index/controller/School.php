<?php
namespace app\index\controller;

class School extends Domain
{
    public function schoollist()
    {       
    	    $res=$this->D('schools')->alias('s')->join('provinces p','s.provid=p.provincesid')->field('s.*,p.ProvincesName as proname')->order('instime desc')->select();
            if($res){
               foreach($res as $k=>$v){
                   $res[$k]['instime']=date("Y-m-d",$v['instime']);
               }
            }
            
            $this->assign('data',$res);
            return $this->fetch('schoollist');
    }
    public function classlist()
    {       
    	    
			return view('classlist');
    }
    public function addschool()
    {       
    	    $where['PID']=0;
            $res=$this->D('provinces')->where($where)->select();
            $this->assign('data',$res);		
            return $this->fetch('addschool');
    }
    public function getcity(){
            $request=request();
            $proid=$request->post('proid');
            $where['PID']=$proid;
            $res=$this->D('provinces')->where($where)->select();
            $str="<option value='1'>请选择</option>";
            foreach($res as $k=>$v){
                $str.="<option value=".$v['ProvincesID'].">".$v['ProvincesName']."</option>";

            }
      
            return $str;
            
    }
    public function getzone(){
            $request=request();
            $cityid=$request->post('cityid');
            $where['PID']=$cityid;
            $res=$this->D('provinces')->where($where)->select();
            $str="<option value='1'>请选择</option>";
            foreach($res as $k=>$v){
                $str.="<option value=".$v['ProvincesID'].">".$v['ProvincesName']."</option>";

            }
      
            return $str;
            
    }
    public function confirmadd(){
            $request=request();
    	    $schname=$request->post('schname');
    	    $provid=$request->post('provid');
    	    $cityid=$request->post('cityid');
    	    $zoneid=$request->post('zoneid');
    	    $url=$request->post('url');
            $data['names']=$schname;
            $data['provid']=$provid;
            $data['cityid']=$cityid;
            $data['zoneid']=$zoneid;
            $data['instime']=time();
            $data['logourl']=$url;
            $res=$this->D('schools')->insert($data);
            if($res){
               return 1;
            }else{
               return 0;
            }
    }
    public function schoolDetail()
    {       
            $request=request();
            $id=$request->get('id');
            $where['id']=$id;
            $res=$this->D('schools')->alias('s')->join('provinces p','s.provid=p.provincesid')->where($where)->field('s.*,p.ProvincesName as proname')->find();
            if($res){
               $res['instime']=date("Y-m-d",$res['instime']);
            }
            $this->assign('baseinfo',$res);
            //返回学校的学期信息
            $wher['schid']=$id;
            $tres=$this->D('schools_term')->where($wher)->select();
            $this->assign('terminfo',$tres);
            //返回学校的教室信息
            $cres=$this->D('schools_room')->where($wher)->select();
            $this->assign('classinfo',$cres);
            //返回学校的配置信息
            $pres=$this->D('schools_conf')->where($wher)->select();
            $this->assign('peizhi',$pres);
            return $this->fetch('schooldetail');
    }
}
