<?php
namespace app\admin\controller;

use library\Controller;
use think\Db;

/**
 * 系统设置
 * Class Setup
 * @package app\admin\controller
 */
class Setup extends Controller{
	
	/**
     * 金额设置	
     * @auth true
     * @menu true
     */
	 public function moneyset(){
		return '金额设置';
	 }

	/**
     * 提现设置
     * @auth true
     * @menu true
     */
	 public function remindset(){
		return '提现设置';
	 }

	 /**
     * 绑定设置
     * @auth true
     * @menu true
     */
	 public function bindingset(){
		return '绑定设置';
	 }
}
?>