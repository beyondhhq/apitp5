<?php
namespace app\index\controller;
use think\Db;
class Trans extends Domain
{   

    public function dotrans()
    {   
        

        $jiaoshirushishuo=$this->inser($this->xuan('teacher_xsczzd',"class=12 and kind=1","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'老师如是说'");
        echo $jiaoshirushishuo;echo "<br>";

        $xueshengshengyatansuo=$this->inser($this->xuan('d_mentality',"class=3","name as titles,intro,content as conts,time as instime,pict as imgs,looks as clicks"),"'学生生涯探索'");
        echo $xueshengshengyatansuo;echo "<br>";

        $xinlidinglvdaodu=$this->inser($this->xuan('d_mentality',"class=1","name as titles,intro,content as conts,time as instime,pict as imgs,looks as clicks,video"),"'心理定律导读'");
        echo $xinlidinglvdaodu;echo "<br>";

        $bangyangliliang=$this->inser($this->xuan('d_mentality',"class=2","name as titles,intro,content as conts,time as instime,pict as imgs,looks as clicks,video"),"'榜样力量'");
        echo $bangyangliliang;echo "<br>";

        $zhengcefenxi=$this->inser($this->xuan('strategy',"kind='自主招生备考方略' and cache_name='政策分析'","name as titles,intro,content as conts,upload_time as instime"),"'政策分析'");
        echo $zhengcefenxi;echo "<br>";

        $zhunbeiyaodian=$this->inser($this->xuan('strategy',"kind='自主招生备考方略' and cache_name='准备要点'","name as titles,intro,content as conts,upload_time as instime"),"'准备要点'");
        echo $zhunbeiyaodian;echo "<br>";

        $bishibeikao=$this->inser($this->xuan('strategy',"kind='自主招生备考方略' and stair_name='笔试备考'","name as titles,intro,content as conts,upload_time as instime"),"'笔试备考'");
        echo $bishibeikao;echo "<br>";

        $mianshizhunbei=$this->inser($this->xuan('strategy',"kind='自主招生备考方略' and cache_name='面试准备'","name as titles,intro,content as conts,upload_time as instime"),"'面试准备'");
        echo $mianshizhunbei;echo "<br>";

        $mianshixingshi=$this->inser($this->xuan('strategy',"kind='自主招生备考方略' and cache_name='面试形式'","name as titles,intro,content as conts,upload_time as instime"),"'面试形式'");
        echo $mianshixingshi;echo "<br>";

        $mianshijiqiao=$this->inser($this->xuan('strategy',"kind='自主招生备考方略' and cache_name='面试技巧'","name as titles,intro,content as conts,upload_time as instime"),"'面试技巧'");
        echo $mianshijiqiao;echo "<br>";

        $mianshishiti=$this->inser($this->xuan('strategy',"kind='自主招生备考方略' and cache_name='面试试题'","name as titles,intro,content as conts,upload_time as instime"),"'面试试题'");
        echo $mianshishiti;echo "<br>";

        $mianshianli=$this->inser($this->xuan('strategy',"kind='自主招生备考方略' and cache_name='面试案例'","name as titles,intro,content as conts,upload_time as instime"),"'面试案例'");
        echo $mianshianli;echo "<br>";

        $jingyanfenxiang=$this->inser($this->xuan('strategy',"kind='自主招生备考方略' and stair_name='经验分享'","name as titles,intro,content as conts,upload_time as instime"),"'经验分享'");
        echo $jingyanfenxiang;echo "<br>";

        $zizhuzhaoshengzixun=$this->inser($this->xuan('recruit_advisory',"kind=1 and plate=1","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'自主招生资讯'");
        echo $zizhuzhaoshengzixun;echo "<br>";

        $sanweiyitizhaoshengzixun=$this->inser($this->xuan('recruit_advisory',"kind=1 and plate=2","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'三位一体招生资讯'");
        echo $sanweiyitizhaoshengzixun;echo "<br>";

        $sanweiyitibeikaofanglue=$this->inser($this->xuan('recruit_advisory',"kind=2 and plate=2","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'三位一体备考方略'");
        echo $sanweiyitibeikaofanglue;echo "<br>";

        $yishuzhaoshengzixun=$this->inser($this->xuan('recruit_advisory',"kind=1 and plate=3","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'艺术招生资讯'");
        echo $yishuzhaoshengzixun;echo "<br>";

        $yishubeikaofanglue=$this->inser($this->xuan('recruit_advisory',"kind=2 and plate=1","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'艺术备考方略'");
        echo $yishubeikaofanglue;echo "<br>";

        $tiyuzhaoshengzixun=$this->inser($this->xuan('recruit_advisory',"kind=1 and plate=5","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'体育招生资讯'");
        echo $tiyuzhaoshengzixun;echo "<br>";

        $tiyubeikaofanglue=$this->inser($this->xuan('recruit_advisory',"kind=2 and plate=5","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'体育备考方略'");
        echo $tiyubeikaofanglue;echo "<br>";

        $chuguoliuxuezhaoshengzixun=$this->inser($this->xuan('recruit_advisory',"kind=1 and plate=6","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'出国留学招生资讯'");
        echo $chuguoliuxuezhaoshengzixun;echo "<br>";

        $chuguoliuxuebeikaofanglue=$this->inser($this->xuan('recruit_advisory',"kind=2 and plate=6","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'出国留学备考方略'");
        echo $chuguoliuxuebeikaofanglue;echo "<br>";

        $zhongwaihezuozhaoshengzixun=$this->inser($this->xuan('recruit_advisory',"kind=1 and plate=7","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'中外合作招生资讯'");
        echo $zhongwaihezuozhaoshengzixun;echo "<br>";

        $zhongwaihezuobeikaofanglue=$this->inser($this->xuan('recruit_advisory',"kind=2 and plate=7","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'中外合作备考方略'");
        echo $zhongwaihezuobeikaofanglue;echo "<br>";

        $gaozhidanzhaozhaoshengzixun=$this->inser($this->xuan('recruit_advisory',"kind=1 and plate=8","name as titles,simple as intro,content as conts,time as instime,pict as imgs"),"'高职单招招生资讯'");
        echo $gaozhidanzhaozhaoshengzixun;echo "<br>";

        $gaozhidanzhaojiedu=$this->inser($this->xuan('strategy',"kind='高职单招备考方略' and stair_name='高职单招解读'","name as titles,intro,content as conts,upload_time as instime"),"'高职单招解读'");
        echo $gaozhidanzhaojiedu;echo "<br>";

        $gaozhimianshizhunbei=$this->inser($this->xuan('strategy',"kind='高职单招备考方略' and cache_name='面试准备'","name as titles,intro,content as conts,upload_time as instime"),"'高职单招面试准备'");
        echo $gaozhimianshizhunbei;echo "<br>";

        $gaozhimianshijiqiao=$this->inser($this->xuan('strategy',"kind='高职单招备考方略' and cache_name='面试技巧'","name as titles,intro,content as conts,upload_time as instime"),"'高职单招面试技巧'");
        echo $gaozhimianshijiqiao;echo "<br>";

        $gaozhimianshichangjianwenti=$this->inser($this->xuan('strategy',"kind='高职单招备考方略' and cache_name='面试常见问题'","name as titles,intro,content as conts,upload_time as instime"),"'高职单招面试常见问题'");
        echo $gaozhimianshichangjianwenti;echo "<br>";

        $gaozhianlifenxiang=$this->inser($this->xuan('strategy',"kind='高职单招备考方略' and stair_name='案例分享'","name as titles,intro,content as conts,upload_time as instime"),"'高职单招案例分享'");
        echo $gaozhianlifenxiang;echo "<br>";

        $quanguozixun=$this->inser($this->xuan('p_volunteer_encyclopedia_three',"kind=3","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'全国资讯'");
        echo $quanguozixun;echo "<br>";
        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='北京'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'北京'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='天津'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'天津'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='河北'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'河北'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='山西'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'山西'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='内蒙古'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'内蒙古'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='辽宁'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'辽宁'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='吉林'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'吉林'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='黑龙江'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'黑龙江'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='上海'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'上海'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='江苏'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'江苏'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='浙江'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'浙江'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='安徽'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'安徽'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='福建'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'福建'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='江西'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'江西'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='山东'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'山东'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='河南'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'河南'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='湖北'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'湖北'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='湖南'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'湖南'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='广东'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'广东'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='广西'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'广西'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='海南'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'海南'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='重庆'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'重庆'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='四川'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'四川'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='贵州'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'贵州'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='云南'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'云南'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='西藏'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'西藏'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='陕西'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'陕西'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='甘肃'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'甘肃'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='青海'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'青海'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='宁夏'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'宁夏'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='新疆'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'新疆'");
        echo $beijing;echo "<br>";

        $beijing=$this->inser($this->xuan('p_volunteer_encyclopedia_two',"kind=2 and province='港澳'","name as titles,simple as intro,content as conts,time as instime,pict as imgs,source"),"'港澳'");
        echo $beijing;echo "<br>";


        


        

    }
    public function xuan($tablename,$where,$field){
       $db2=Db::connect('db2');
       $res=$db2->name($tablename)->where($where)->field($field)->select();
       return $res;
    }
    public function inser($array,$name){
       $tp=$this->D('news_type')->field('id');
       
       if($array){
         $id=$tp->where("names=$name")->find();
         foreach($array as $k=>$v){
            $array[$k]['instime']= strtotime($v['instime']);
            $array[$k]['typeid']= $id['id'];
            $array[$k]['ispush']= 1;
            
         }
         $res=$this->D('news')->insertAll($array);
         if($res){
            $msg=$name."数据迁移成功！";
         }else{
            $msg=$name."数据迁移失败！";
         }
       }else{

            $msg=$name."无数据可迁移";
       }
       return $msg;


    }
    public function clearall()
    {
       $res=Db::execute('truncate news');
       if($res==0){
          echo "数据清除成功";
       }else{
   
          echo "数据清除失败";
       }
    }
  
}
