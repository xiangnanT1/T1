<?php
namespace app\admin\controller;

use library\Controller;
use think\Db;

/**
 * 交易中心
 * Class Deal
 * @package app\admin\controller
 */
class Deal extends Controller{
	
	/**
     * 分会员	
     * @auth true
     * @menu true
     */
	 public function vipadd(){
		return '分会员';
	 }

	/**
     * 区域管理
     * @auth true
     * @menu true
     */
	 public function area(){
		return '区域管理';
	 }

	 /**
     * 申请列表
     * @auth true
     * @menu true
     */
	 public function applyfor(){
		return '申请列表';
	 }

	 /**
     * 财务统计
     * @auth true
     * @menu true
     */
	 public function financial(){
		return '财务统计';
	 }
}
?>