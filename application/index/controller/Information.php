<?php
namespace app\index\controller;

class Information extends Domain
{
    public function informationlist()
    {       
    	   
			return view('informationlist');
    }
    public function addinformation()
    {       
    	      $resall=$this->D('news_type')->select();
            $result=$this->GetTree($resall,0,0);          
            $this->assign('list',$result);

			 return $this->fetch('addinformation');
    }
    public function infoDetail()
    {       
    	    
			return view('infoDetail');
    }
    public function infoType()
    {       
            $where['fid']=0;
    	      $res=$this->D('news_type')->where($where)->select();
            $this->assign('first',$res);
            
            $resall=$this->D('news_type')->select();
            $result=$this->GetTree($resall,0,0);
            if($result){
               foreach($result as $k=>$v){
                  $result[$k]['instime']=date('Y-m-d',$v['instime']);


               }
            }
            
            $this->assign('list',$result);
            return $this->fetch('infoType');





    }
    private function GetTree($arr,$pid,$step){
        global $tree;
        foreach($arr as $key=>$val) {
            if($val['fid'] == $pid) {
               $flg = str_repeat('I――――',$step);
               $val['names'] = $flg.$val['names'];
               $tree[] = $val;
               $this->GetTree($arr , $val['id'] ,$step+1);
            }
        }
        return $tree;
    }
    public function addtype(){
            
            $request=request();

            $typename=$request->post('names');
            $select1=$request->post('select1');
            $select2=$request->post('select2');
    
            if($select1=="0"){
              
              $data['names']=$typename;
              $data['fid']=0;
              $data['instime']=time();
              $res=$this->D('news_type')->insert($data);
              if($res){
                 $dat['status']=1;
                 $dat['msg']="添加成功！";
              }else{
                 $dat['status']=0;
                 $dat['msg']="添加失败！";

              }

            }else{

                if($select2=="0"){
                   $data['names']=$typename;
                   $data['fid']=$select1;
                   $data['instime']=time();
                   $res=$this->D('news_type')->insert($data);
                    if($res){
                      $dat['status']=1;
                      $dat['msg']="添加成功！";
                    }else{
                      $dat['status']=0;
                      $dat['msg']="添加失败！";
                    }
                }else{
                    $data['names']=$typename;
                    $data['fid']=$select2;
                    $data['instime']=time();
                    $res=$this->D('news_type')->insert($data);
                    if($res){
                      $dat['status']=1;
                      $dat['msg']="添加成功！";
                    }else{
                      $dat['status']=0;
                      $dat['msg']="添加失败！";
                    }
                }
            }
            return $dat;


    }

    public function getsecond(){
        $request=request();
        $id=$request->post('id');
        $where['fid']=$id;
        $res=$this->D('news_type')->where($where)->select();
        if($res){
           $str="<option value='0'>同级分类</option>";
            foreach($res as $k=>$v){
                $str.="<option value=".$v['id'].">".$v['names']."</option>";

            }
        }else{

            $str="<option value='0'>同级分类</option>";
        }
        
      
        return $str;
    }
    public function addnews(){
        $request=request();
        $id=$request->post('id');
        $name=$request->post('name');
        $content=$request->post('content');
        $newcon=strip_tags($content);
        $intro=substr($newcon,0,60);
        $data['typeid']=$id;
        $data['titles']=$name;
        $data['conts']=$content;
        $data['intro']=$intro;
        $data['clicks']=0;
        $data['instime']=time();
        $data['isdel']=0;
        $res=$this->D('news')->insert($data);
        if($res){
           $dat['status']=1;
           $dat['msg']="添加资讯成功";
        }else{
           $dat['status']=0;
           $dat['msg']="添加资讯失败";
        }
        return $dat;
        
    }
    
}
