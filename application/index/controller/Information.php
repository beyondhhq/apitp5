<?php
namespace app\index\controller;

class Information extends Domain
{
    public function informationlist()
    {       
            $request=request();
            $select=$request->get('select');   
            $biaoti=$request->get('biaoti');
            $pageParam=array();
            if($select){
              $this->assign('select',$select);
              $sonres=$this->getAllIds($select);        
              $where['n.typeid']=array("in",$sonres);
              $pageParam['query']['select'] = $select;
            }
            if($biaoti){
              $this->assign('biaoti',$biaoti);
              $where['n.titles']=array("LIKE", '%' . $biaoti . '%');
              $pageParam['query']['biaoti'] = $biaoti;
            }
            $whe['isdel']=0;
            $resall=$this->D('news_type')->where($whe)->select();
            $result=$this->GetTree($resall,0,0);          
            $this->assign('list',$result);
            
    	      $where['n.isdel']=0;
            $res=$this->D('news')->alias('n')->where($where)->field('n.*,nt.names as typename')->join('news_type nt','n.typeid=nt.id','left')->order('n.instime desc')->paginate(15,false,$pageParam)->each(function($item, $key){
                     $item['instime'] = date('Y-m-d',$item['instime']);
                     return $item;
                     });
     
            $this->assign('lists',$res);
            return $this->fetch('informationlist');
    }
    public function addinformation()
    {       
            $where['isdel']=0;
    	    $resall=$this->D('news_type')->where($where)->select();
            $result=$this->GetTree($resall,0,0);          
            $this->assign('list',$result);

			return $this->fetch('addinformation');
    }
    public function addvedio()
    {       
            $where['isdel']=0;                                    
            $resall=$this->D('news_type')->where($where)->select();
            $result=$this->GetTree($resall,0,0);          
            $this->assign('list',$result);

            return $this->fetch('addvedio');
    }
    public function infomodify()
    {       
    	    $request=request();
            $id=$request->get('id');
            $where['id']=$id;
            $res=$this->D('news')->where($where)->find();
            if($res){
               $res['instime']=date('Y-m-d:H-i-s',$res['instime']);
            }
       
            $this->assign('detail',$res);
            $this->assign('newsid',$id);

            $resall=$this->D('news_type')->select();
            $result=$this->GetTree($resall,0,0);          
            $this->assign('list',$result);
			return view('infomodify');
    }
    public function infodetail(){
          
            $request=request();
            $id=$request->get('id');
            $where['id']=$id;
            $res=$this->D('news')->where($where)->find();
            if($res){
               $res['instime']=date('Y-m-d:H-i-s',$res['instime']);
            }
       
            $this->assign('detail',$res);
            $this->assign('newsid',$id);
            return view('infodetail');
    }
    public function infoType()
    {       
            $where['fid']=0;
            $where['isdel']=0;
    	      $res=$this->D('news_type')->where($where)->select();
            $this->assign('first',$res);
            $wher['isdel']=0;
            $resall=$this->D('news_type')->where($wher)->select();
            $result=$this->GetTree($resall,0,0);
            if($result){
               foreach($result as $k=>$v){
                  $result[$k]['instime']=date('Y-m-d',$v['instime']);
        

               }
            }
            $this->assign('list',$result);
            return $this->fetch('infotype');

    }
    private function GetTree($arr,$pid,$step){
        global $tree;
        foreach($arr as $key=>$val) {
            if($val['fid'] == $pid) {
               $flg = str_repeat('I―――',$step);
               $val['name'] = $flg.$val['names'];
               $tree[] = $val;
               $this->GetTree($arr , $val['id'] ,$step+1);
            }
        }
        return $tree;
    }
    public function modify(){
        $request=request();
        $id=$request->post('id');
        $newname=$request->post('newname');
        $where['id']=$id;
        $data['names']=$newname;
        $res=$this->D('news_type')->where($where)->update($data);
        if($res){
           $dat['status']=1; 
           $dat['msg']="修改成功！";

        }else{
           $dat['status']=0;
           $dat['msg']="修改失败！";

        }
        return $dat;

    }
    public function del(){
        $request=request();
        $id=$request->post('id');
        $res=$this->getson($id);
        if($res==1){
           $dat['status']=0;
           $dat['msg']="此分类下有子分类不能直接删除！";
        }else{
           $data['isdel']=1;
           $where['id']=$id;
           $result=$this->D('news_type')->where($where)->update($data);
           if($result){
             $dat['status']=1;
             $dat['msg']="删除成功！";
           }else{
             $dat['status']=0;
             $dat['msg']="删除失败！";
           }  
        }
        return $dat;
    }
    public function getson($id){
        $where['fid']=$id;
        $res=$this->D('news_type')->where($where)->find();
        if($res){
           $result=1;
        }else{
           $result=0;
        }
        return $result;

    }
    public function addtype(){
            
            $request=request();

            $typename=$request->post('names');
            $select1=$request->post('select1');
            $select2=$request->post('select2');
            $select3=$request->post('select3');
            if($select1=="10000"){
              
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

                if($select2=="10000"){
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

                    if($select3=="10000"){
                       

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


                    }else{
                       
                       $data['names']=$typename;
                       $data['fid']=$select3;
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
            }
            return $dat;


    }

    public function getsecond(){
        $request=request();
        $id=$request->post('id');
        $where['fid']=$id;
        $where['isdel']=0;
        $res=$this->D('news_type')->where($where)->select();
        if($res){
           $str="<option value='10000'>同级分类</option>";
            foreach($res as $k=>$v){
                $str.="<option value=".$v['id'].">".$v['names']."</option>";

            }
        }else{

            $str="<option value='10000'>同级分类</option>";
        }
        
      
        return $str;
    }
    public function pushnews(){
           $request=request();
           $id=$request->post('id');
           $dat['ispush']=1;
           $where['id']=$id;
           $res=$this->D('news')->where($where)->update($dat);
           if($res){
              $data['status']=1;
              $data['msg']="发布成功！";
           }else{
              $data['status']=0;
              $data['msg']="发布失败！";
           }

           return $data;



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
        $data['ispush']=0;
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
    public function addvedioinfo(){
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
    public function gainews(){
        $request=request();
        $id=$request->post('id');
        $newsid=$request->post('newsid');
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
        $where['id']=$newsid;
        $res=$this->D('news')->where($where)->update($data);
        if($res){
           $dat['status']=1;
           $dat['msg']="修改资讯成功";
        }else{
           $dat['status']=0;
           $dat['msg']="修改资讯失败";
        }
        return $dat;
        
    }
    public function delnews(){
           
           $request=request();
           $id=$request->post('id');
           $dat['isdel']=1;
           $where['id']=$id;
           $res=$this->D('news')->where($where)->update($dat);
           if($res){
              $data['status']=1;
              $data['msg']="删除成功！";
           }else{
              $data['status']=0;
              $data['msg']="删除失败！";
           }

           return $data;

    }
    public function getAllIds($id)
   {  
     global $son;
     $where['isdel']=0;
     $where['fid']=$id;
     $res = $this->D('news_type')->where($where)->select();
     if($res){
       foreach($res as $k=>$v){
           $son[]=$v['id'];
           $this->getAllIds($v['id']);
       }
       $son[]=$id;
       return $son;
     }else{
       return $id;

     }
    
   }
   public function test(){
      echo "<pre>";
      $res=$this->getAllIds(24);
      if(is_array($res)){
         $cid=implode($res,","); 
      }else{
        $cid=$res;
      }
      
      echo  $cid;
   }
   public function returncon(){
       
      $request=request();
      $id=$request->post('id');
      $where['id']=$id;
      $res=$this->D('news_type')->where($where)->field('tablename')->find();
      $tablename=$res['tablename'];
      if($tablename){
        if($tablename=="teacher_zyfz"||$tablename=="teacher_xsczzd"){



        }

      }else{
        $data=0;
        
      }
      return $data;
   }
     
}
