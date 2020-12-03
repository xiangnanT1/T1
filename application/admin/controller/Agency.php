<?php
namespace app\admin\controller;

use library\Controller;
use think\Db;

/**
 * 业务统计
 * Class Agency
 * @package app\admin\controller
 */
class Agency extends Controller{
	
	/**
     * 代理统计
     * @auth true
     * @menu true
     */
	 public function Agencystatistics(){
		return '代理统计';
	 }

	/**
     * 区域管理
     * @auth true
     * @menu true
     */
	 public function districtmanagement(){
		return '区域管理';
	 }
}
?>