<?php
namespace app\index\controller;
use think\Controller;

use OSS\OssClient;
use OSS\Core\OssException;
class Up extends Controller
{   

    public function upload(){
      echo "<pre>";
                $file=$_FILES['upload'];
            
                //$entension = $fileType; //上传文件的后缀
                $newName=$file['name'];
                //$newName = date('YmdHis').mt_rand(100000,999999).".".$entension;//上传到oss的文件名
                $accessKeyId = 'LTAIKU3s9BpRtu1j';//AK
                $accessKeySecret = 'hzR3f2aOTEcsF4m9KsOEqH39GHMH8o';//Secret
                $endpoint = 'oss-cn-beijing.aliyuncs.com';//域名
                $bucket= 'zhctest';//" <您使用的Bucket名字，注意命名规范>";
                $object = "image/".$newName;//" <您使用的Object名字，注意命名规范>";
                $content = $file["tmp_name"];//上传的文件
       $ossClient = new OssClient($accessKeyId, $accessKeySecret, $endpoint);
       $res=$ossClient->uploadFile($bucket, $object, $content);
       
    }
    public function up(){

       return $this->fetch('up/up');


    }
    
}
