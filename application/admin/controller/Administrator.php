<?php
namespace app\admin\controller;

use library\Controller;
use think\Db;

/**
 * 管理中心
 * Class Administrator
 * @package app\admin\controller
 */
class Administrator extends Controller{
	
	/**
     * 视频列表	
     * @auth true
     * @menu true
     */
	 public function video(){
		return '视频列表';
	 }

	/**
     * 视频编辑
     * @auth true
     * @menu true
     */
	 public function videoupdate(){
		return '视频编辑';
	 }

	 /**
     * 上传商品
     * @auth true
     * @menu true
     */
	 public function uploadingvideo(){
		return '上传商品';
	 }

	 /**
     * 添加会员
     * @auth true
     * @menu true
     */
	 public function addvip(){
		return '添加会员';
	 }

	 /**
     * 会员管理
     * @auth true
     * @menu true
     */
	 public function adminvip(){
		return '会员管理';
	 }

	 /**
     * 绑定用户
     * @auth true
     * @menu true
     */
	 public function bindinguser(){
		return '绑定用户';
	 }

	 /**
     * 绑定代理
     * @auth true
     * @menu true
     */
	 public function bindingagency(){
		return '绑定代理';
	 }

	 /**
     * 添加设备
     * @auth true
     * @menu true
     */
	 public function addfacility(){
		return '添加设备';
	 }

	 /**
     * 地区管理
     * @auth true
     * @menu true
     */
	 public function region(){
		return '地区管理';
	 }

	 /**
     * 代理管理
     * @auth true
     * @menu true
     */
	 public function agency(){
		return '代理管理';
	 }

	 /**
     * 添加代理
     * @auth true
     * @menu true
     */
	 public function addagency(){
		return '添加代理';
	 }
}
?>