<?php
namespace app\api\controller;
use think\Controller;
class Domain extends Controller {
    protected function _initialize(){
        header("Access-Control-Allow-Origin: *");//跨域访问
    }
}