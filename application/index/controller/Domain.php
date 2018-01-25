<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
class Domain extends Controller {
    /* 权限认证 */
	public function _initialize(){
		//session不存在时，不允许直接访问
		if(!session('uid')){
			$this->redirect('Login/login');
		}
		
	}
}