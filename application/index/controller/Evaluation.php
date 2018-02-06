<?php
namespace app\index\controller;
use think\Db;
class Evaluation extends Domain
{
    public function evaluationlist()
    {       
    	    
			return view('evaluationlist');
    }
    public function huolande()
    {       

            $request=request();
            $biaoti=$request->get('biaoti');
            $pageParam=array();
            if($biaoti){
              $this->assign('biaoti',$biaoti);
              $pageParam['query']['biaoti'] = $biaoti;
            }
            $res=Db::connect('db2')->name('zonghebaogao_infos')->where('type|zhuanye|zhiye','like',"%".$biaoti."%")->order('id desc')->paginate(15,false,$pageParam);
            $this->assign("data",$res);

            return view('huolande');
    }
    public function addhuolande(){

         
         return view('addhuolande');
    }
    public function pilianghuolanderuku(){

        vendor("PHPExcel.PHPExcel");
        $file=$_FILES;
        //print_R($file);exit;
        $filename=$file['files']['name'];
        $tmpfile=$file['files']['tmp_name'];
        $extension=strrchr($filename, '.');
        if($extension == '.xlsx') {
            $objReader =\PHPExcel_IOFactory::createReader('Excel2007');
            $objPHPExcel = $objReader->load($tmpfile, $encode = 'utf-8');
        }else if($extension == '.xls'){
            $objReader =\PHPExcel_IOFactory::createReader('Excel5');
            $objPHPExcel = $objReader->load($tmpfile, $encode = 'utf-8');
        }else{        
            echo "<script>alert('上传失败，只能上传excel文件!');history.go(-1)</script>";exit;
        }
        $arr = $objPHPExcel->getsheet(0)->toArray();   //转换为数组格式
        // print_R($arr);exit;
         $db=Db::connect('db2');
         $data=array();
         foreach($arr as $k=>$v){

            $data[$k]['type']=$v[0];
            $data[$k]['zhiye']=$v[1];
            $data[$k]['zhuanye']=$v[2];        
         }
         $i=0;
         foreach($data as $k=>$v){
            $res=$db->name('zonghebaogao_infos')->insert($v);
            if($res){
                $i++;
            }
         }
         
         echo "<script>alert('数据导入成功!');window.location.href='/index/evaluation/huolande'</script>";

         
        // if($hao==1){
        //    echo "<script>alert('数据导入成功!');window.location.href='/index/evaluation/huolande'</script>";
        // }else{

        //    echo "<script>alert('数据导入失败!');history.go(-1)</script>";exit;
        // }
    }
    public function huolanderuku(){

         $request=request();
         $type=$request->post('names');
         $zhiye=$request->post('achieve');
         $zhuanye=$request->post('finishschool');
         $data['type']=$type;
         $data['zhiye']=$zhiye;
         $data['zhuanye']=$zhuanye;
         $res=Db::connect('db2')->name('zonghebaogao_infos')->insert($data);
         if($res){
            $dat=1;
         }else{
            $dat=2;
         }
         return $dat;
    }
    public function piliangaddhuolande(){


         return view('piliangaddhuolande');
    }
    public function addevaluation()
    {       
    	    
			return view('addevaluation');
    }
    public function titlelist()
    {       
    	    
			return view('titlelist');
    }
    public function inithuolande(){
     
        $res=Db::connect('db2')->name('zonghebaogao_infos')->where('1=1')->delete();
        $data=array();
        
        if($res){
           $data['status']=1;
           $data['msg']="初始化数据成功！";  

        }else{
           $data['status']=0;
           $data['msg']="初始化数据失败！";
        }
        return $data;


    }
    public function huolandedetail(){

        $request=request();
        $id=$request->get('id');
        $where['id']=$id;
        $res=Db::connect('db2')->name('zonghebaogao_infos')->where($where)->find();
        
        $this->assign('data',$res);

        return view('huolandedetail');
    }

    public function huolandemodify(){

         $request=request();
         $id=$request->post('id');
         $type=$request->post('names');
         $zhiye=$request->post('achieve');
         $zhuanye=$request->post('finishschool');
         $where['id']=$id;
         $data['type']=$type;
         $data['zhiye']=$zhiye;
         $data['zhuanye']=$zhuanye;
         $res=Db::connect('db2')->name('zonghebaogao_infos')->where($where)->update($data);
         if($res){
            $dat=1;
         }else{
            $dat=2;
         }
         return $dat;
    }
    public function huolandedel(){
        $request=request();
        $id=$request->post('id');
        $where['id']=$id;
        $res=Db::connect('db2')->name('zonghebaogao_infos')->where($where)->delete();
        if($res){
            $dat['status']=1;
            $dat['msg']="删除成功";
        }else{
            $dat['status']=0;
            $dat['msg']="删除失败";
        }
        return $dat;
    }
}
