<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
class Up extends Controller
{   
    
    public function card(){
      
        set_time_limit(0);
        vendor("PHPExcel.PHPExcel");
     
        //上传文件的地址
        $filename = 'E:\\2.xlsx';

        //判断截取文件
        $extension = 'xlsx';

        //区分上传文件格式
        if($extension == 'xlsx') {
            $objReader =\PHPExcel_IOFactory::createReader('Excel2007');
            $objPHPExcel = $objReader->load($filename, $encode = 'utf-8');
        }else if($extension == 'xls'){
            $objReader =\PHPExcel_IOFactory::createReader('Excel5');
            $objPHPExcel = $objReader->load($filename, $encode = 'utf-8');
        }
        $arr = $objPHPExcel->getsheet(0)->toArray();   //转换为数组格式
        $db=Db::connect('db2');
        foreach($arr as $k=>$v){
           $data['isuse']=1;
           $where['card_number']=$v[0];
           $res=$db->name('activation')->where($where)->update($data);
           $count=$k+1;
           if($res){
             echo "第".$count."条数据设置成功";echo "<br>";

           }else{

             echo "第".$count."条数据设置失败";echo "<br>";
           }
        }
        
    }
   
    
}
