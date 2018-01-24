   <?php    
   if (is_file(__DIR__.'/oss/autoload.php')) {
            require_once  __DIR__.'/oss/autoload.php';
        }  

   // require  __DIR__.'/OSS/OssClient.php';
   // require   __DIR__.'/OSS/Core/OssException.php';
   use OSS\OssClient;
   use OSS\Core\OssException;
        
        /**
         * Created by PhpStorm.
         * User: crjy
         * Date: 2017/10/13
         * Time: 15:46
         */
        class OssInUe{
            public function __construct(){
        
            }
            function uploadToAliOSS($file,$fileType,$type){
                $entension = $fileType; //上传文件的后缀
                $newName = date('YmdHis').mt_rand(100000,999999).$entension;//上传到oss的文件名
                $accessKeyId = 'LTAIKU3s9BpRtu1j';//AK
                $accessKeySecret = 'hzR3f2aOTEcsF4m9KsOEqH39GHMH8o';//Secret
                $endpoint = 'oss-cn-beijing.aliyuncs.com';//外网域名
                //$endpoint = 'oss-cn-beijing-internal.aliyuncs.com';//内网域名
                $bucket= 'zhctest';//" <您使用的Bucket名字，注意命名规范>";
                $object = $type."/".$newName;//" <您使用的Object名字，注意命名规范>";
                $content = $file["tmp_name"];//上传的文件
                try {
                    $ossClient = new OssClient($accessKeyId, $accessKeySecret, $endpoint);
                    $ossClient->setTimeout(3600 /* seconds */);
                    $ossClient->setConnectTimeout(10 /* seconds */);
                    //$ossClient->putObject($bucket, $object, $content);
                    // 先把本地的example.jpg上传到指定$bucket, 命名为$object
                    $ossClient->uploadFile($bucket, $object, $content);
                    $signedUrl = $ossClient->signUrl($bucket, $object);
                    $path = explode('?',$signedUrl)[0];
                    $obj['status'] = true;
                    if($endpoint=="oss-cn-beijing.aliyuncs.com"){
                      $obj['path'] = $path;
                    }
                    if($endpoint=="oss-cn-beijing-internal.aliyuncs.com"){
                      $houpath=substr($path,51);
                      $newpath="http://".$bucket.".oss-cn-beijing.aliyuncs.com".$houpath;
                      $obj['path'] = $newpath;
                    }
                    
                } catch (OssException $e) {
                    $obj['status'] = false;
                    $obj['path'] = "";
                    print $e->getMessage();
                }
                return $obj;
            }
        }
http://zhctest.oss-cn-beijing-internal.aliyuncs.com/image/20180118153206516544.jpg