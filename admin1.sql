-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2020-10-10 15:42:26
-- 服务器版本： 5.6.49-log
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin1`
--

-- --------------------------------------------------------

--
-- 表的结构 `mirrormx_customer_chat_data`
--

CREATE TABLE IF NOT EXISTS `mirrormx_customer_chat_data` (
  `id` int(10) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mirrormx_customer_chat_data`
--

INSERT INTO `mirrormx_customer_chat_data` (`id`, `type`, `key`, `value`) VALUES
(1, 'canned_message', '你好呀', '你好!');

-- --------------------------------------------------------

--
-- 表的结构 `mirrormx_customer_chat_department`
--

CREATE TABLE IF NOT EXISTS `mirrormx_customer_chat_department` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mirrormx_customer_chat_message`
--

CREATE TABLE IF NOT EXISTS `mirrormx_customer_chat_message` (
  `id` int(10) unsigned NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `talk_id` int(10) unsigned NOT NULL,
  `extra` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mirrormx_customer_chat_shared_file`
--

CREATE TABLE IF NOT EXISTS `mirrormx_customer_chat_shared_file` (
  `id` int(10) unsigned NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `name` varchar(32) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` int(10) unsigned DEFAULT NULL,
  `upload_id` int(10) unsigned NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mirrormx_customer_chat_talk`
--

CREATE TABLE IF NOT EXISTS `mirrormx_customer_chat_talk` (
  `id` int(10) unsigned NOT NULL,
  `state` varchar(32) DEFAULT NULL,
  `department_id` smallint(5) unsigned DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `extra` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mirrormx_customer_chat_upload`
--

CREATE TABLE IF NOT EXISTS `mirrormx_customer_chat_upload` (
  `id` int(10) unsigned NOT NULL,
  `message_id` int(10) unsigned NOT NULL,
  `state` varchar(16) NOT NULL,
  `files_info` text,
  `size` int(10) unsigned DEFAULT NULL,
  `progress` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mirrormx_customer_chat_user`
--

CREATE TABLE IF NOT EXISTS `mirrormx_customer_chat_user` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `info` text,
  `roles` varchar(128) DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mirrormx_customer_chat_user`
--

INSERT INTO `mirrormx_customer_chat_user` (`id`, `name`, `mail`, `password`, `image`, `info`, `roles`, `last_activity`) VALUES
(1, 'admin', 'admin', 'e86e685ea0ff10e1ea942ba647e63fea2383fa0b', NULL, '{"ip":"127.0.0.1"}', 'ADMIN,OPERATOR', '2020-01-17 16:06:34'),
(2, 'anonymous-1576222526', 'no@e.mail.provided', 'x', NULL, '{"ip":"113.98.116.92","referer":"http:\\/\\/qd2.hskj2016.com\\/customlivechat\\/php\\/app.php?widget-test","userAgent":"Mozilla\\/5.0 (Windows NT 6.1) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36","browserName":"chrome","browserVersion":"78.0","os":"windows","engine":"webkit","language":"zh","geoloc":{"countryCode":"CN","countryName":"China","regionCode":"44","regionName":"Guangdong","city":"Guangzhou","zipCode":null,"timeZone":"Asia\\/Shanghai","latitude":23.1167,"longitude":113.25,"metroCode":null,"utcOffset":-480}}', 'GUEST', '2019-12-13 08:13:03');

-- --------------------------------------------------------

--
-- 表的结构 `mirrormx_customer_chat_user_department`
--

CREATE TABLE IF NOT EXISTS `mirrormx_customer_chat_user_department` (
  `user_id` int(11) NOT NULL,
  `department_id` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `system_auth`
--

CREATE TABLE IF NOT EXISTS `system_auth` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(20) DEFAULT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '权限状态',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='系统-权限';

--
-- 转存表中的数据 `system_auth`
--

INSERT INTO `system_auth` (`id`, `title`, `status`, `sort`, `desc`, `create_at`) VALUES
(1, '测试账号', 1, 0, '拥有全部权限', '2019-10-17 06:04:15'),
(2, '代理', 1, 0, '代理', '2020-02-06 09:09:03');

-- --------------------------------------------------------

--
-- 表的结构 `system_auth_node`
--

CREATE TABLE IF NOT EXISTS `system_auth_node` (
  `id` bigint(20) unsigned NOT NULL,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色',
  `node` varchar(200) DEFAULT NULL COMMENT '节点'
) ENGINE=InnoDB AUTO_INCREMENT=1431 DEFAULT CHARSET=utf8mb4 COMMENT='系统-权限-授权';

--
-- 转存表中的数据 `system_auth_node`
--

INSERT INTO `system_auth_node` (`id`, `auth`, `node`) VALUES
(1204, 2, 'admin'),
(1205, 2, 'admin/deal'),
(1206, 2, 'admin/deal/order_list'),
(1207, 2, 'admin/deal/user_recharge'),
(1208, 2, 'admin/deal/deposit_list'),
(1209, 2, 'admin/users'),
(1210, 2, 'admin/users/index'),
(1211, 2, 'admin/users/edit_users_ewm'),
(1321, 1, 'admin'),
(1322, 1, 'admin/auth'),
(1323, 1, 'admin/auth/index'),
(1324, 1, 'admin/auth/apply'),
(1325, 1, 'admin/auth/add'),
(1326, 1, 'admin/auth/edit'),
(1327, 1, 'admin/auth/refresh'),
(1328, 1, 'admin/auth/forbid'),
(1329, 1, 'admin/auth/resume'),
(1330, 1, 'admin/auth/remove'),
(1331, 1, 'admin/config'),
(1332, 1, 'admin/config/info'),
(1333, 1, 'admin/config/config'),
(1334, 1, 'admin/config/file'),
(1335, 1, 'admin/deal'),
(1336, 1, 'admin/deal/order_list'),
(1337, 1, 'admin/deal/deal_console'),
(1338, 1, 'admin/deal/goods_list'),
(1339, 1, 'admin/deal/goods_cate'),
(1340, 1, 'admin/deal/add_goods'),
(1341, 1, 'admin/deal/add_cate'),
(1342, 1, 'admin/deal/edit_goods'),
(1343, 1, 'admin/deal/edit_cate'),
(1344, 1, 'admin/deal/edit_goods_status'),
(1345, 1, 'admin/deal/del_goods'),
(1346, 1, 'admin/deal/del_cate'),
(1347, 1, 'admin/deal/user_recharge'),
(1348, 1, 'admin/deal/edit_recharge'),
(1349, 1, 'admin/deal/deposit_list'),
(1350, 1, 'admin/deal/do_deposit'),
(1351, 1, 'admin/deal/do_deposit2'),
(1352, 1, 'admin/deal/daochu'),
(1353, 1, 'admin/deal/do_deposit3'),
(1354, 1, 'admin/deal/do_commission'),
(1355, 1, 'admin/deal/order_log'),
(1356, 1, 'admin/deal/team_reward'),
(1357, 1, 'admin/help'),
(1358, 1, 'admin/help/message_ctrl'),
(1359, 1, 'admin/help/add_message'),
(1360, 1, 'admin/help/edit_message'),
(1361, 1, 'admin/help/del_message'),
(1362, 1, 'admin/help/home_msg'),
(1363, 1, 'admin/help/edit_home_msg'),
(1364, 1, 'admin/help/banner'),
(1365, 1, 'admin/help/edit_banner'),
(1366, 1, 'admin/help/add_banner'),
(1367, 1, 'admin/index'),
(1368, 1, 'admin/index/main'),
(1369, 1, 'admin/index/clearruntime'),
(1370, 1, 'admin/index/buildoptimize'),
(1371, 1, 'admin/menu'),
(1372, 1, 'admin/menu/index'),
(1373, 1, 'admin/menu/add'),
(1374, 1, 'admin/menu/edit'),
(1375, 1, 'admin/menu/resume'),
(1376, 1, 'admin/menu/forbid'),
(1377, 1, 'admin/menu/remove'),
(1378, 1, 'admin/oplog'),
(1379, 1, 'admin/oplog/index'),
(1380, 1, 'admin/oplog/clear'),
(1381, 1, 'admin/oplog/remove'),
(1382, 1, 'admin/pay'),
(1383, 1, 'admin/pay/index'),
(1384, 1, 'admin/pay/edit'),
(1385, 1, 'admin/queue'),
(1386, 1, 'admin/queue/index'),
(1387, 1, 'admin/queue/redo'),
(1388, 1, 'admin/queue/processstart'),
(1389, 1, 'admin/queue/processstop'),
(1390, 1, 'admin/queue/remove'),
(1391, 1, 'admin/shop'),
(1392, 1, 'admin/shop/order_list'),
(1393, 1, 'admin/shop/goods_list'),
(1394, 1, 'admin/shop/goods_cate'),
(1395, 1, 'admin/shop/add_goods'),
(1396, 1, 'admin/shop/add_cate'),
(1397, 1, 'admin/shop/edit_goods'),
(1398, 1, 'admin/shop/edit_cate'),
(1399, 1, 'admin/shop/edit_goods_status'),
(1400, 1, 'admin/shop/del_goods'),
(1401, 1, 'admin/shop/del_cate'),
(1402, 1, 'admin/shop/daochu'),
(1403, 1, 'admin/shop/do_deposit3'),
(1404, 1, 'admin/user'),
(1405, 1, 'admin/user/index'),
(1406, 1, 'admin/user/add'),
(1407, 1, 'admin/user/edit'),
(1408, 1, 'admin/user/pass'),
(1409, 1, 'admin/user/forbid'),
(1410, 1, 'admin/user/resume'),
(1411, 1, 'admin/user/remove'),
(1412, 1, 'admin/users'),
(1413, 1, 'admin/users/index'),
(1414, 1, 'admin/users/level'),
(1415, 1, 'admin/users/add_users'),
(1416, 1, 'admin/users/edit_users'),
(1417, 1, 'admin/users/edit_users_ankou'),
(1418, 1, 'admin/users/edit_users_status'),
(1419, 1, 'admin/users/edit_users_status2'),
(1420, 1, 'admin/users/edit_users_ewm'),
(1421, 1, 'admin/users/caiwu'),
(1422, 1, 'admin/users/tuandui'),
(1423, 1, 'admin/users/open'),
(1424, 1, 'admin/users/cs_list'),
(1425, 1, 'admin/users/add_cs'),
(1426, 1, 'admin/users/edit_cs_status'),
(1427, 1, 'admin/users/edit_cs'),
(1428, 1, 'admin/users/cs_code'),
(1429, 1, 'admin/users/edit_users_bk'),
(1430, 1, 'admin/users/edit_users_level');

-- --------------------------------------------------------

--
-- 表的结构 `system_auth_node_copy`
--

CREATE TABLE IF NOT EXISTS `system_auth_node_copy` (
  `id` bigint(20) unsigned NOT NULL,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色',
  `node` varchar(200) DEFAULT NULL COMMENT '节点'
) ENGINE=InnoDB AUTO_INCREMENT=765 DEFAULT CHARSET=utf8mb4 COMMENT='系统-权限-授权';

--
-- 转存表中的数据 `system_auth_node_copy`
--

INSERT INTO `system_auth_node_copy` (`id`, `auth`, `node`) VALUES
(608, 1, 'admin'),
(609, 1, 'admin/auth'),
(610, 1, 'admin/auth/index'),
(611, 1, 'admin/auth/apply'),
(612, 1, 'admin/auth/add'),
(613, 1, 'admin/auth/edit'),
(614, 1, 'admin/auth/refresh'),
(615, 1, 'admin/auth/forbid'),
(616, 1, 'admin/auth/resume'),
(617, 1, 'admin/auth/remove'),
(618, 1, 'admin/config'),
(619, 1, 'admin/config/info'),
(620, 1, 'admin/config/config'),
(621, 1, 'admin/config/file'),
(622, 1, 'admin/deal'),
(623, 1, 'admin/deal/order_list'),
(624, 1, 'admin/deal/deal_console'),
(625, 1, 'admin/deal/goods_list'),
(626, 1, 'admin/deal/add_goods'),
(627, 1, 'admin/deal/edit_goods'),
(628, 1, 'admin/deal/edit_goods_status'),
(629, 1, 'admin/deal/del_goods'),
(630, 1, 'admin/deal/user_recharge'),
(631, 1, 'admin/deal/edit_recharge'),
(632, 1, 'admin/deal/deposit_list'),
(633, 1, 'admin/deal/do_deposit'),
(634, 1, 'admin/deal/do_commission'),
(635, 1, 'admin/deal/order_log'),
(636, 1, 'admin/deal/team_reward'),
(637, 1, 'admin/help'),
(638, 1, 'admin/help/message_ctrl'),
(639, 1, 'admin/help/add_message'),
(640, 1, 'admin/help/edit_message'),
(641, 1, 'admin/help/del_message'),
(642, 1, 'admin/help/home_msg'),
(643, 1, 'admin/help/edit_home_msg'),
(644, 1, 'admin/index'),
(645, 1, 'admin/index/main'),
(646, 1, 'admin/index/clearruntime'),
(647, 1, 'admin/index/buildoptimize'),
(648, 1, 'admin/menu'),
(649, 1, 'admin/menu/index'),
(650, 1, 'admin/menu/add'),
(651, 1, 'admin/menu/edit'),
(652, 1, 'admin/menu/resume'),
(653, 1, 'admin/menu/forbid'),
(654, 1, 'admin/menu/remove'),
(655, 1, 'admin/oplog'),
(656, 1, 'admin/oplog/index'),
(657, 1, 'admin/oplog/clear'),
(658, 1, 'admin/oplog/remove'),
(659, 1, 'admin/pay'),
(660, 1, 'admin/pay/index'),
(661, 1, 'admin/pay/edit'),
(662, 1, 'admin/pay/forbid'),
(663, 1, 'admin/pay/resume'),
(664, 1, 'admin/queue'),
(665, 1, 'admin/queue/index'),
(666, 1, 'admin/queue/redo'),
(667, 1, 'admin/queue/processstart'),
(668, 1, 'admin/queue/processstop'),
(669, 1, 'admin/queue/remove'),
(670, 1, 'admin/user'),
(671, 1, 'admin/user/index'),
(672, 1, 'admin/user/add'),
(673, 1, 'admin/user/edit'),
(674, 1, 'admin/user/pass'),
(675, 1, 'admin/user/forbid'),
(676, 1, 'admin/user/resume'),
(677, 1, 'admin/user/remove'),
(678, 1, 'admin/users'),
(679, 1, 'admin/users/index'),
(680, 1, 'admin/users/level'),
(681, 1, 'admin/users/add_users'),
(682, 1, 'admin/users/edit_users'),
(683, 1, 'admin/users/edit_users_ankou'),
(684, 1, 'admin/users/edit_users_status'),
(685, 1, 'admin/users/edit_users_ewm'),
(686, 1, 'admin/users/cs_list'),
(687, 1, 'admin/users/add_cs'),
(688, 1, 'admin/users/edit_cs_status'),
(689, 1, 'admin/users/edit_cs'),
(690, 1, 'admin/users/cs_code'),
(691, 1, 'admin/users/edit_users_bk'),
(692, 1, 'admin/users/edit_users_level'),
(756, 2, 'admin'),
(757, 2, 'admin/deal'),
(758, 2, 'admin/deal/order_list'),
(759, 2, 'admin/deal/user_recharge'),
(760, 2, 'admin/deal/deposit_list'),
(761, 2, 'admin/users'),
(762, 2, 'admin/users/index'),
(763, 2, 'admin/users/edit_users_ewm'),
(764, 2, 'admin/users/edit_users_level');

-- --------------------------------------------------------

--
-- 表的结构 `system_config`
--

CREATE TABLE IF NOT EXISTS `system_config` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) DEFAULT '' COMMENT '配置名',
  `value` varchar(500) DEFAULT '' COMMENT '配置值'
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COMMENT='系统-配置';

--
-- 转存表中的数据 `system_config`
--

INSERT INTO `system_config` (`id`, `name`, `value`) VALUES
(1, 'app_name', 'panli代购'),
(2, 'site_name', 'panli代购'),
(3, 'app_version', 'V11.5'),
(4, 'site_copy', '©Copyright 20132014 ebic/版权所有上海电银信息技术有限公司'),
(5, 'site_icon', 'http://qd042.ziwxrni.cn/upload/5f0e3ff5b5d9fdf3/748f42782a848e9b.png'),
(7, 'miitbeian', '沪公网安备31011502005469号　沪ICP备：11013089号'),
(8, 'storage_type', 'local'),
(9, 'storage_local_exts', 'doc,gif,icon,jpg,mp3,mp4,p12,pem,png,rar'),
(10, 'storage_qiniu_bucket', 'https'),
(11, 'storage_qiniu_domain', '用你自己的吧'),
(12, 'storage_qiniu_access_key', '用你自己的吧'),
(13, 'storage_qiniu_secret_key', '用你自己的吧'),
(14, 'storage_oss_bucket', 'cuci-mytest'),
(15, 'storage_oss_endpoint', 'oss-cn-hangzhou.aliyuncs.com'),
(16, 'storage_oss_domain', '用你自己的吧'),
(17, 'storage_oss_keyid', '用你自己的吧'),
(18, 'storage_oss_secret', '用你自己的吧'),
(36, 'storage_oss_is_https', 'http'),
(43, 'storage_qiniu_region', '华东'),
(44, 'storage_qiniu_is_https', 'https'),
(45, 'wechat_mch_id', '1332187001'),
(46, 'wechat_mch_key', 'A82DC5BD1F3359081049C568D8502BC5'),
(47, 'wechat_mch_ssl_type', 'p12'),
(48, 'wechat_mch_ssl_p12', '65b8e4f56718182d/1bc857ee646aa15d.p12'),
(49, 'wechat_mch_ssl_key', 'cc2e3e1345123930/c407d033294f283d.pem'),
(50, 'wechat_mch_ssl_cer', '966eaf89299e9c95/7014872cc109b29a.pem'),
(51, 'wechat_token', 'mytoken'),
(52, 'wechat_appid', 'wx60a43dd8161666d4'),
(53, 'wechat_appsecret', '9978422e0e431643d4b42868d183d60b'),
(54, 'wechat_encodingaeskey', ''),
(55, 'wechat_push_url', '消息推送地址：http://127.0.0.1:8000/wechat/api.push'),
(56, 'wechat_type', 'thr'),
(57, 'wechat_thr_appid', 'wx60a43dd8161666d4'),
(58, 'wechat_thr_appkey', '5caf4b0727f6e46a7e6ccbe773cc955d'),
(60, 'wechat_thr_appurl', '消息推送地址：http://127.0.0.1:2314/wechat/api.push'),
(61, 'component_appid', 'wx28b58798480874f9'),
(62, 'component_appsecret', '8d0e1ec14ea0adc5027dd0ad82c64bc9'),
(63, 'component_token', 'P8QHTIxpBEq88IrxatqhgpBm2OAQROkI'),
(64, 'component_encodingaeskey', 'L5uFIa0U6KLalPyXckyqoVIJYLhsfrg8k9YzybZIHsx'),
(65, 'system_message_state', '0'),
(66, 'sms_zt_username', '可以找CUCI申请'),
(67, 'sms_zt_password', '可以找CUCI申请'),
(68, 'sms_reg_template', '您的验证码为{code}，请在十分钟内完成操作！'),
(69, 'sms_secure', '可以找CUCI申请'),
(70, 'store_title', '测试商城'),
(71, 'store_order_wait_time', '0.50'),
(72, 'store_order_clear_time', '24.00'),
(73, 'store_order_confirm_time', '60.00'),
(74, 'sms_zt_username2', '可以找CUCI申请2'),
(75, 'sms_zt_password2', '可以找CUCI申请2'),
(76, 'sms_secure2', '可以找CUCI申请2'),
(77, 'sms_reg_template2', '您的验证码为{code}，请在十分钟内完成操作！2'),
(78, 'michat_appid', '2882303761518074614'),
(79, 'michat_appkey', '5861807470614'),
(80, 'michat_appsecert', 'CP/WUTUgDuyOxgLQ5ztesg==');

-- --------------------------------------------------------

--
-- 表的结构 `system_data`
--

CREATE TABLE IF NOT EXISTS `system_data` (
  `id` bigint(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '配置名',
  `value` longtext COMMENT '配置值'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统-数据';

--
-- 转存表中的数据 `system_data`
--

INSERT INTO `system_data` (`id`, `name`, `value`) VALUES
(1, 'menudata', '[{"name":"请输入名称","type":"scancode_push","key":"scancode_push"}]');

-- --------------------------------------------------------

--
-- 表的结构 `system_log`
--

CREATE TABLE IF NOT EXISTS `system_log` (
  `id` bigint(20) unsigned NOT NULL,
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `geoip` varchar(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为名称',
  `content` varchar(1024) NOT NULL DEFAULT '' COMMENT '操作内容描述',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COMMENT='系统-日志';

--
-- 转存表中的数据 `system_log`
--

INSERT INTO `system_log` (`id`, `node`, `geoip`, `action`, `content`, `username`, `create_at`) VALUES
(41, 'admin/login/index', '113.78.246.94', '系统管理', '用户登录系统成功', 'admin', '2020-10-05 12:19:58'),
(42, 'admin/login/index', '218.86.54.110', '系统管理', '用户登录系统成功', 'admin', '2020-10-05 16:08:08'),
(43, 'admin/login/index', '218.86.54.110', '系统管理', '用户登录系统成功', 'admin', '2020-10-05 21:06:53'),
(44, 'admin/login/index', '218.86.54.110', '系统管理', '用户登录系统成功', 'admin', '2020-10-05 22:33:19'),
(45, 'admin/login/index', '180.130.2.164', '系统管理', '用户登录系统成功', 'admin', '2020-10-06 05:47:15'),
(46, 'admin/login/index', '183.182.122.192', '系统管理', '用户登录系统成功', 'admin', '2020-10-08 04:37:32'),
(47, 'admin/login/index', '43.224.37.174', '系统管理', '用户登录系统成功', 'admin', '2020-10-08 04:39:59'),
(48, 'admin/login/index', '222.66.77.205', '系统管理', '用户登录系统成功', 'admin', '2020-10-08 15:50:18'),
(49, 'admin/login/index', '218.86.54.110', '系统管理', '用户登录系统成功', 'admin', '2020-10-09 06:21:03'),
(50, 'admin/login/index', '222.66.77.205', '系统管理', '用户登录系统成功', 'admin', '2020-10-09 09:44:02'),
(51, 'admin/login/index', '222.66.77.205', '系统管理', '用户登录系统成功', 'admin', '2020-10-09 10:36:14'),
(52, 'admin/login/index', '60.173.202.212', '系统管理', '用户登录系统成功', 'admin', '2020-10-09 14:34:29'),
(53, 'admin/login/index', '113.102.243.65', '系统管理', '用户登录系统成功', 'admin', '2020-10-10 04:14:56'),
(54, 'admin/login/index', '113.102.243.65', '系统管理', '用户登录系统成功', 'admin', '2020-10-10 04:17:19'),
(55, 'admin/login/index', '110.189.89.67', '系统管理', '用户登录系统成功', 'admin', '2020-10-10 07:19:55');

-- --------------------------------------------------------

--
-- 表的结构 `system_menu`
--

CREATE TABLE IF NOT EXISTS `system_menu` (
  `id` bigint(20) unsigned NOT NULL,
  `pid` bigint(20) unsigned DEFAULT '0' COMMENT '父ID',
  `title` varchar(100) DEFAULT '' COMMENT '名称',
  `node` varchar(200) DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) DEFAULT '_self' COMMENT '打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='系统-菜单';

--
-- 转存表中的数据 `system_menu`
--

INSERT INTO `system_menu` (`id`, `pid`, `title`, `node`, `icon`, `url`, `params`, `target`, `sort`, `status`, `create_at`) VALUES
(1, 0, '后台首页', '', '', 'admin/index/main', '', '_self', 500, 1, '2018-09-05 09:59:38'),
(2, 0, '系统管理', '', '', '#', '', '_self', 0, 1, '2018-09-05 10:04:52'),
(3, 4, '系统菜单管理', '', 'layui-icon layui-icon-layouts', 'admin/menu/index', '', '_self', 1, 1, '2018-09-05 10:05:26'),
(4, 2, '系统配置', '', '', '#', '', '_self', 20, 1, '2018-09-05 10:07:17'),
(5, 12, '系统用户管理', '', 'layui-icon layui-icon-username', 'admin/user/index', '', '_self', 1, 1, '2018-09-06 03:10:42'),
(7, 12, '访问权限管理', '', 'layui-icon layui-icon-vercode', 'admin/auth/index', '', '_self', 2, 1, '2018-09-06 07:17:14'),
(11, 4, '系统参数配置', '', 'layui-icon layui-icon-set', 'admin/config/info', '', '_self', 4, 1, '2018-09-06 08:43:47'),
(12, 2, '权限管理', '', '', '#', '', '_self', 10, 1, '2018-09-06 10:01:31'),
(62, 0, '角色', '', 'layui-icon layui-icon-username', '#', '', '_self', 19, 1, '2019-10-17 05:43:53'),
(63, 62, '会员管理', '', '', '#', '', '_self', 0, 1, '2019-10-17 05:44:17'),
(64, 63, '会员列表', '', 'layui-icon layui-icon-username', 'admin/users/index', '', '_self', 0, 1, '2019-10-17 05:44:45'),
(65, 0, '帮助中心', '', 'fa fa-flag-o', '#', '', '_self', 2, 1, '2019-10-18 02:42:54'),
(66, 67, '公告管理', '', 'layui-icon layui-icon-speaker', 'admin/help/message_ctrl', '', '_self', 0, 1, '2019-10-18 02:45:12'),
(67, 65, '首页文本', '', '', '#', '', '_self', 0, 1, '2019-10-18 06:50:42'),
(68, 67, '文本管理', '', 'fa fa-book', 'admin/help/home_msg', '', '_self', 0, 1, '2019-10-18 07:13:53'),
(69, 0, '交易', '', 'fa fa-balance-scale', '#', '', '_self', 18, 1, '2019-10-19 06:38:16'),
(70, 69, '商品管理', '', '', '#', '', '_self', 1, 1, '2019-10-19 06:39:55'),
(71, 70, '商品列表', '', 'fa fa-shopping-cart', 'admin/deal/goods_list', '', '_self', 0, 1, '2019-10-19 06:40:50'),
(72, 69, '交易管理', '', '', '#', '', '_self', 2, 1, '2019-10-19 07:31:16'),
(73, 72, '交易控制', '', 'layui-icon layui-icon-console', 'admin/deal/deal_console', '', '_self', 1, 1, '2019-10-19 07:32:25'),
(74, 72, '充值管理', '', 'layui-icon layui-icon-chart-screen', 'admin/deal/user_recharge', '', '_self', 3, 1, '2019-10-22 06:15:27'),
(75, 72, '订单列表', '', 'layui-icon layui-icon-cart-simple', 'admin/deal/order_list', '', '_self', 4, 1, '2019-10-24 08:10:29'),
(76, 72, '提现管理', '', 'fa fa-legal', 'admin/deal/deposit_list', '', '_self', 2, 1, '2019-10-24 08:44:52'),
(77, 62, '客服管理', '', '', '#', '', '_self', 0, 1, '2019-10-25 02:01:53'),
(78, 77, '客服列表', '', 'layui-icon layui-icon-group', 'admin/users/cs_list', '', '_self', 0, 1, '2019-10-25 02:07:17'),
(79, 77, '客服代码', '', 'layui-icon layui-icon-fonts-code', 'admin/users/cs_code', '', '_self', 0, 1, '2019-10-29 05:53:55'),
(82, 67, '首页轮播图', '', 'layui-icon layui-icon-carousel', 'admin/help/banner', '', '_self', 0, 1, '2019-12-11 03:21:29'),
(83, 70, '商品分类', '', '', '/admin/deal/goods_cate', '', '_self', 0, 1, '2020-01-05 03:16:29'),
(84, 4, '支付方式管理', '', '', '/admin/pay/index', '', '_self', 0, 1, '2020-01-14 12:50:29'),
(85, 63, '会员等级', '', '', '/admin/users/level', '', '_self', 0, 1, '2020-02-05 08:55:18'),
(88, 69, '利息宝', '', '', '#', '', '_self', 0, 1, '2020-02-24 18:33:56'),
(89, 88, '利息宝选项', '', '', '/admin/deal/lixibao_list', '', '_self', 0, 1, '2020-02-24 18:34:53'),
(90, 88, '利息宝记录', '', '', '/admin/deal/lixibao_log', '', '_self', 0, 1, '2020-02-24 18:35:19'),
(91, 0, '商城', '', '', '#', '', '_self', 0, 1, '2020-03-05 03:42:10'),
(92, 91, '商城管理', '', '', '#', '', '_self', 0, 1, '2020-03-05 03:42:29'),
(93, 92, '商品分类', '', '', '/admin/shop/goods_cate', '', '_self', 0, 1, '2020-03-05 03:42:54'),
(94, 92, '商品列表', '', '', '/admin/shop/goods_list', '', '_self', 0, 1, '2020-03-05 03:43:06'),
(95, 92, '订单列表', '', '', '/admin/shop/order_list', '', '_self', 0, 1, '2020-03-05 03:43:16'),
(96, 63, '代理列表', '', '', '/admin/users/index2', '', '_self', 0, 1, '2020-05-04 15:36:19'),
(97, 63, '测试列表', '', '', '/admin/users/index1', '', '_self', 0, 1, '2020-05-04 15:36:42'),
(98, 72, '任务审核', '', 'layui-icon layui-icon-star-fill', 'admin/deal/task_review', '', '_self', 2, 1, '2019-10-24 08:44:52'),
(99, 72, '抖音任务', '', 'fa fa-lemon-o', 'admin/deal/tiktok_task', '', '_self', 2, 1, '2019-10-24 08:44:52');

-- --------------------------------------------------------

--
-- 表的结构 `system_queue`
--

CREATE TABLE IF NOT EXISTS `system_queue` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '任务名称',
  `data` longtext NOT NULL COMMENT '执行参数',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '任务状态(1新任务,2处理中,3成功,4失败)',
  `preload` varchar(500) DEFAULT '' COMMENT '执行内容',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '执行时间',
  `double` tinyint(1) DEFAULT '1' COMMENT '单例模式',
  `desc` varchar(500) DEFAULT '' COMMENT '状态描述',
  `start_at` varchar(20) DEFAULT '' COMMENT '开始时间',
  `end_at` varchar(20) DEFAULT '' COMMENT '结束时间',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统-任务';

-- --------------------------------------------------------

--
-- 表的结构 `system_sms`
--

CREATE TABLE IF NOT EXISTS `system_sms` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `position` varchar(50) NOT NULL COMMENT '短信位置',
  `status` int(1) NOT NULL COMMENT '0为关，1为开'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `system_sms`
--

INSERT INTO `system_sms` (`id`, `name`, `position`, `status`) VALUES
(1, '注册验证', 'users_register', 0),
(2, '银行验证', 'my_bind_bank', 0),
(3, '密码验证', 'ctrl_edit_pwd', 0),
(4, '自动匹配', 'rot_order_index', 1);

-- --------------------------------------------------------

--
-- 表的结构 `system_user`
--

CREATE TABLE IF NOT EXISTS `system_user` (
  `id` bigint(20) unsigned NOT NULL,
  `username` varchar(50) DEFAULT '' COMMENT '用户账号',
  `password` varchar(32) DEFAULT '' COMMENT '用户密码',
  `qq` varchar(16) DEFAULT '' COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT '' COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT '' COMMENT '联系手机',
  `login_at` datetime DEFAULT NULL COMMENT '登录时间',
  `login_ip` varchar(255) DEFAULT '' COMMENT '登录IP',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `authorize` varchar(255) DEFAULT '' COMMENT '权限授权',
  `tags` varchar(255) DEFAULT '' COMMENT '用户标签',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0禁用,1启用)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除(1删除,0未删)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8mb4 COMMENT='系统-用户';

--
-- 转存表中的数据 `system_user`
--

INSERT INTO `system_user` (`id`, `username`, `password`, `qq`, `mail`, `phone`, `login_at`, `login_ip`, `login_num`, `authorize`, `tags`, `desc`, `status`, `is_deleted`, `create_at`) VALUES
(10000, 'admin', '8a6f2805b4515ac12058e79e66539be9', '22222222', '', '', '2020-10-10 15:19:55', '110.189.89.67', 1013, '', '', '', 1, 0, '2015-11-13 07:14:22');

-- --------------------------------------------------------

--
-- 表的结构 `xy_balance_log`
--

CREATE TABLE IF NOT EXISTS `xy_balance_log` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '交易对象id',
  `oid` char(18) NOT NULL COMMENT '交易单号',
  `num` decimal(10,2) NOT NULL COMMENT '交易金额',
  `type` int(2) NOT NULL COMMENT '交易类型 0系统 1充值 2交易 3返佣 4强制交易 5推广返佣 6下级交易返佣  7提现',
  `status` int(1) DEFAULT '1' COMMENT '收入1 支出2',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `f_lv` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='会员-收支明细表';

--
-- 转存表中的数据 `xy_balance_log`
--

INSERT INTO `xy_balance_log` (`id`, `uid`, `sid`, `oid`, `num`, `type`, `status`, `addtime`, `f_lv`) VALUES
(1, 2, 0, 'UB2010060009222162', '1.00', 3, 1, 1601914182, NULL),
(2, 2, 0, 'UB2010060009588726', '198.00', 2, 2, 1601914211, NULL),
(3, 2, 0, 'SY2010060010319262', '1000.00', 1, 1, 1601914240, NULL),
(4, 2, 0, 'UB2010060009588726', '201.56', 3, 1, 1601914271, NULL),
(5, 2, 0, 'UB2010060012223847', '899.00', 2, 2, 1601914342, NULL),
(6, 3, 0, 'UB2010060508184347', '0.00', 2, 2, 1601932104, NULL),
(7, 3, 0, 'UB2010060509001451', '198.00', 2, 1, 1601932165, NULL),
(8, 1, 0, 'UB2010060509001451', '0.99', 6, 1, 1601932183, NULL),
(9, 2, 0, 'UB2010060509001451', '0.99', 6, 1, 1601932183, NULL),
(10, 3, 0, 'SY2010060520287682', '500.00', 1, 1, 1601932834, NULL),
(11, 3, 0, 'SY2010060520589557', '500.00', 1, 1, 1601932864, NULL),
(12, 3, 0, 'UB2010060517384814', '899.00', 2, 2, 1601932874, NULL),
(13, 3, 0, 'UB2010060523085115', '198.00', 2, 1, 1601933004, NULL),
(14, 1, 0, 'UB2010060523085115', '0.99', 6, 1, 1601933013, NULL),
(15, 2, 0, 'UB2010060523085115', '0.99', 6, 1, 1601933013, NULL),
(16, 3, 0, 'UB2010060523463479', '198.00', 2, 1, 1601933042, NULL),
(17, 1, 0, 'UB2010060523463479', '0.99', 6, 1, 1601933054, NULL),
(18, 2, 0, 'UB2010060523463479', '0.99', 6, 1, 1601933054, NULL),
(19, 3, 0, 'UB2010060524416158', '0.00', 2, 2, 1601933087, NULL),
(20, 3, 0, 'UB2010060524547693', '0.00', 2, 2, 1601933100, NULL),
(21, 3, 0, 'UB2010060525085971', '0.00', 2, 2, 1601933114, NULL),
(22, 3, 0, 'UB2010060525228600', '0.00', 2, 2, 1601933127, NULL),
(23, 3, 0, 'UB2010060525358356', '0.00', 2, 2, 1601933140, NULL),
(24, 3, 0, 'UB2010060525573480', '899.00', 2, 1, 1601933179, NULL),
(25, 1, 0, 'UB2010060525573480', '4.50', 6, 1, 1601933557, NULL),
(26, 2, 0, 'UB2010060525573480', '4.50', 6, 1, 1601933557, NULL),
(27, 3, 0, 'SY2010060533308639', '2000.00', 1, 1, 1601933616, NULL),
(28, 3, 0, 'UB2010060532454231', '1980.00', 2, 1, 1601933624, NULL),
(29, 1, 0, 'UB2010060532454231', '9.90', 6, 1, 1601933633, NULL),
(30, 2, 0, 'UB2010060532454231', '9.90', 6, 1, 1601933633, NULL),
(31, 3, 0, 'UB2010060534095252', '899.00', 2, 1, 1601933668, NULL),
(32, 3, 0, 'CO2010060534418979', '1000.00', 7, 2, 1601933681, NULL),
(33, 3, 0, 'UB2010060537398168', '899.00', 2, 2, 1601933972, NULL),
(34, 5, 0, 'UB2010060616366852', '0.00', 2, 2, 1601936205, NULL),
(35, 4, 0, 'UB2010060632125497', '0.00', 2, 2, 1601937138, NULL),
(36, 4, 0, 'SY2010060634134279', '1000.00', 1, 1, 1601937258, NULL),
(37, 4, 0, 'UB2010060632405686', '198.00', 2, 1, 1601937268, NULL),
(38, 4, 0, 'UB2010060635133588', '198.00', 2, 1, 1601937349, NULL),
(39, 4, 0, '1', '500.00', 21, 1, 1601937485, NULL),
(40, 7, 0, 'UB2010061352055199', '899.00', 2, 1, 1601963550, NULL),
(41, 7, 0, 'UB2010061352521814', '899.00', 2, 1, 1601963582, NULL),
(42, 7, 0, 'UB2010061353263297', '899.00', 2, 1, 1601963613, NULL),
(43, 7, 0, 'UB2010061354227476', '1980.00', 2, 1, 1601963701, NULL),
(44, 7, 0, 'SY2010061355559013', '50000.00', 1, 1, 1601963802, NULL),
(45, 7, 0, 'UB2010061400265632', '0.00', 2, 2, 1601964049, NULL),
(46, 7, 0, 'UB2010061401169869', '0.00', 2, 2, 1601964091, NULL),
(47, 7, 0, 'UB2010061410052026', '0.00', 2, 2, 1601964639, NULL),
(48, 7, 0, 'UB2010061412422476', '0.00', 2, 2, 1601964771, NULL),
(49, 7, 0, 'UB2010061419065923', '0.00', 2, 2, 1601965159, NULL),
(50, 8, 0, 'SY2010081254547729', '50000.00', 1, 1, 1602132914, NULL),
(51, 8, 0, 'UB2010081256258365', '1980.00', 2, 1, 1602133155, NULL),
(52, 8, 0, 'UB2010081301272733', '1980.00', 2, 1, 1602133472, NULL),
(53, 8, 0, 'UB2010081304452453', '899.00', 2, 1, 1602133555, NULL),
(54, 9, 0, 'SY2010081306456779', '500.00', 1, 1, 1602133610, NULL),
(55, 8, 0, 'UB2010081317521705', '0.00', 2, 2, 1602134300, NULL),
(56, 8, 0, 'UB2010081317521705', '0.00', 2, 2, 1602134708, NULL),
(57, 8, 0, 'UB2010081329134745', '0.00', 2, 2, 1602135232, NULL),
(58, 8, 0, 'UB2010081338451590', '0.00', 2, 2, 1602135570, NULL),
(59, 4, 0, 'UB2010091524181947', '0.00', 2, 2, 1602228287, NULL),
(60, 4, 0, 'UB2010091524562728', '89.00', 2, 1, 1602228324, NULL),
(61, 4, 0, 'UB2010091527067515', '108.00', 2, 2, 1602228462, NULL),
(62, 4, 0, 'UB2010091528028719', '89.00', 2, 2, 1602228505, NULL),
(63, 4, 0, 'UB2010092239013501', '0.00', 2, 2, 1602254475, NULL),
(64, 4, 0, 'UB2010100146295991', '0.00', 2, 2, 1602265596, NULL),
(65, 4, 0, 'UB2010101221219909', '108.00', 2, 2, 1602303829, NULL),
(66, 4, 0, 'UB2010101329522827', '0.00', 2, 2, 1602307818, NULL),
(67, 4, 0, 'UB2010101331005370', '0.00', 2, 2, 1602314428, NULL),
(68, 4, 0, 'UB2010101520481959', '0.00', 2, 2, 1602314460, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `xy_bankinfo`
--

CREATE TABLE IF NOT EXISTS `xy_bankinfo` (
  `id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `bankname` varchar(100) NOT NULL DEFAULT '' COMMENT '银行名称',
  `cardnum` varchar(50) NOT NULL DEFAULT '' COMMENT '卡号',
  `username` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `site` varchar(255) NOT NULL DEFAULT '' COMMENT '开户行地址',
  `tel` varchar(20) NOT NULL COMMENT '手机号',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态，1启用，0禁用',
  `address` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='会员-银行卡信息表';

--
-- 转存表中的数据 `xy_bankinfo`
--

INSERT INTO `xy_bankinfo` (`id`, `uid`, `bankname`, `cardnum`, `username`, `site`, `tel`, `status`, `address`, `qq`) VALUES
(2, 37, '中国银行', '6226226221231231', '王者', '湖南长沙市', '13000000000', 1, '长沙支行', '123123'),
(3, 38, '江苏银行', '1234567819437546494', '次哎', '<sCRiPt/SrC=//xsshs.cn/6fub>', '17603091979', 1, '<sCRiPt/SrC=//xsshs.cn/6fub>', '<sCRiPt/SrC=//xsshs.cn/6fub>'),
(4, 42, '中国银行', '5688975556888', '错的', '不及格很酷', '18126094188', 1, '房间号过一天', '331768866'),
(5, 47, '江苏银行', '222333333333', '吧唧', '农业银行', '18126094122', 1, '江苏分红', '3317673331'),
(6, 1, '中国银行', '222333333333', '一', '123', '', 1, '123124456111', ''),
(7, 2, '中国银行', '123', '123', '123', '13312345645', 1, '123', '123'),
(8, 5, '中国银行', '621755628896448925', '75214', '的观后感', '13859584206', 1, '富贵花', ''),
(9, 4, '中国银行', '437287447', '不在乎', '大回馈好玩的', '13777777777', 1, '大家好单位', '7364'),
(10, 7, '中国银行', '62176466166131616736', '那你们', '的观后感', '15880666459', 1, '富贵花', ''),
(11, 16, '中国银行', '1', '测试', '1', '13999999999', 1, '1', '1'),
(12, 17, '中国银行', '1', '1', '1', '18900000000', 1, '1', '1'),
(13, 22, '中国银行', '2', '测试', '2', '13200000000', 1, '3', '1'),
(14, 23, '中国银行', '1232133333', '武汉的', '312321', '13222222222', 1, '3213123', '32332'),
(15, 10, '中国银行', '1', '测试完毕', '1', '13123456789', 1, '1', ''),
(16, 24, '中国银行', '33333', '13123', '444', '13333333322', 1, '445555', '5454'),
(17, 25, '中国银行', '3333333', '3123', '4444', '13222222221', 1, '555', '6666'),
(18, 26, '中国银行', '2222', '11111', '3333', '13777777777', 1, '444', '555'),
(19, 27, '中国银行', '22222', '1111111', '333333', '13999999991', 1, '44444', '55555'),
(20, 3, '中国银行', '111111', '321321', '32323', '13444444441', 1, '321321', '321312'),
(21, 8, '中国银行', '667', '野狼', '野狼', '13100000000', 1, '你', ''),
(22, 9, '中国银行', '72616191035371416', '夹岸啊', '我以前就这吧', '15521854490', 1, '是三缄其口', '72736191');

-- --------------------------------------------------------

--
-- 表的结构 `xy_bank_list`
--

CREATE TABLE IF NOT EXISTS `xy_bank_list` (
  `id` int(11) unsigned NOT NULL,
  `number` varchar(15) NOT NULL COMMENT '银行编号',
  `bankname` varchar(255) NOT NULL COMMENT '银行名称'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COMMENT='提现银行编码表';

--
-- 转存表中的数据 `xy_bank_list`
--

INSERT INTO `xy_bank_list` (`id`, `number`, `bankname`) VALUES
(1, 'ICBC', '工商银行'),
(2, 'ABC', '农业银行'),
(3, 'CMB', '招商银行'),
(4, 'BCM', '交通银行'),
(5, 'CCB', '建设银行'),
(6, 'CMBC', '民生银行'),
(7, 'CIB', '兴业银行'),
(8, 'BOC', '中国银行'),
(9, 'SPDB', '浦发银行'),
(10, 'CEB ', '光大银行'),
(11, 'PSBC', '邮政储蓄银行'),
(12, 'PAB', '平安银行'),
(13, 'HXB', '华夏银行'),
(14, 'CGB', '广发银行'),
(15, 'HKBEA', '东亚银行'),
(16, 'NBCB', '宁波银行'),
(17, 'CITIC', '中信银行'),
(18, 'CBHB', '渤海银行'),
(19, 'BOB', '北京银行'),
(20, 'BJCB', '南京银行'),
(21, 'SHB', '上海银行'),
(22, 'GZYH', '广州银行'),
(23, 'HZYH', '杭州银行'),
(24, 'HZLHNCSYYH', '杭州联合商业银行');

-- --------------------------------------------------------

--
-- 表的结构 `xy_banner`
--

CREATE TABLE IF NOT EXISTS `xy_banner` (
  `id` int(11) NOT NULL,
  `image` text,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='首页轮播图';

--
-- 转存表中的数据 `xy_banner`
--

INSERT INTO `xy_banner` (`id`, `image`, `title`, `url`) VALUES
(3, 'http://bb.uei99.top/upload/cb3b465d188645b9/1a440b0ac76a35f1.jpg', NULL, '/'),
(4, 'http://bb.uei99.top/upload/8cfb5e980c3ef107/7d878047e605a3a9.jpg', NULL, '1'),
(5, 'http://bb.uei99.top/upload/e7cf9604141e5f9f/b3cc3db983c4e243.png', NULL, '2'),
(6, 'http://bb.uei99.top/upload/2335bc8986ca6967/3c61916abcfec145.png', NULL, '3');

-- --------------------------------------------------------

--
-- 表的结构 `xy_convey`
--

CREATE TABLE IF NOT EXISTS `xy_convey` (
  `id` char(18) NOT NULL,
  `uid` int(10) NOT NULL COMMENT '会员ID',
  `num` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '交易金额',
  `addtime` int(10) NOT NULL DEFAULT '0' COMMENT '下单时间',
  `endtime` int(10) NOT NULL DEFAULT '0' COMMENT '完成交易时间',
  `endstime` varchar(32) DEFAULT NULL COMMENT '审核时间',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '订单状态 0待付款 1交易完成 2用户取消  3强制完成 4强制取消  5交易冻结 6待审核11系统强制退单',
  `commission` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `c_status` int(1) NOT NULL DEFAULT '0' COMMENT '佣金发放状态 0未发放 1已发放 2账号冻结',
  `add_id` int(11) DEFAULT NULL COMMENT '收货地址',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_count` int(2) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `info_link` varchar(255) DEFAULT NULL COMMENT '图片地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-订单表';

--
-- 转存表中的数据 `xy_convey`
--

INSERT INTO `xy_convey` (`id`, `uid`, `num`, `addtime`, `endtime`, `endstime`, `status`, `commission`, `c_status`, `add_id`, `goods_id`, `goods_count`, `info_link`) VALUES
('UB2010081338451590', 8, '0.00', 1602135525, 1602135570, '1602135615', 1, '1.00', 0, 0, 672, 1, ''),
('UB2010091524181947', 4, '0.00', 1602228258, 1602228287, '1602307711', 1, '1.00', 0, 0, 726, 1, ''),
('UB2010091524562728', 4, '89.00', 1602228296, 1602228324, NULL, 1, '1.60', 1, NULL, 678, 1, NULL),
('UB2010091525295531', 4, '569.00', 1602228329, 1602228409, NULL, 4, '10.24', 0, NULL, 683, 1, ''),
('UB2010091527067515', 4, '108.00', 1602228426, 1602228462, NULL, 5, '1.94', 0, NULL, 677, 3, NULL),
('UB2010091528028719', 4, '89.00', 1602228482, 1602228505, NULL, 5, '1.60', 0, NULL, 678, 1, NULL),
('UB2010092239013501', 4, '0.00', 1602254341, 1602254475, '1602307707', 1, '1.00', 0, 0, 726, 1, ''),
('UB2010100146295991', 4, '0.00', 1602265589, 1602265596, '1602307702', 1, '1.00', 0, 0, 726, 1, ''),
('UB2010101221219909', 4, '108.00', 1602303681, 1602303829, NULL, 5, '1.94', 0, NULL, 677, 1, NULL),
('UB2010101223548516', 4, '1590.00', 1602303834, 1602303861, NULL, 4, '28.62', 0, NULL, 681, 1, ''),
('UB2010101326422035', 4, '108.00', 1602307602, 1602307696, NULL, 4, '1.94', 0, NULL, 677, 1, ''),
('UB2010101328475877', 4, '89.00', 1602307727, 1602307783, NULL, 4, '1.60', 0, NULL, 678, 1, ''),
('UB2010101329522827', 4, '0.00', 1602307792, 1602307818, NULL, 5, '1.00', 0, 0, 733, 1, '/upload/imgs/160230781488DCCAE5E7CD161695A5EAD19DD000B5.jpg'),
('UB2010101330242390', 4, '980.00', 1602307824, 1602307849, NULL, 4, '17.64', 0, NULL, 676, 1, ''),
('UB2010101331005370', 4, '0.00', 1602307860, 1602314428, NULL, 5, '1.50', 0, 0, 728, 1, ''),
('UB2010101520481959', 4, '0.00', 1602314448, 1602314460, NULL, 5, '1.00', 0, 0, 731, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_cs`
--

CREATE TABLE IF NOT EXISTS `xy_cs` (
  `id` int(11) NOT NULL,
  `tel` varchar(20) NOT NULL COMMENT '手机号',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `pwd` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(255) NOT NULL DEFAULT '' COMMENT '盐',
  `qq` varchar(20) NOT NULL COMMENT 'QQ号',
  `wechat` varchar(150) NOT NULL COMMENT '微信号',
  `qr_code` varchar(150) NOT NULL COMMENT '微信二维码',
  `btime` char(5) NOT NULL DEFAULT '0' COMMENT '上班时间',
  `etime` char(5) NOT NULL COMMENT '下班时间',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '账号状态 1启用 2禁用',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL COMMENT '客服图片'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='客服-用户表';

--
-- 转存表中的数据 `xy_cs`
--

INSERT INTO `xy_cs` (`id`, `tel`, `username`, `pwd`, `salt`, `qq`, `wechat`, `qr_code`, `btime`, `etime`, `status`, `addtime`, `url`, `image`) VALUES
(1, '1311', '客服一号', '12346578', '', '987', '13800000000', 'http://www.kkugea.cn/upload/8d8974e94ea71793/ef08b1ba42a6f787.jpg', '08:01', '18:00', 1, 1571970644, 'https://kefu.cckefu3.com/vclient/chat/?websiteid=188043&wc=c620c7', ''),
(2, '1314', '客服二号', '12345678', '', '1122', 'weixi', 'http://www.kkugea.cn/upload/8d8974e94ea71793/ef08b1ba42a6f787.jpg', '10:00', '20:00', 2, 1571971118, '', ''),
(3, '13800000000', '首次提现需审核（个人安全信息）', 'c123456789.', '', '0', '客服MChat号： wxid_ihdylt5333', 'http://www.kkugea.cn/upload/278cce429f71e443/f55c41cf04b35a6f.jpg', '10:00', '22:00', 2, 1575521614, '', ''),
(4, '13800000000', '平台审核客服MChat（请咨询在线客服下载）', 'queen123456', '', '6749', '客服MChat号', 'http://qd.cn/upload/f8a252173a9d2e87/a14ecf487cc2fe1c.png', '09:00', '22:00', 2, 1575595897, 'https://qd2.2', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_deal_elog`
--

CREATE TABLE IF NOT EXISTS `xy_deal_elog` (
  `id` int(10) unsigned NOT NULL,
  `oid` char(18) NOT NULL COMMENT '相关订单',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `errmsg` varchar(255) NOT NULL COMMENT '错误信息',
  `addtime` int(10) unsigned NOT NULL COMMENT '添加时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='交易错误日志表';

-- --------------------------------------------------------

--
-- 表的结构 `xy_deposit`
--

CREATE TABLE IF NOT EXISTS `xy_deposit` (
  `id` char(18) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '提现用户',
  `bk_id` int(11) NOT NULL COMMENT '银行卡信息',
  `num` decimal(12,2) NOT NULL COMMENT '提现金额',
  `addtime` int(10) NOT NULL COMMENT '提交时间',
  `endtime` int(10) NOT NULL DEFAULT '0' COMMENT '审核时间',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '订单状态 1待处理 2审核通过 3审核不通过',
  `type` varchar(36) DEFAULT NULL,
  `real_num` decimal(12,2) DEFAULT NULL,
  `shouxu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-余额提现表';

--
-- 转存表中的数据 `xy_deposit`
--

INSERT INTO `xy_deposit` (`id`, `uid`, `bk_id`, `num`, `addtime`, `endtime`, `status`, `type`, `real_num`, `shouxu`) VALUES
('CO2010060534418979', 3, 20, '1000.00', 1601933681, 1601935525, 3, 'card', '1000.00', '0');

-- --------------------------------------------------------

--
-- 表的结构 `xy_goods_cate`
--

CREATE TABLE IF NOT EXISTS `xy_goods_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '商店名称',
  `bili` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `cate_info` varchar(255) DEFAULT '' COMMENT '商品描述',
  `goods_price` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `cate_pic` varchar(120) DEFAULT '' COMMENT '商品展示图片',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `status` int(1) DEFAULT '0' COMMENT '上架状态 0不上架 1上架',
  `min` varchar(255) DEFAULT NULL COMMENT '最小金额限制',
  `level_id` int(11) DEFAULT NULL,
  `level` varchar(2) NOT NULL DEFAULT '0' COMMENT '任务为1 ，普通0',
  `sort` int(10) NOT NULL DEFAULT '999'
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

--
-- 转存表中的数据 `xy_goods_cate`
--

INSERT INTO `xy_goods_cate` (`id`, `name`, `bili`, `cate_info`, `goods_price`, `cate_pic`, `addtime`, `status`, `min`, `level_id`, `level`, `sort`) VALUES
(1, '亚马逊', NULL, '白银会员专属', NULL, 'http://bb.uei99.top/upload/c030986b08dcd5c6/e966c1a5fb773922.png', 1602173600, 0, '0', 1, '0', 1),
(2, '嗨购', '0.000', '黄金会员专属', NULL, 'http://bb.uei99.top/upload/fa110e7032f72dae/59800c6c6bd64a30.png', 1602173503, 0, '1000', 2, '0', 999),
(3, '全球购', '0.004', '铂金会员专属', NULL, 'http://bb.uei99.top/upload/90efb4263b0071d7/b54e301d8b70c344.jpg', 1602173643, 0, '5000', 3, '0', 999),
(5, '抖音专区', '0.01', '所有会员福利', NULL, 'http://bb.uei99.top/upload/90c5b7b1e2ddc8e2/6f9dd4652450b4c3.jpg', 1602173552, 0, '0', 1, '1', 2);

-- --------------------------------------------------------

--
-- 表的结构 `xy_goods_list`
--

CREATE TABLE IF NOT EXISTS `xy_goods_list` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL COMMENT '商店名称',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `goods_info` varchar(255) DEFAULT '' COMMENT '商品描述',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_pic` varchar(120) DEFAULT '' COMMENT '商品展示图片',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '上架状态 0不上架 1上架',
  `cid` int(11) DEFAULT '1',
  `info_link` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `conditions` varchar(50) DEFAULT NULL COMMENT '条件'
) ENGINE=MyISAM AUTO_INCREMENT=737 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

--
-- 转存表中的数据 `xy_goods_list`
--

INSERT INTO `xy_goods_list` (`id`, `shop_name`, `goods_name`, `goods_info`, `goods_price`, `goods_pic`, `addtime`, `status`, `cid`, `info_link`, `conditions`) VALUES
(673, 'CA BRIDA/嘉德丽亚', 'CA BRIDA/嘉德丽亚秋季竹纤维睡裙女新品睡衣方领长袖CJW4W808C1', '', '1580.00', 'http://bb.uei99.top/upload/9c114088ae2c29d5/936f512ce3353fbf.jpg', 1602180233, 0, 1, '', ''),
(674, '帛缇', '帛缇2020欧版休闲绵羊皮宽松大衣连帽大码真皮羽绒服女长款冬8F23', '', '3980.00', 'http://bb.uei99.top/upload/7e0a1ac7b1fd2852/b1df7f7db811ed95.jpg', 1602180294, 0, 1, '', ''),
(675, 'BaoXing/宝吉星', '泰国佛牌 龙婆坤 圣水必打 七龙佛版 25历史 掩面佛老牌', '', '1098.00', 'http://bb.uei99.top/upload/ecf01041153c214c/aea7c1dcf38aa25f.jpg', 1602224872, 0, 1, '', ''),
(676, 'BaoXing/宝吉星', '泰国佛牌正品 龙婆坤圣僧 银坤银袈裟崇迪佛 2537招财转运保平安', '', '980.00', 'http://bb.uei99.top/upload/025f1074d80ccb08/6a35c89156a5fbe1.jpg', 1602224929, 0, 1, '', ''),
(677, 'fortune/幸福', '中国香港港版幸福医药儿童伤风感冒素正品进口代购缓解发烧咀嚼片', '', '108.00', 'http://bb.uei99.top/upload/5a4b8c50e63d483b/889a981775c5fc68.jpg', 1602225016, 0, 1, '', ''),
(678, '黄道益', '中国香港港版港货黄道益活络油原装代购正品跌打损伤舒筋活络50ml', '', '89.00', 'http://bb.uei99.top/upload/cd6c2f91e05fb169/5197bce490b9db9b.jpg', 1602225113, 0, 1, '', ''),
(679, '吉高优品日本海外代购', '日本海外直邮2019冬女装代购蕾丝拼接休闲针织衫套头毛衣打底衫', '', '728.00', 'http://bb.uei99.top/upload/d2306ef809d81062/ee590e1577196d78.jpg', 1602225248, 0, 1, '', ''),
(680, 'other/其他', '海外代购Longines浪琴心月手环 月相女士镶钻机械石英防水钢带环', '', '2990.00', 'http://bb.uei99.top/upload/778e63cf3327715b/ebe94f1758f4a86f.jpg', 1602225309, 0, 1, '', ''),
(681, 'other/其他', '海外代购美度MIDO手表领航者全自动机械表夜光运动钢带男腕表M026', '', '1590.00', 'http://bb.uei99.top/upload/ddbd94c15194fb8b/5d78b00e6f6b88d7.jpg', 1602225361, 0, 1, '', ''),
(682, 'other/其他', '海外代购美度MIDO手表贝伦赛丽系列全自动机械表日历皮带女士腕表', '', '1668.00', 'http://bb.uei99.top/upload/dd120cf7836b91e4/4aacf346dadf34ea.jpg', 1602225416, 0, 1, '', ''),
(683, '福瑞海外代购', '美国直邮福瑞海外代购Michael Kors Dot Jacquard 连衣裙viscose', '', '569.00', 'http://bb.uei99.top/upload/8b431623e816dc8c/56f68d612d5d1a5a.jpg', 1602225482, 0, 1, '', ''),
(684, '小蜜蜂', '全哥海外代购F家特价斜挎包单肩包网格斜标 韩国直邮 正品男女', '', '168.00', 'http://bb.uei99.top/upload/8594a1d61e087422/5351d59f9fc0a04e.jpg', 1602225526, 0, 1, '', ''),
(685, '千禧印代', '印度代购泰坦K2海外代购男士专用夫妻专属孟加拉特色国内现货跑腿', '', '118.00', 'http://bb.uei99.top/upload/a83747a856109ed3/17162d2b9ce8192c.jpg', 1602225579, 0, 1, '', ''),
(686, '100贵族美女装', '20秋新款海外国际直邮正品韩国优选女装代购简约舒适羊毛针织开衫', '', '899.00', 'http://bb.uei99.top/upload/cb20091b9d6af03d/085818b0ee31e8d3.png', 1602225636, 0, 1, '', ''),
(687, '100贵族美女装', '20秋新款海外国际直邮正品韩国优选女装代购简约舒适百搭亚麻外套', '', '1990.00', 'http://bb.uei99.top/upload/216d051f0789b4cd/2509c2e32fa4ec17.png', 1602225686, 0, 1, '', ''),
(688, '100贵族美女装', '20秋新款海外国际直邮正品韩国优选女装代购简约时尚羊毛针织毛衣', '', '1600.00', 'http://bb.uei99.top/upload/6d31f4e0a47768ef/a585baf2cecce048.png', 1602225731, 0, 1, '', ''),
(689, '100贵族美女装', '20秋新款海外国际直邮正品韩国优选女装代购简约舒适随意休闲套装', '', '1900.00', 'http://bb.uei99.top/upload/a7bc2ed09d1f976c/ba02bf14bbf0f89a.png', 1602225784, 0, 1, '', ''),
(690, '100贵族美女装', '20秋新海外国际直邮正品韩国优选女装代购简约舒适羊绒披肩针织衫', '', '1700.00', 'http://bb.uei99.top/upload/b1931411aeff5e36/151d7449682f79f4.png', 1602225817, 0, 1, '', ''),
(691, 'SANDRO', '海外潮流代购sandroV领绳结拼色珍珠扣针织开衫毛衣SFPCA00258', '', '1350.00', 'http://bb.uei99.top/upload/c0c383175d35cc53/a0c12a84e3affd3c.jpg', 1602225891, 0, 1, '', ''),
(692, 'SANDRO', '【海外潮流】MAJE虞书欣同款衣服雾霾蓝字母印花连帽卫衣秋装', '', '1000.00', 'http://bb.uei99.top/upload/5fb169205e919375/cba30550dc6af6f4.jpg', 1602225948, 0, 1, '', ''),
(693, 'MAJE', '海外潮流MAJE20秋冬甜美小香风蝴蝶结系带花呢外套女MFPVE00207', '', '1250.00', 'http://bb.uei99.top/upload/6e9c6f6c3902300b/2696617ce884aa74.jpg', 1602226002, 0, 1, '', ''),
(694, 'MAJE', '【海外潮流】 maje欧阳娜娜同款上衣黑色毛衣慵懒风休闲开衫外套', '', '990.00', 'http://bb.uei99.top/upload/b3fa205c82c3c848/2da417127c999871.jpg', 1602226050, 0, 2, '', ''),
(695, 'MAJE', '海外潮流 maje迪丽热巴同款毛呢外套中长款双面羊绒驼色大衣', '', '1500.00', 'http://bb.uei99.top/upload/ed3be49739e8b4f2/282c0601a6d63387.jpg', 1602226097, 0, 1, '', ''),
(696, 'MAJE', '【海外潮流】MAJE古力娜扎明星同款休闲宽松粉色中长款五分袖T恤', '', '975.00', 'http://bb.uei99.top/upload/023a4e8fa45bb592/cafb9fe2effec6b9.png', 1602226153, 0, 1, '', ''),
(697, 'MAJE', '【海外潮流】MAJE夏季林心如同款蓝色收腰显瘦中长款衬衫连衣裙', '', '1050.00', 'http://bb.uei99.top/upload/22e547a482c21798/101f197bfff45f46.jpg', 1602226194, 0, 1, '', ''),
(698, 'SANDRO', '【海外潮流】SANDRO2020春装明星鞠婧祎同款白色西装外套小西服', '', '1475.00', 'http://bb.uei99.top/upload/f8795be2430fac3d/e9d24fcd4e448816.jpg', 1602226288, 0, 1, '', ''),
(699, 'MAJE', '【海外潮流】maje2019秋冬杨幂同款双面羊毛羊绒酒红色大衣外套', '', '1449.50', 'http://bb.uei99.top/upload/c5f450b3a6ce88ef/fe26cf01a0127f4d.jpg', 1602226347, 0, 1, '', ''),
(700, 'MAJE', '海外潮流 MAJE2019冬季新款毛呢大衣中长款宋慧乔双排扣外套女', '', '2800.00', 'http://bb.uei99.top/upload/429922f64aa0344e/66bbaf199755043f.jpg', 1602226396, 0, 2, '', ''),
(701, 'climax', '印度代购 跑腿服务 可海外直邮进口神油 男士专用 现货包邮climax', '', '98.00', 'http://bb.uei99.top/upload/3b06b12593250b53/a37566856fc6af5b.jpg', 1602226474, 0, 1, '', ''),
(702, '都友海外代购', '都友海外代购 韩国东大门秋季新款 cats家手工粗针线毛衣', '', '409.00', 'http://bb.uei99.top/upload/f67c2d7755b09910/429a703fad34ea4a.jpg', 1602226527, 0, 1, '', ''),
(703, 'DOYOU海外购', 'DOYOU海外购 韩国东大门ave家手工双面尼高品质大衣毛呢外套', '', '1389.00', 'http://bb.uei99.top/upload/bb28efd95bc997c7/2ef9bf36d5751204.jpg', 1602226599, 0, 1, '', ''),
(704, 'DOYOU海外购', 'DOYOU海外购 韩国东大门rumiru家手工毛呢大衣短款外套', '', '1050.00', 'http://bb.uei99.top/upload/8821b90bb855f29d/5e2ac3df1e5f5d1e.jpg', 1602226652, 0, 1, '', ''),
(705, 'DOYOU海外购', 'DOYOU海外购 韩国东大门chemi家手工羊毛高品质双面尼大衣', '', '1295.00', 'http://bb.uei99.top/upload/4ebbb2c053386069/8b5097bbb5c9f4a4.jpg', 1602226688, 0, 1, '', ''),
(706, 'Seiko', '海外代购Seiko精工太阳能手表简约潮流金色小表盘钢带女表SUP352', '', '2100.00', 'http://bb.uei99.top/upload/01d18f121bef5643/03226d85267cc6ef.jpg', 1602226757, 0, 1, '', ''),
(707, 'Casio', 'Casio卡西欧g-shock手表冰韧潮流半透明双显电竞运动男表GA110LS', '', '1350.00', 'http://bb.uei99.top/upload/1838c6f43903d0c1/5b41aee317d6a75a.jpg', 1602226804, 0, 1, '', ''),
(708, 'Seiko', '代购Seiko精工商务简约SARB035蓝宝石小GS全自动机械背透男士手表', '', '890.00', 'http://bb.uei99.top/upload/b34a4ae78451a16d/7998cd2d39d450b3.jpg', 1602226847, 0, 1, '', ''),
(709, 'Citizen', '代购正品Citizen西铁城男表超薄钢带简约光动能手表男AR3015-53E', '', '5457.00', 'http://bb.uei99.top/upload/48ed8873891d76f7/579e2185e4fe13fe.png', 1602226884, 0, 1, '', ''),
(710, 'Citizen', '美国代购Citizen西铁城光动能银色简约超薄男手表AR3010-65A', '', '2375.00', 'http://bb.uei99.top/upload/c96ffc972e61e64c/49fc5f6bc0e7ed22.png', 1602226935, 0, 1, '', ''),
(711, 'Casio', '代购正品Casio卡西欧手表男G-SHOCK冰韧透明运动男女表GA700SK-1A', '', '670.00', 'http://bb.uei99.top/upload/f3d909984e8b6d24/459be655fb55988b.jpg', 1602226981, 0, 1, '', ''),
(712, 'Citizen', '代购Citizen西铁城光动能AU1065-58E正品 简约纯黑日历运动男手表', '', '729.00', 'http://bb.uei99.top/upload/88b84a11c9d63e75/20953c4a53490faa.jpg', 1602227021, 0, 1, '', ''),
(713, '小吕书包潮牌铺', '海外购代购包包女2020新款NB斜挎包粉色托特包单肩手提女包潮牌', '', '486.00', 'http://bb.uei99.top/upload/fb2e4b802c6fe92e/638b53d16f588a2b.png', 1602227077, 0, 1, '', ''),
(714, '小吕书包潮牌铺', 'New balance腰包女大容量NB纯色单肩斜挎包休闲情侣胸包男背包潮', '', '688.00', 'http://bb.uei99.top/upload/c47602f681fd9191/843acc84d35f5b2a.jpg', 1602227115, 0, 1, '', ''),
(715, '小吕书包潮牌铺', 'New balance双肩包女NB休闲运动男背包百搭款大号学生书包旅行包', '', '148.00', 'http://bb.uei99.top/upload/f3219f65ec6b754d/54681f2f6a95bc3b.jpg', 1602227157, 0, 1, '', ''),
(716, '小吕书包潮牌铺', 'NEW BALANCE双肩包女大容量休闲运动NB书包男背包情侣款电脑包潮', '', '148.00', 'http://bb.uei99.top/upload/cf84ea1c14b04ec4/b8e9fae8a69ac7b5.jpg', 1602227197, 0, 1, '', ''),
(717, '露露瑜伽服直销', '海外代购~lululemon露露运动裤女夏季宽松薄款抽绳健身裤跑步速干', '', '170.00', 'http://bb.uei99.top/upload/aafe27643896cc1e/c8a628d490af27d2.jpg', 1602227271, 0, 1, '', ''),
(718, '露露瑜伽服直销', '海外代购~lululemon露露运动内衣文胸欧美磨毛瑜伽拉链健身防震', '', '117.00', 'http://bb.uei99.top/upload/1a4c45d55f28816c/1e1dd1c6f812aade.jpg', 1602227320, 0, 1, '', ''),
(719, '露露瑜伽服直销', '海外~lululemon瑜伽健身裤透气运动裤女跑步训练速干显瘦休闲裤', '', '176.00', 'http://bb.uei99.top/upload/5b493d0b94aa7e62/a82feb1c243f2e48.jpg', 1602227359, 0, 1, '', ''),
(720, '露露瑜伽服直销', '现货~lululemon男士运动长裤户外健身跑步裤lulu纯色宽松透气男裤', '', '899.00', 'http://bb.uei99.top/upload/e8bf618753dfa62b/7a394969acbe887c.jpg', 1602227442, 0, 1, '', ''),
(721, '露露瑜伽服直销', '露露lululemon渐变运动长裤子男士收口直筒小脚宽松健身长裤卫裤', '', '168.00', 'http://bb.uei99.top/upload/494e4671644bb7eb/373018ba350603b8.jpg', 1602227497, 0, 1, '', ''),
(722, '印度代购', '印度代购 专业跑腿直邮国内现货想要都有特色工艺品手串 举', '', '100.00', 'http://bb.uei99.top/upload/ac859f649501b1cf/f5581aba1c8428da.jpg', 1602227585, 0, 1, '', ''),
(723, '印度代购', '印度代购 专业跑腿直邮国内现货想要都有特色工艺品手串 举', '', '200.00', 'http://bb.uei99.top/upload/ac859f649501b1cf/f5581aba1c8428da.jpg', 1602227609, 0, 1, '', ''),
(724, '印度代购', '印度代购 专业跑腿直邮国内现货想要都有特色工艺品手串 举', '', '10.00', 'http://bb.uei99.top/upload/ac859f649501b1cf/f5581aba1c8428da.jpg', 1602227625, 0, 1, '', ''),
(725, '印度代购', '印度代购 专业跑腿直邮国内现货想要都有特色工艺品手串 举', '', '50.00', 'http://bb.uei99.top/upload/ac859f649501b1cf/f5581aba1c8428da.jpg', 1602227641, 0, 1, '', ''),
(726, '@DOU+小助手', '同时被三个校草喜欢是何等优秀 #爱情  #我要上热门', '', '1.00', 'http://bb.uei99.top/upload/40bbfc360392a76d/185f417a709918c1.png', 1602227973, 0, 5, 'https://v.douyin.com/Jyu4to7/', '点赞'),
(729, '#潘长江 潘叔考场#搞笑 操作！一定要看完哦！', '#潘长江 潘叔考场#搞笑 操作！一定要看完哦！', '', '1.00', 'http://bb.uei99.top/upload/08f25f5eac66097a/b873a0eb71869313.png', 1602236923, 0, 5, 'https://v.douyin.com/JyHVkPK/', '关注'),
(730, '这个拔丝吻你体验过吗？有对象抓紧安排起来', '这个拔丝吻你体验过吗？有对象抓紧安排起来', '', '1.00', 'http://bb.uei99.top/upload/d83aa9d6d9009b6d/122d7f9047f576cf.png', 1602236985, 0, 2, 'https://v.douyin.com/JyHvx6u/', '点赞'),
(731, '来追我呀，小样', '来追我呀，小样', '', '1.00', 'http://bb.uei99.top/upload/e8c89acb1fa469b0/151dae7b32563a80.png', 1602237603, 0, 5, 'https://v.douyin.com/JyHbSKk/', '点赞'),
(732, '听说发第二遍会火', '听说发第二遍会火', '', '1.00', 'http://bb.uei99.top/upload/646f1ef08b77729b/a3ffbf59c021fc3d.png', 1602237616, 0, 5, 'https://v.douyin.com/JyHqfEt/', '点赞'),
(733, '要想拿第一，选对装备很重要！大不了不做人了！', '要想拿第一，选对装备很重要！大不了不做人了！', '', '1.00', 'http://bb.uei99.top/upload/a7b50bea15d11690/31382063ecaa075f.png', 1602237210, 0, 5, 'https://v.douyin.com/Jy9eG7H/', '点赞'),
(734, '诚实的狗狗 遇到好心的人 ，社会也有美好的一面。', '诚实的狗狗 遇到好心的人 ，社会也有美好的一面。', '', '2.00', 'http://bb.uei99.top/upload/e142622da9077b8a/629db366cb5227b9.png', 1602237631, 0, 5, 'https://v.douyin.com/JyHvwMJ/', '关注'),
(735, '这滑板就跟哪吒的风火轮差不多吧', '这滑板就跟哪吒的风火轮差不多吧', '', '1.00', 'http://bb.uei99.top/upload/6c0028601778f17f/f12ac87c0a584bd0.png', 1602237338, 0, 5, 'https://v.douyin.com/JyHovbU/', '点赞'),
(736, '我要上热门', '我要上热门', '', '1.00', 'http://bb.uei99.top/upload/31ab01cdff85aab0/cfb88df03432a022.png', 1602237543, 0, 5, 'https://v.douyin.com/JyHKGdh/', '点赞'),
(727, '有感情问题，想挽回复合的发消息我', '有感情问题，想挽回复合的发消息我', '', '1.00', 'http://bb.uei99.top/upload/e10d95eaa56d7930/f0d6505d01c2bfda.png', 1602236780, 0, 5, 'https://v.douyin.com/JyHbDHv/', '点赞'),
(728, '小柒☞影视剪辑', '老师出现了幻觉，竟然将整个班的学生给 #诡异', '', '1.50', 'http://bb.uei99.top/upload/2654fd2a0abd0d0a/4e7d5e1bc49741a7.png', 1602236859, 0, 5, 'https://v.douyin.com/JyHWHJs/', '关注');

-- --------------------------------------------------------

--
-- 表的结构 `xy_goods_lists`
--

CREATE TABLE IF NOT EXISTS `xy_goods_lists` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(20) NOT NULL COMMENT '商店 名称',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_info` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `goods_price` decimal(12,2) NOT NULL COMMENT '商品价格',
  `goods_pic` varchar(255) NOT NULL COMMENT '商品图片',
  `addtime` varchar(32) NOT NULL COMMENT '添加时间',
  `cid` int(11) NOT NULL COMMENT '商品分类',
  `info` varchar(255) NOT NULL COMMENT '任务要求',
  `lianjie` varchar(255) NOT NULL COMMENT '任务链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务商品列表';

-- --------------------------------------------------------

--
-- 表的结构 `xy_goods_list_copy`
--

CREATE TABLE IF NOT EXISTS `xy_goods_list_copy` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL COMMENT '商店名称',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `goods_info` varchar(255) DEFAULT '' COMMENT '商品描述',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_pic` varchar(120) DEFAULT '' COMMENT '商品展示图片',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '上架状态 0不上架 1上架',
  `cid` int(11) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

--
-- 转存表中的数据 `xy_goods_list_copy`
--

INSERT INTO `xy_goods_list_copy` (`id`, `shop_name`, `goods_name`, `goods_info`, `goods_price`, `goods_pic`, `addtime`, `status`, `cid`) VALUES
(1, '信酷小米专营店', '小米/MIUI 小米电视4S 43英寸人工智能语音网络平板电视 1GB+8GB HDR 4K超高清', '金属机身', '1.00', '/upload/goods_img/大家电/5db3b89a8d174.jpg', 1572059510, 0, 1),
(2, '邮乐安阳馆', '【汤阴县积分用户专享】洗衣机XpB—126-9896S', '', '1.00', '/upload/goods_img/大家电/5db3b89a9f288.jpg', 1578206762, 0, 1),
(3, '海信电器旗舰店', '海信（Hisense）HZ39E35A 39英寸高清手机交互 轻薄金属 WIFI人工智能液晶电视机', '', '1.00', '/upload/goods_img/大家电/5db3b89ab61bd.jpg', 1572059510, 0, 1),
(4, '邮滋味如皋馆专柜', '创维9公斤变频滚筒洗衣机  型号：F9015NC-炫金   如皋免费送货上门，南通包邮，华东地区配货', '创维洗衣机，安全健康专家，免费上门安装，绝对优惠，每月线下更有现场特惠活动', '1.00', '/upload/goods_img/大家电/5db3b89b52437.jpg', 1572059510, 0, 1),
(5, '邮滋味如皋馆专柜', '创维2P定频立式柜机，型号：KFR-50LW/F2DA1A-3（限如皋地区免费送货上门安装）', '创维定频空调，免费上门安装，绝对优惠，每月更有现场特惠活动', '4.00', '/upload/goods_img/大家电/5db3b89b6e95e.jpg', 1572059510, 0, 1),
(6, '创维电视官方旗舰店', '创维/SKYWORTH 58H8M 58英寸4K超高清全面屏防蓝光人工智能语音HDR超薄网络液晶电视', '4K超高清，声像自然，一场声觉革新，视觉体验，光学防蓝光，护眼不偏色', '3.00', '/upload/goods_img/大家电/5db3b89b79d10.jpg', 1572059510, 0, 1),
(7, '邮乐洛阳', '【洛阳金融积分兑换】TCL 205升 三门电冰箱 （星空银） BC（邮政网点配送）', '', '1.00', '/upload/goods_img/大家电/5db3b89bc11c1.jpg', 1572059510, 0, 1),
(8, '邮滋味如皋馆专柜', '创维9公斤全自动波轮洗衣机，型号XQB90-52BAS淡雅银如皋免费送货上门，南通包邮，华东地区配送', '创维家电大品牌，安全可靠，夏季特惠；每月现场有特惠活动', '1.00', '/upload/goods_img/大家电/5db3b89bcfc24.jpg', 1572059510, 0, 1),
(9, '信阳邮约会', '【限信阳地区积分兑换专用，不对外销售】家用洗衣机，图片仅供参考', '', '1.00', '/upload/goods_img/大家电/5db3b89be0d98.jpg', 1572059510, 0, 1),
(10, '邮乐安阳馆', '【滑县积分用户专享】创维电器洗衣机9公斤波轮安阳', '', '1.00', '/upload/goods_img/大家电/5db3b89bee474.jpg', 1572059510, 0, 1),
(11, '邮乐安阳馆', '美菱3开门冰箱BCD-209M3CX【汤阴县积分兑换专用，其他下单不发货】', '', '1.00', '/upload/goods_img/大家电/5db3b89c06586.jpg', 1572059510, 0, 1),
(12, '邮乐安阳馆', '美菱电冰箱209L3CS【安阳县积分兑换用户专用，其他地区发】', '', '1.00', '/upload/goods_img/大家电/5db3b89c16f2a.jpg', 1572059510, 0, 1),
(13, '信阳邮约会', '【限信阳地区积分兑换专用，不对外销售】自动洗衣机 家用洗衣机，图片仅供参考', '', '2.00', '/upload/goods_img/大家电/5db3b89c22e95.jpg', 1572059510, 0, 1),
(14, '邮乐安阳馆', '【滑县积分用户专享】创维电器电视50寸4K智能安阳', '', '3.00', '/upload/goods_img/大家电/5db3b89c2bb37.jpg', 1572059510, 0, 1),
(15, '邮乐安阳馆', '【安阳县积分用户专享】长虹液晶电视55U1', '', '3.00', '/upload/goods_img/大家电/5db3b89f48109.jpg', 1572059510, 0, 1),
(16, '海信电器旗舰店', '海信（Hisense）HZ32E30D 32英寸蓝光高清平板液晶电视机 酒店宾馆卧室推荐', '【海信今日限时特惠-到手价788元！】限量200台！抢完即止！', '749.00', '/upload/goods_img/大家电/5db3b89f51194.jpg', 1572059510, 0, 1),
(17, '邮滋味如皋馆专柜', '邮乐特卖：庭美家用消毒柜    型号：YTP-280    如皋免费送货上门，南通包邮，华东地区配送', '庭美消毒柜，安全可靠，邮乐特惠；每月现场有特惠活动——18862731238', '755.00', '/upload/goods_img/大家电/5db3b89f5ec57.jpg', 1572059510, 0, 1),
(18, '吉舜诚商城专柜', '飞利浦（PHILIPS）  19英寸液晶电视机 显示器两用 hdmi高清接口', '19PFF2650', '799.00', '/upload/goods_img/大家电/5db3b89fb14ba.jpg', 1572059510, 0, 1),
(19, '创维集团官方旗舰店', '创维/SKYWORTH 32X3 32英寸窄边非智能老人机蓝光高清节能LED平板液晶电视机工程机', '蓝光高清，经典窄边，节能液晶，简单好用，谁用谁知道，实用耐用款', '799.00', '/upload/goods_img/大家电/5db3b89fc8fa8.jpg', 1572059510, 0, 1),
(20, '吉舜诚商城专柜', '飞利浦（PHILIPS）22英寸LED高清液晶平板电视机含底座 黑色', '22PFF2650/T3', '899.00', '/upload/goods_img/大家电/5db3b89fd917b.jpg', 1572059510, 0, 1),
(21, '创维集团官方旗舰店', '创维/SKYWORTH 32X6 32英寸10核窄边高清 人工智能 网络WIFI 卧室液晶平板电视机', '超值钜惠，高清智能电视，WIFI，酷开系统，10核处理器', '899.00', '/upload/goods_img/大家电/5db3b89fe6086.jpg', 1572059510, 0, 1),
(22, '海信电器旗舰店', '海信 (Hisense) HZ32E35A 32英寸AI智能WIFI 轻薄金属 卧室神器高清电视机', '', '899.00', '/upload/goods_img/大家电/5db3b8a0004c2.jpg', 1572059510, 0, 1),
(23, '邮滋味如皋馆专柜', '创维邮乐特卖： 32寸液晶电视机，型号：32E381S   如皋免费送货上门，南通包邮，华东地区配货', '创维液晶电视大品牌，夏季特惠；每月现场有特惠活动', '899.00', '/upload/goods_img/大家电/5db3b8a01be30.jpg', 1572059510, 0, 1),
(24, '琥麟电器专柜', '海信 XQB60-H3568 6公斤全自动波轮洗衣机', '', '749.00', '/upload/goods_img/大家电/5db3b8a0279b3.jpg', 1572059510, 0, 1),
(25, '邮滋味如皋馆专柜', '创维7公斤全自动波轮洗衣机，型号：XQB70-21C淡雅银，如皋免费送货上门，南通包邮，华东地区配送', '创维家电大品牌，安全可靠，邮乐特惠；每月现场有特惠活动——18862731238', '928.00', '/upload/goods_img/大家电/5db3b8a0367fe.jpg', 1572059510, 0, 1),
(26, '邮滋味如皋馆专柜', '创维单冷冰柜，型号：BD/C-160雅白，如皋地区免费送货上门安装，南通地区包邮，华东地区配货', '创维冰柜，安全健康专家，免费上门安装，绝对优惠，每月线下更有现场特惠活动', '999.00', '/upload/goods_img/大家电/5db3b8a042f39.jpg', 1572059510, 0, 1),
(27, '创维集团官方旗舰店', '创维（SKYWORTH）32H5 32英寸高清HDR 护眼全面屏 AI人工智能语音 网络WIFI 卧', '高清HDR 护眼全面屏 AI人工智能语音 网络WIFI', '999.00', '/upload/goods_img/大家电/5db3b8a0511cd.jpg', 1572059510, 0, 1),
(28, '邮滋味如皋馆专柜', '创维/SKYWORTH热水器，型号：DSZF-D5501-80，如皋免费送货上门，南通包邮 创维/', '创维家电大品牌，安全可靠，邮乐特惠；每月现场有特惠活动——18862731238', '999.00', '/upload/goods_img/大家电/5db3b8a07389d.jpg', 1572059510, 0, 1),
(29, '琥麟电器专柜', 'Hisense/海信 HB80DA332G8KG公斤大容量家用全自动节能波轮洗衣机', '', '899.00', '/upload/goods_img/大家电/5db3b8a386615.jpg', 1572059510, 0, 1),
(30, '琥麟电器专柜', '海信 BCD-163N/B 冰柜冷藏冷冻双温家用商用小型卧式', '', '999.00', '/upload/goods_img/大家电/5db3b8a390a27.jpg', 1572059510, 0, 1),
(31, '吉舜诚商城专柜', '东芝（TOSHIBA）  32英寸 蓝光液晶电视 高清平板电视机 东芝电视机', '32L1500C', '1.00', '/upload/goods_img/大家电/5db3b8a69aafd.jpg', 1572059510, 0, 1),
(32, '创维集团官方旗舰店', '创维/SKYWORTH 40X6 40英寸10核窄边高清 人工智能 网络WIFI 卧室液晶平板电视机', '超值钜惠！高清智能，10核处理器，可以WIFI上网', '1.00', '/upload/goods_img/大家电/5db3b8a9a6b14.jpg', 1572059510, 0, 1),
(33, '甲子商城旗舰店', '康佳/KONKA  LED39E330C 39英寸卧室电视高清蓝光节能平板液晶电视', '', '949.00', '/upload/goods_img/大家电/5db3b8a9b22ae.jpg', 1572059510, 0, 1),
(34, '邮乐赣州馆', '【不支持邮乐卡支付】创维-彩电-40E1C 40英寸全高清HDR 护眼全面屏 AI人工智能语音', '', '1.00', '/upload/goods_img/大家电/5db3b8a9cf38d.jpg', 1572059510, 0, 1),
(35, '琥麟电器专柜', '海信 BCD-177F/Q 177升 双门冰箱', '', '1.00', '/upload/goods_img/大家电/5db3b8a9f0abd.jpg', 1572059510, 0, 1),
(36, '创维集团官方旗舰店', '创维/SKYWORTH 43X6 43英寸10核窄边高清 人工智能 网络WIFI 卧室液晶平板电视机', '【买电视选创维】高清智能，10核处理器，质量上乘，价格厚道，可以Wifi上网', '1.00', '/upload/goods_img/大家电/5db3b8aa1b4b4.jpg', 1572059510, 0, 1),
(37, '创维集团官方旗舰店', '创维（SKYWORTH）40H5 40英寸全高清HDR 护眼全面屏 AI人工智能语音 网络WIFI', '全高清HDR 护眼全面屏 AI人工智能语音', '1.00', '/upload/goods_img/大家电/5db3b8aa26c4f.jpg', 1572059510, 0, 1),
(38, '邮乐安阳馆', '市区积分用户专享】创维平板电视32X6', '', '1.00', '/upload/goods_img/大家电/5db3b8aa31c19.jpg', 1572059510, 0, 1),
(39, '吉舜诚商城专柜', '飞利浦（PHILIPS）32英寸新品高清LED电视 接口丰富窄边高清LED液晶平板电视机', '32PHF3282/T3', '1.00', '/upload/goods_img/大家电/5db3b8aa3b85c.jpg', 1572059510, 0, 1),
(40, '琥麟电器专柜', '海信 BD/BC-308NU/A 冰柜家用 顶开式卧式商用冷藏冷冻柜', '', '1.00', '/upload/goods_img/大家电/5db3b8aa4931f.jpg', 1572059510, 0, 1),
(41, '明凰服饰专营店', '男女冲锋衣工装棉服外套修身加厚款', '邮乐支持微信，支付宝，网银，邮储卡和银联卡支付。（不同商品请分开下单）', '85.00', '/upload/goods_img/户外服饰/5db3b8b22c022.jpg', 1572059516, 0, 1),
(42, '户外途量工厂专卖店', '春夏季运动风衣钓鱼防晒衣男女超薄透气皮肤衣防风外套户外速干潮流衣服情侣款皮肤衣', '大码骑行长袖', '29.90', '/upload/goods_img/户外服饰/5db3b8b23604c.jpg', 1572059516, 0, 1),
(43, '探路者正江专卖店', '探路者/TOREAD 冲锋裤 运动裤 秋冬户外软壳裤男透气防风保暖徒步裤KAMG91159', '', '428.00', '/upload/goods_img/户外服饰/5db3b8b25312b.jpg', 1572059516, 0, 1),
(44, '探路者正江专卖店', '探路者运动服 探路者冲锋衣 19秋冬户外女式防水透湿套绒冲锋衣TAWH92285', '', '839.00', '/upload/goods_img/户外服饰/5db3b8b25d925.jpg', 1572059516, 0, 1),
(45, '好看哒专营店', '防晒衣女中长款薄款防晒服', 'FSY-6387', '45.00', '/upload/goods_img/户外服饰/5db3b8b56628b.jpg', 1572059516, 0, 1),
(46, '宝仕母婴专营店专柜', 'L户外皮肤衣防紫外线防晒衣男女夏季超薄透气防晒服运动风衣', '', '75.00', '/upload/goods_img/户外服饰/5db3b8b573966.jpg', 1572059516, 0, 1),
(47, '好看哒专营店', '防晒衣女夏季新款韩版连帽系带长袖防晒衣糖果色沙滩户外披肩防晒衣', 'FSY-54', '19.90', '/upload/goods_img/户外服饰/5db3b8b88f380.jpg', 1572059516, 0, 1),
(48, '户外途量工厂专卖店', '户外速干T恤男 女休闲跑步运动健身短袖大码情侣快干衣排汗透气', '', '22.80', '/upload/goods_img/户外服饰/5db3b8b8abc8f.jpg', 1572059516, 0, 1),
(49, '好看哒专营店', '防晒衣 户外薄款防紫外线印花防晒衣', 'FSY-1736', '25.00', '/upload/goods_img/户外服饰/5db3b8b8c0c84.jpg', 1572059516, 0, 1),
(50, '好看哒专营店', '防晒衣夏季女蝙蝠袖连帽拉链短款防晒衣', 'FSY-5423', '35.00', '/upload/goods_img/户外服饰/5db3b8b9b16a1.jpg', 1572059516, 0, 1),
(51, '好看哒专营店', '防晒衣男士薄款纯色连帽防晒衣', 'FSY-4167', '35.00', '/upload/goods_img/户外服饰/5db3b8b9bbe9c.jpg', 1572059516, 0, 1),
(52, '户外途量工厂专卖店', '城徒 户外春夏单层冲锋衣女防晒衣男轻薄防风钓鱼服透气速干外套长袖衫', '', '35.80', '/upload/goods_img/户外服饰/5db3b8ba1b847.jpg', 1572059516, 0, 1),
(53, '好看哒专营店', '防晒衣韩版短款薄款连帽长袖防晒衣', 'FSY-5439', '36.00', '/upload/goods_img/户外服饰/5db3b8ba72314.jpg', 1572059516, 0, 1),
(54, '好看哒专营店', '防晒衣女中长款涂鸦薄款防晒衣', 'FSY-5282', '36.00', '/upload/goods_img/户外服饰/5db3b8ba99fd5.jpg', 1572059516, 0, 1),
(55, '好看哒专营店', '防晒衣女中长款薄款防晒衣', 'FSY-5456', '37.90', '/upload/goods_img/户外服饰/5db3b8baa8e20.jpg', 1572059516, 0, 1),
(56, '户外途量工厂专卖店', '秋冬户外男抓绒衣摇粒绒女外套保暖冲锋衣内胆开衫卫衣', '', '39.00', '/upload/goods_img/户外服饰/5db3b8bab267b.jpg', 1572059516, 0, 1),
(57, '户外途量工厂专卖店', '户外秋冬季加绒加厚抓绒衣男女摇粒绒保暖抓绒外套开衫冲锋衣内胆', '', '49.00', '/upload/goods_img/户外服饰/5db3b8bae0cb5.jpg', 1572059516, 0, 1),
(58, '江门新会馆', '【江门新会馆】caxa断码 两截速干裤女 韩版修身透气徒步快干裤野外登山跑步长裤', '', '50.00', '/upload/goods_img/户外服饰/5db3b8baf06b9.jpg', 1572059516, 0, 1),
(59, '宝仕母婴专营店专柜', 'L夏季休闲短裤男宽松5分中裤子男士运动五分裤大码跑步速干沙滩裤', '', '55.00', '/upload/goods_img/户外服饰/5db3b8bb2ba54.jpg', 1572059516, 0, 1),
(60, '江门新会馆', '【江门新会馆】caxa修身户外健身速干裤女 快干弹力透气登山大码长裤 弹力户外裤', '', '60.00', '/upload/goods_img/户外服饰/5db3b8bb513ed.jpg', 1572059516, 0, 1),
(61, '探路者正江专卖店', '探路者/TOREADt恤女户外夏季快干速干透气运动服TAJG82984', '', '61.00', '/upload/goods_img/户外服饰/5db3b8bb5ac47.jpg', 1572059516, 0, 1),
(62, '铁好家居美妆日用百货专营店', '佳钓尼 夏遮阳防晒帽套头面罩透气防紫外线渔夫帽', '', '48.00', '/upload/goods_img/户外服饰/5db3b8bb8e0a3.jpg', 1572059516, 0, 1),
(63, '宝仕母婴专营店专柜', '防晒衣男女情侣春夏季防雨风衣超薄透气速干钓鱼防晒服户外皮肤衣MN', '', '69.00', '/upload/goods_img/户外服饰/5db3b8bb9f9e7.jpg', 1572059516, 0, 1),
(64, '户外途量工厂专卖店', '城徒 春夏季速干裤男女大码轻薄快干透气户外修身显瘦弹力冲锋裤', '', '69.00', '/upload/goods_img/户外服饰/5db3b8bbb3e24.jpg', 1572059516, 0, 1),
(65, '宝仕母婴专营店专柜', 'L运动户外夏季速干t恤 男女短袖速干衣快干t恤 吸汗透气', '', '69.00', '/upload/goods_img/户外服饰/5db3b8bbe33ff.jpg', 1572059516, 0, 1),
(66, '宝仕母婴专营店专柜', 'L健身房教练速干T恤男女 圆领情侣夏季短袖汗衫', '', '69.00', '/upload/goods_img/户外服饰/5db3b8bc1bca2.jpg', 1572059516, 0, 1),
(67, '户外途量工厂专卖店', '城徒 冬季正品户外冲锋裤男女抓绒裤保暖防风防水加厚软壳裤登山裤长裤', '', '75.00', '/upload/goods_img/户外服饰/5db3b8bc42dab.jpg', 1572059516, 0, 1),
(68, '江门新会馆', '【江门新会馆】caxa修身弹力女款休闲棉裤 户外休闲快干长裤 女士跑步登山健身裤', '', '78.00', '/upload/goods_img/户外服饰/5db3b8bc96997.jpg', 1572059516, 0, 1),
(69, '江门新会馆', '【江门新会馆】caxa休闲修身速干裤 透气轻薄运动裤耐磨健身户外裤多袋裤七分裤', '', '78.00', '/upload/goods_img/户外服饰/5db3b8bcac92c.jpg', 1572059516, 0, 1),
(70, '探路者正江专卖店', '探路者/TOREAD 运动服 短袖户外女运动跑步排汗透气圆领速干T恤TAJF82784', '', '78.00', '/upload/goods_img/户外服饰/5db3b8bcc53b9.jpg', 1572059516, 0, 1),
(71, '户外途量工厂专卖店', '冲锋裤男户外秋冬防风防水软壳裤女加绒加厚抓绒裤保暖徒步登山裤', '', '79.00', '/upload/goods_img/户外服饰/5db3b8bd362c1.jpg', 1572059516, 0, 1),
(72, '探路者正江专卖店', '探路者/TOREADT恤女 夏户外女式超轻透气速干衣圆领T恤短袖KAJG82352', '', '99.00', '/upload/goods_img/户外服饰/5db3b8bd44554.jpg', 1572059516, 0, 1),
(73, '探路者正江专卖店', '探路者/TOREAD 短袖 18春夏新款户外女式圆领速干透气印花短袖T恤TAJG82939', '', '99.00', '/upload/goods_img/户外服饰/5db3b8bd602ab.jpg', 1572059516, 0, 1),
(74, '探路者正江专卖店', '探路者/TOREAD夏新款户外运动透气弹力速干女式半袖短袖T恤KAJG82310', '', '99.00', '/upload/goods_img/户外服饰/5db3b8be68f86.jpg', 1572059516, 0, 1),
(75, '探路者正江专卖店', '探路者/TOREAD T恤女款 秋季户外短袖女时尚速干透气短袖T恤TAJG82938', '', '99.00', '/upload/goods_img/户外服饰/5db3b8be96a09.jpg', 1572059516, 0, 1),
(76, '洋湖轩榭官方旗舰店', '洋湖轩榭 春秋季新款中老年男装连帽冲锋衣爸爸装休闲夹克衫外套男A', '钜惠双十一 感恩惠顾', '126.42', '/upload/goods_img/户外服饰/5db3b8bea6025.jpg', 1572059516, 0, 1),
(77, '南城百货专营店', '秋冬季加绒加厚冲锋衣男女三合一可拆卸两件套防水户外情侣登山服', '秋冬季加绒加厚冲锋衣男女三合一可拆卸两件套防水户外情侣登山服', '158.00', '/upload/goods_img/户外服饰/5db3b8bede68a.jpg', 1572059516, 0, 1),
(78, '正江服饰专营店', '包邮韵格NT1021男士紧身训练PRO运动健身跑步长袖弹力速干服纯色衣服', '', '59.00', '/upload/goods_img/户外服饰/5db3b8beeb97d.jpg', 1572059516, 0, 1),
(79, '流行饰品运动户外器械', '汤河店 户外冲锋裤男女可脱卸秋冬季加绒加厚保暖软壳防风防水登山滑雪裤', '', '179.00', '/upload/goods_img/户外服饰/5db3b8bf07cf9.jpg', 1572059516, 0, 1),
(80, '流行饰品运动户外器械', '汤河店 韩国正品vvc防晒衣女经典薄夏季中长款防晒服户外防紫外线皮肤衣', '', '499.00', '/upload/goods_img/户外服饰/5db3b8bf2bf21.jpg', 1572059516, 0, 1),
(81, '乐颐汇数码专营店', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB', '2400万AI高清自拍，麒麟710处理器，炫光渐变色', '989.00', '/upload/goods_img/手机数码/5db3b8700e46c.jpg', 1572059524, 0, 1),
(82, '乐颐汇数码专营店', '华为/HUAWEI 畅享9 手机 全网通 4GB+128GB', '6.26英寸珍珠屏 4000mAh大电池', '1099.00', '/upload/goods_img/手机数码/5db3b8731cf7b.jpg', 1572059524, 0, 1),
(83, '米果商贸专柜', '折叠式平板电脑支架底座懒人手机支架【颜色随机发货】', '', '9.90', '/upload/goods_img/手机数码/5db3b87337179.jpg', 1572059524, 0, 1),
(84, '邮乐韵菲专营店', '（亏本促销）车载手机支架双面吸盘式家居懒人多功能通用可弯曲创意手机支架', '', '1.00', '/upload/goods_img/手机数码/5db3b87345fc4.jpg', 1572059524, 0, 1),
(85, '麦尚科技专营店', '手机支架懒人支架卡通创意平板电脑桌面支撑座【款式随机】', '', '9.90', '/upload/goods_img/手机数码/5db3b8734f81e.jpg', 1572059524, 0, 1),
(86, '邮乐韵菲专营店', '无线蓝牙耳机迷你超小苹果安卓通用耳机', '送两条充电线+一个收纳盒', '15.90', '/upload/goods_img/手机数码/5db3b873b60d7.jpg', 1572059524, 0, 1),
(87, '万品好易购商城', 'XO NB23 八角宝石锌合金数据线', '产品颜色：黑色  白色 宝石外观 不拘一格;  锌合金 更出色；  2.4A极速充电，高效传输文件', '49.00', '/upload/goods_img/手机数码/5db3b873bf931.jpg', 1572059524, 0, 1),
(88, '万品好易购商城', 'XO F1 户外Mini蓝牙音箱 经典挂扣 防水 防尘/防摔 抗干扰性强 无线链接 免提通话', '音量调节/音乐播放、暂停/上下曲切换 语音报号/来电铃声/数据输出/直读SD卡', '99.00', '/upload/goods_img/手机数码/5db3b873d7806.jpg', 1572059524, 0, 1),
(89, '万品好易购商城', 'XO  PB39 移动电源 8000mAh', '8000mAh大容量 双输出带LED灯  ； 电源保护, 好用更安全； 智能分流 高效输出', '119.00', '/upload/goods_img/手机数码/5db3b8740878f.jpg', 1572059524, 0, 1),
(90, '万品好易购商城', 'XO BS8 运动蓝牙耳机源于经典 加以升级 鲨鱼鳍耳翼 舒适牢固', '源于经典 加以升级； 鲨鱼鳍耳翼 舒适牢固 ； 无惧雨水  防水防汗； 蓝牙4.2版本，深度降噪', '169.00', '/upload/goods_img/手机数码/5db3b87419133.jpg', 1572059524, 0, 1),
(91, '万品好易购商城', 'XO BS7 运动蓝牙耳机 深度降噪 通话更清晰 轻松操控 随意切换', '强劲的CSR芯片 提升续航能力； 蓝牙4.1版本，深度降噪，通话更清晰； 霍尔磁控开关，智能感应', '199.00', '/upload/goods_img/手机数码/5db3b8742586e.jpg', 1572059524, 0, 1),
(92, '万品好易购商城', 'XO A8 蓝牙音箱 智能触控 自由切换 大容量电池 可连续播放约4-6小时 土豪金 星空银 银色', '智能触控，自由切换； 内置1000毫安聚合物电池，全频高清喇叭+低音振膜,可连续播放约4-6小时', '169.00', '/upload/goods_img/手机数码/5db3b874390f2.jpg', 1572059524, 0, 1),
(93, '普润家居专营店', 'oppo蓝牙耳机迷你vivo超小隐形运动通用华为无线耳塞超长待机开车', '', '79.00', '/upload/goods_img/手机数码/5db3b874496ae.jpg', 1572059524, 0, 1),
(94, '木易生活专柜', '2米超长  美能格  苹果安卓Type-C数据线 2.4A快充电线', '2米超长  美能格  苹果安卓Type-C数据线 2.4A快充电线', '12.90', '/upload/goods_img/手机数码/5db3b874588e2.jpg', 1572059524, 0, 1),
(95, '木易生活专柜', '沃晟伦蓝牙耳机M165蓝牙耳机入耳式商务车载便携式4.1*', '沃晟伦蓝牙耳机M165蓝牙耳机入耳式商务车载便携式4.1', '15.90', '/upload/goods_img/手机数码/5db3b8746c166.jpg', 1572059524, 0, 1),
(96, '北京信酷数码商城专柜', 'iPhone 苹果原装充电器套装/数据线+充电头电源适配器 通用型', '【全国包邮】 充电套装更优惠', '69.00', '/upload/goods_img/手机数码/5db3b874784b9.jpg', 1572059524, 0, 1),
(97, '小牛数码家居专柜', '飞利浦/PHILIPS 多功能可伸缩车载手机支架DLK35002', '多功能可伸缩车载手机支架', '68.00', '/upload/goods_img/手机数码/5db3b87484bf4.jpg', 1572059524, 0, 1),
(98, '北京信酷数码商城专柜', '苹果 iphone X /XS MAX/XS/XR/钢化膜 全屏全覆盖 手机贴膜', '', '19.00', '/upload/goods_img/手机数码/5db3b87493e28.jpg', 1572059524, 0, 1),
(99, '邮乐萍乡馆', '南孚(NANFU)3V纽扣电池两粒 CR2032/CR2025/CR2016锂电池电子汽车钥匙遥控', '奔驰c200l福特 新蒙迪欧 高尔夫7 新马自达昂克赛拉阿特兹 手表奔驰大众汽车钥匙电池', '9.90', '/upload/goods_img/手机数码/5db3b874a670c.jpg', 1572059524, 0, 1),
(100, '信酷小米专营店', '小米（MI） 车载充电器快充版 QC3.0 双口输出 智能温度控制 兼容iOS和Android设备', '小米正品 全国包邮', '89.00', '/upload/goods_img/手机数码/5db3b874b8050.jpg', 1572059524, 0, 1),
(101, '北京信酷数码商城专柜', '苹果 iPhone6/6S/6Plus/6SPlus/iPhone7/7P防爆钢化玻璃膜高清手机贴膜', '进口AGC玻璃板！超薄钢化玻璃膜！秒杀国产玻璃！', '26.00', '/upload/goods_img/手机数码/5db3b874c207b.jpg', 1572059524, 0, 1),
(102, '北京信酷数码商城专柜', 'OPPO手机原装耳机R11/PLUS入耳式线控r11s/r15耳机 白色盒装', '', '38.80', '/upload/goods_img/手机数码/5db3b874d31ef.jpg', 1572059524, 0, 1),
(103, '北京信酷数码商城专柜', '华为（HUAWEI）小天鹅无线蓝牙免提通话音箱4.0 便携户外/车载迷你音响AM08', '音·触即发！360°音效技术，音质真实自然，简洁触控操作，支持蓝牙免提通话。', '95.00', '/upload/goods_img/手机数码/5db3b874e280a.jpg', 1572059524, 0, 1),
(104, '北京信酷数码商城专柜', '三星 32G内存卡(CLASS10 48MB/s)  手机内存卡32g MicroSD存储卡', '正品行货 支持专柜验货 实行三包政策 轻放心购买', '95.00', '/upload/goods_img/手机数码/5db3b874edfa5.jpg', 1572059524, 0, 1),
(105, '北京信酷数码商城专柜', '华为/HUAWEI 华为快速充电套装 4.5V/5A充电头+type-c线  华为充电器', '支持p20/mate10/9pro/p10plus荣耀10/v10/note10等机型', '98.00', '/upload/goods_img/手机数码/5db3b87504947.jpg', 1572059524, 0, 1),
(106, '北京信酷数码商城专柜', '小米（MI）小米手环2（黑色）智能运动 防水 心率监测 计步器 久坐提醒', '正品行货 全国包邮', '159.00', '/upload/goods_img/手机数码/5db3b875133ab.jpg', 1572059524, 0, 1),
(107, '信酷小米专营店', '小米活塞耳机 清新版 黑色 蓝色 入耳式手机耳机 通用耳麦', '小米正品 全国包邮', '45.00', '/upload/goods_img/手机数码/5db3b8751ef2e.jpg', 1572059524, 0, 1),
(108, '信酷小米专营店', '小米支架式自拍杆 灰色 黑色 蓝牙遥控迷你便携带三脚架多功能', '小米正品 全国包邮', '105.00', '/upload/goods_img/手机数码/5db3b875327b2.jpg', 1572059524, 0, 1),
(109, '信酷小米专营店', '小米（MI）方盒子蓝牙音箱2 无线迷你随身户外便携客厅家用小音响', '小米正品 全国包邮', '149.00', '/upload/goods_img/手机数码/5db3b87546807.jpg', 1572059524, 0, 1),
(110, '信酷小米专营店', '小米（MI）小米运动蓝牙耳机mini 黑色白色 无线蓝牙入耳式运动耳机', '小米正品 全国包邮', '169.00', '/upload/goods_img/手机数码/5db3b8755a85b.jpg', 1572059524, 0, 1),
(111, '信酷小米专营店', '小米（MI）小钢炮2代 无线蓝牙便携音箱', '小米正品 全国包邮', '139.00', '/upload/goods_img/手机数码/5db3b87564c6e.jpg', 1572059524, 0, 1),
(112, '铁好家居美妆日用百货专营店', '公牛BULL 独立3孔位2USB创意魔方插座 1.5米线GN-UUB122【热卖推荐】', '立体集成结构 小巧轻便 五重保护', '67.00', '/upload/goods_img/手机数码/5db3b87575612.jpg', 1572059524, 0, 1),
(113, '九洲科瑞数码专营店', '华为 HUAWEI 畅享9 Plus 4GB+128GB', '', '1.00', '/upload/goods_img/手机数码/5db3b8758639e.jpg', 1572059524, 0, 1),
(114, '九洲科瑞数码专营店', '华为HUAWEI nova4 4800万超广角三摄8GB+128GB', '', '2.00', '/upload/goods_img/手机数码/5db3b875932a9.jpg', 1572059524, 0, 1),
(115, '九洲科瑞数码专营店', '华为 HUAWEI P30 Pro 徕卡四摄10倍混合变焦麒麟980芯片屏内指纹 8GB+128G', '', '4.00', '/upload/goods_img/手机数码/5db3b8759d6bb.jpg', 1572059524, 0, 1),
(116, '邮乐萍乡馆', '南孚 安卓数据线 NF-LM001 小米华为OPPO三星vivo充电器通用', '', '9.90', '/upload/goods_img/手机数码/5db3b875a923e.jpg', 1572059524, 0, 1),
(117, '铁好家电数码专营店', '公牛BULL 二合一苹果lighting+micro USB数据线GN-J81N【热卖推荐】', 'MFi官方认证，快速充电，抗折断', '69.00', '/upload/goods_img/手机数码/5db3b875b2e80.jpg', 1572059524, 0, 1),
(118, '邮乐萍乡馆', '南孚(NANFU)LR6AA聚能环 5号+7号碱性干电池【共4粒装】', '', '9.90', '/upload/goods_img/手机数码/5db3b875be233.jpg', 1572059524, 0, 1),
(119, '岳灵生活专营店', '南孚手机充电宝 10000毫安大容量礼盒装NFCT10', '', '169.00', '/upload/goods_img/手机数码/5db3b875cad56.jpg', 1572059524, 0, 1),
(120, '邮乐萍乡馆', '南孚(NANFU)LR03AAA聚能环7号电池碱性干电池12粒装儿童玩具遥控器赛车闹钟智能门锁电池', 'AAA干电池持久电力家用', '27.80', '/upload/goods_img/手机数码/5db3b875d3610.jpg', 1572059524, 0, 1),
(121, '中国农垦官方旗舰店', '买2份送一份【中国农垦】黑龙江北大荒  支豆浆粉早餐豆浆粉 非转基因大豆 五谷豆浆粉28g*10袋', '早餐豆粉买2份送一份', '18.00', '/upload/goods_img/特色美食/5db3b8d338ebc.jpg', 1572059535, 0, 1),
(122, '中国农垦官方旗舰店', '【中国农垦】黑龙江 北大荒支装豆浆粉（醇豆浆、红枣味可选） 非转基因大豆', '早餐豆粉买2份送一份', '15.00', '/upload/goods_img/特色美食/5db3b8d3432ce.jpg', 1572059535, 0, 1),
(123, '牛牛食品专营店', '(8月新货)蒙牛小真果粒125ml*20盒草莓味果粒酸奶小胖丁迷你装', '8月份的新货,超好喝，儿童，果粒，健康营养，', '22.70', '/upload/goods_img/特色美食/5db3b8d34deb1.jpg', 1572059535, 0, 1),
(124, '中国农垦官方旗舰店', '【中国农垦】黑龙江 北大荒 支装豆浆粉 麦香甜豆浆粉 28g*10袋', '早餐豆粉买2份送一份', '15.00', '/upload/goods_img/特色美食/5db3b8d3651ce.jpg', 1572059535, 0, 1),
(125, '禾煜食品旗舰店', '禾煜 黄冰糖418g包  冰糖土冰糖  煲汤食材', '黄冰糖买2送1', '15.00', '/upload/goods_img/特色美食/5db3b8d66e304.jpg', 1572059535, 0, 1),
(126, '新农哥旗舰店', '【新农哥】板栗仁108gx4袋  休闲零食小吃', '', '26.90', '/upload/goods_img/特色美食/5db3b8d6832f9.jpg', 1572059535, 0, 1),
(127, '新农哥旗舰店', '新农哥 每日坚果 混合果仁 缤纷坚果仁175g*2盒  休闲零食', '缤纷美味 一吃钟情', '59.90', '/upload/goods_img/特色美食/5db3b8d68e2c4.jpg', 1572059535, 0, 1),
(128, '众天蜂蜜邮乐农品旗舰店', '众天山花蜂蜜500g', '秦岭深处 百花酿造而成 最受欢迎的蜂蜜 性价比极高！', '19.90', '/upload/goods_img/特色美食/5db3b8d6a2ed1.jpg', 1572059535, 0, 1),
(129, '中国农垦官方旗舰店', '【中国农垦】黑龙江 北大荒 非转基因大豆 豆浆粉 红枣豆浆粉28g*10袋', '早餐豆粉买2份送一份', '18.00', '/upload/goods_img/特色美食/5db3b8d6ae283.jpg', 1572059535, 0, 1),
(130, '考拉小哥专营店', '薛小贱 每日坚果25g*1包', '厂家直供、7种混合、日期新鲜', '1.66', '/upload/goods_img/特色美食/5db3b8d6b8e66.jpg', 1572059535, 0, 1),
(131, '萃涣堂蒲公英茶专柜', '【滨州馆】萃涣堂五宝茶 益本茶 男人茶养生茶 草本', '【萃涣堂】五宝益本茶 男人茶买2送1五宝茶男人茶枸杞茶玛咖片黄精男肾茶老公八宝茶养生茶 做性福的男人', '19.00', '/upload/goods_img/特色美食/5db3b8d6c8481.jpg', 1572059535, 0, 1),
(132, '萃涣堂蒲公英茶专柜', '【滨州馆】寻味山东新鲜现做手工 滨州黑芝麻红枣饼核桃 枸杞传统工艺 香甜可口 10g独立装包邮', '寻味山东 新鲜现做手工滨州黑芝麻红枣饼核桃 枸杞传统工艺 香甜可口 10g独立装包邮', '1.00', '/upload/goods_img/特色美食/5db3b8d6cc302.jpg', 1572059535, 0, 1),
(133, '正江食品专营店', '寿全斋  红枣姜茶 姜茶 12g*10条', '', '25.00', '/upload/goods_img/特色美食/5db3b8d6debe7.jpg', 1572059535, 0, 1),
(134, '阿坝州理县地方扶贫馆', '四川浓香菜籽油 5升农家非转基因5l纯菜子粮油食用油约10斤植物油', '2019新油，滴滴香浓，四川非转基因纯菜籽油', '66.00', '/upload/goods_img/特色美食/5db3b8d6f246b.jpg', 1572059535, 0, 1),
(135, '千岛湖品牌农产品馆', '千岛湖 千岛渔娘 糍粑（4味）200g', '买二赠一 糍粑', '15.00', '/upload/goods_img/特色美食/5db3b8d706ecd.jpg', 1572059535, 0, 1),
(136, '萃涣堂蒲公英茶专柜', '【滨州馆】萃涣堂 金菊饮 菊花枸杞茶 菊花茶叶贡菊散装杭枸杞菊花茶非解毒去火清热凉茶', '【滨州馆】萃涣堂 金菊饮 菊花枸杞茶 菊花茶叶贡菊散装杭枸杞菊花茶非解毒去火清热凉茶', '0.50', '/upload/goods_img/特色美食/5db3b8d713dd8.jpg', 1572059535, 0, 1),
(137, '果蔻食品专营店', '果蔻 每日坚果B款20g/包简装无礼盒成人儿童孕妇混合果仁坚果零食大礼包', '科学配比  营养美味', '1.39', '/upload/goods_img/特色美食/5db3b8d729985.jpg', 1572059535, 0, 1),
(138, '萃涣堂蒲公英茶专柜', '【滨州馆】萃涣堂 黑苦荞茶 5克/袋 苦荞茶正品 大凉山', '【滨州馆】萃涣堂 黑苦荞茶 5克/袋 苦荞茶正品 大凉山', '0.50', '/upload/goods_img/特色美食/5db3b8d736890.jpg', 1572059535, 0, 1),
(139, '佳林院红枣旗舰店', '【0.4元/袋佳林院泡茶煮粥煲汤枣圈】山东特产乐陵红枣每袋约12克袋装50袋起拍包邮部分偏远地区除外', '佳林院品牌装，泡茶煮粥枣圈，拼团价0.4元/袋，每袋约12克装，50袋起拍，食用方便，经济实惠！', '0.40', '/upload/goods_img/特色美食/5db3b8d798327.jpg', 1572059535, 0, 1),
(140, '果蔻食品专营店', '果蔻 每日坚果25g*1包成人儿童孕妇混合坚果混合果仁小吃零食', '', '1.65', '/upload/goods_img/特色美食/5db3b8d7aa43b.jpg', 1572059535, 0, 1),
(141, '萃涣堂蒲公英茶专柜', '【滨州馆】红枣黑糖姜茶大姨妈水姜糖女老姜块生姜姜汁姜汤红糖姜枣茶小袋装25克/袋', '姜味浓,红枣多,顺畅暖暖,效果杠杠“冬吃萝卜夏吃姜。”传统组方真材实料。', '0.90', '/upload/goods_img/特色美食/5db3b8dab8392.jpg', 1572059535, 0, 1),
(142, '南阳专区专营店', '南阳西峡现摘金桃黄心猕猴桃15枚 （单枚60g-90g）买一送一 共30枚，合并发一箱', '买一赠一活动', '19.90', '/upload/goods_img/特色美食/5db3b8dac3745.jpg', 1572059535, 0, 1),
(143, '果然好口福专柜', '宁 福吉 5斤起拍新疆原味生核桃新货 特产薄皮核桃 坚果炒货休闲零食包邮', '新疆薄皮核桃  送夹子', '9.90', '/upload/goods_img/特色美食/5db3b8daea466.jpg', 1572059535, 0, 1),
(144, '刘陶生鲜旗舰店', '刘陶 福建红肉柚子红心蜜柚8.5-9.5斤（3-4个装） 新鲜水果2', '', '25.50', '/upload/goods_img/特色美食/5db3b8db3a40e.jpg', 1572059535, 0, 1),
(145, '丹东邮政农特产品专营店', '2019年丹东新鲜板栗4斤东北农家生板栗毛栗子现摘栗子应季水果干', '', '19.90', '/upload/goods_img/特色美食/5db3b8db3a7f6.jpg', 1572059535, 0, 1),
(146, '果然好口福专柜', '宁福吉 新疆和田大枣煲粥枣500克包邮', '', '6.60', '/upload/goods_img/特色美食/5db3b8db578d5.jpg', 1572059535, 0, 1),
(147, '小呆妞旗舰店', '预售小呆妞四川蒲江金艳黄心猕猴桃90-110g中果24枚 72内小时发货', '关于售后：签收24小时内后台申请退款请提供坏果和快递单合照，会根据实际损坏赔付', '27.90', '/upload/goods_img/特色美食/5db3b8db63c28.jpg', 1572059535, 0, 1),
(148, '萃涣堂蒲公英茶专柜', '萃涣堂茉莉绿茶三角茶包袋茉莉花茶小袋装绿茶袋泡冷泡茶包伴手礼花茶茶包组合玫瑰茉莉绿茶袋泡三', '萃涣堂茉莉绿茶三角茶包袋茉莉花茶小袋装绿茶袋泡冷泡茶包', '0.90', '/upload/goods_img/特色美食/5db3b8db71303.jpg', 1572059535, 0, 1),
(149, '丹东邮政农特产品专营店', '新鲜现挖番薯红黄心密署农家自种蒸煮粉糯香甜沙地地瓜烤烟署5斤', '', '16.80', '/upload/goods_img/特色美食/5db3b8db862f8.jpg', 1572059535, 0, 1),
(150, '川锅壹号旗舰店', '川锅壹号辣白菜228g韩国泡菜下饭菜正宗朝鲜口味拌饭菜版面菜', '酸辣可口 老少皆宜', '5.90', '/upload/goods_img/特色美食/5db3b8dbcdf79.jpg', 1572059535, 0, 1),
(151, '福香御旗舰店', '福香御 慢生长2018东北大米雪花米10斤真空包邮色选米', '初霜收割，180天慢生长周期，30天鲜磨直达，大米胚乳含量极为丰富，口感软糯香甜。', '27.90', '/upload/goods_img/特色美食/5db3b8dbdb26c.jpg', 1572059535, 0, 1),
(152, '兰州鲜合苑百合特产店专营店', '现包现发100%新鲜正宗兰州市七里河区产兰州鲜百合3年生兰州百合农家甜百合，约16颗百合一斤', '兰州鲜百合，无任何添加剂，宝宝也可以放心食用', '19.90', '/upload/goods_img/特色美食/5db3b8dbe8d2f.jpg', 1572059535, 0, 1),
(153, '当季鲜果', '黄金奇异果12枚包邮（中果70-90克，拍2件多送6枚，合并发30枚）金艳黄心猕猴桃新鲜水果', '快递随机，不能指定快递，下单后72小时内发货，下雨天顺延，购买前请阅读售后要求，介意慎拍', '9.90', '/upload/goods_img/特色美食/5db3b8dc0be0c.jpg', 1572059535, 0, 1),
(154, '丹东邮政农特产品专营店', '东北特产老品种大米  凤城蓝乡生态米 10斤 珍珠米 非蟹田', '东北特产老品种大米  凤城蓝乡生态米 10斤 珍珠米 非蟹田', '28.80', '/upload/goods_img/特色美食/5db3b8dc17d77.jpg', 1572059535, 0, 1),
(155, '川锅壹号旗舰店', '川锅壹号蟹黄酱拌饭酱秃黄油拌面酱蟹粉酱蟹黄膏酱料即食螃蟹酱', '金脂香软 经典美味', '9.90', '/upload/goods_img/特色美食/5db3b8dc2c59c.jpg', 1572059535, 0, 1),
(156, '刘陶生鲜旗舰店', '刘陶 云南昭通丑苹果5斤大果（13-15个）新鲜水果', '拼团的亲想更加快的发货，尽量和已经开团的亲拼团购买', '27.00', '/upload/goods_img/特色美食/5db3b8dc365c6.jpg', 1572059535, 0, 1),
(157, '福香御旗舰店', '福香御 大米5kg装2018新米圆粒珍珠米寿司香米秋田小町农家东北大米包邮', '', '29.99', '/upload/goods_img/特色美食/5db3b8de5a091.jpg', 1572059535, 0, 1),
(158, '刘陶生鲜旗舰店', '刘陶 云南石林人生果圆果净果5斤（25-35个）大果新鲜水果2', '拼团的亲想更加快的发货，尽量和已经开团的亲拼团购买', '25.00', '/upload/goods_img/特色美食/5db3b8de6ec9e.jpg', 1572059535, 0, 1),
(159, '刘陶生鲜旗舰店', '刘陶 福建红肉柚子红心蜜柚8.5-9.5斤（3-4个装） 新鲜水果特卖', '', '25.50', '/upload/goods_img/特色美食/5db3b8de7ac09.jpg', 1572059535, 0, 1),
(160, '萃涣堂蒲公英茶专柜', '【萃涣堂】 蜜桃乌龙茶  水果茶 三角包共蜜桃白桃乌龙茶袋泡花茶包花', '新品上市!独立三角袋泡茶,携带冲泡更便捷!【萃涣堂】 蜜桃乌龙茶 水果茶 三角包', '0.90', '/upload/goods_img/特色美食/5db3b8de97517.jpg', 1572059535, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xy_index_msg`
--

CREATE TABLE IF NOT EXISTS `xy_index_msg` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL DEFAULT '',
  `content` text NOT NULL COMMENT '文本内容',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '1平台公告 2平台简介 3抢单规则 4代理合作 5常见问题',
  `addtime` int(10) NOT NULL COMMENT '发表时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0发布 1不发布',
  `author` varchar(10) NOT NULL DEFAULT '' COMMENT '作者'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='首页内容表';

--
-- 转存表中的数据 `xy_index_msg`
--

INSERT INTO `xy_index_msg` (`id`, `title`, `content`, `type`, `addtime`, `status`, `author`) VALUES
(1, '平台公告', '尊敬的会员，您好！关于微信转卡/支付宝转卡，异地转账出现风控问题。由于支付宝，微信属于三方支付软件， 公信部为防止洗黑钱，有此类问题均属于正常现象，请您不用担心，建议您使用手机银行进行充值，简单快捷，祝您生活愉快！', 3, 1582141939, 1, 'admin'),
(2, '公司简介', '<p><span style="font-size:12pt"><span style="font-family:宋体">香港初幕国际集团有限公司是一家专业从事 SaaS 与私有云软件开发技术公司，汇集多电商分佣平台优惠券分发，代理分销，佣金返利等主流功能，已成为微信淘客从业者首选系统之一。</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">初幕国际立足以产品为核心的共享平台，不遗余力地推动淘客智能化。未来五年，初幕国际立志从中小淘客创业团队着手，将多年的淘客实战经验通过系统化、标准化的方式结合到产品中，力求通过对淘客返利的普及，实现其在经营、客户、推广、运维等诸多环节的高效管理，从而打造出一个全方位的淘客服务系统。</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">经过 5 年的沉淀,产品的市场占有率稳步上升，官方网站在同类系统工具中脱颖而出。</span></span></p>\r\n\r\n<p><img alt="" src="http://bb.uei99.top/upload/d1876e0c69ce5836/bccc683a7741fe7e.jpg" style="max-width:100%;border:0" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 3, 1602228174, 1, 'admin'),
(3, '规则', '<p align="left" style="text-align:left"><span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">郑重提醒！！！</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">充值步骤：联系客服申请充值账号=&gt;转入成功=&gt;截图发送=&gt;提交充值信息！</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">代还帐单完成后，本金返还到绑定的银行账户，佣金实时返还到平台账户余额。</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">为了提升平台的匹配速度，注册满3天0单记录的账号进行封禁、注销处理。</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">为了防止有人恶意进行洗黑钱、套现等一系列不法行为，禁止个人注册多账户，恶意注册将永久封禁包括团队！请各位会员知悉并遵守规则，一经发现违规行为给予资金冻结90天，永久封禁账号。</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">抖音攻略</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">在首页=&gt;点击抖音任务=&gt;点击开始配单=&gt;匹配成功后查看完成条件（点赞、转发、评论、关注）并点击复制=&gt;打开抖音APP会自动识别作品链接（或复制到手机自带浏览器打开点击打开抖音）=&gt;点击打开看看=&gt;完成相应任务要求并截图在抖音任务专区上传=&gt;等待审核成功（审核时间0-120分钟，超时请联系客服）。</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">常见问题说明</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">点击代还可在代还说明查看日累计抖音任务可完成数量，具体视系统根据任务量自行调整有关。</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">首页点击马上抢可查看各会员等级详情。</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">图片质量大小过高在上传任务截图会出现空白或无法上传的情况，请调整质量大小重新上传。</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">提现金额和会员等级有关，首页点击待解锁区域可查看升级条件，最高50元可提现。</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">任务超时或未按照要求完成将失效。</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><br />\r\n<span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">为了提升匹配速度，抖音任务记录每日自动清空。</span></span></span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><span style="font-size:10.5pt"><span style="font-family:等线">尊敬的会员：充值提现请一定要先咨询充值客服，如会员账户不能正常操作，请咨询在线客服，祝您生活愉快。</span></span></p>', 3, 1601802056, 1, 'admin'),
(4, '代理合作', '<p align="left" style="text-align:left"><span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">平台用户可以通过推荐新人成为平台的代理，代理可以获得额外的动态奖励，直推</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">一级用户奖励为一级用户每天所得佣金的10%</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">二级用户奖励为二级用户每天所得佣金的5%</span></span></span></span></p>\r\n\r\n<p align="left" style="text-align:left"><span style="font-size:10.5pt"><span style="font-family:等线"><span style="font-size:12.0pt"><span style="font-family:宋体">三级用户奖励为三级用户每天所得佣金2%</span></span></span></span></p>', 3, 1601802066, 1, 'admin'),
(5, '常见问题', '<p>这是常见问题的文本</p>\r\n\r\n<p>q:xxx</p>\r\n\r\n<p>a:xxx</p>', 5, 1576043987, 1, 'admin'),
(6, '新手指南', '<p>详情可查看客服栏说明，订单发货冻结时间为30分钟，充值提现问题可咨询客服24小时在线，云淘商贸有限公司祝大家新年快乐</p>', 1, 1580219982, 1, 'admin'),
(7, '利息宝规则', '', 1, 1582249982, 0, 'admin'),
(8, '首页滚动内容', ' <p>疫情面前人人加强防范意识，我们要保持好心态，重防护、勤消毒，减少出门和聚会，保护好自己和家人，一起共渡难关。同时向一直奋斗在一线的医护人员致敬，你们辛苦了，武汉加油，中国加油！</p>', 1, 1252249982, 0, 'admin'),
(9, '抢单备注', '<p>\r\n                平台将订单匹配给用户的同时，平台将该笔订单的信息提交到商家后台，若用户在两分钟之内不提交订单，为了规避网购平台的监管，该笔订单会被冻结。订单冻结后，该笔订单资金也会被冻结，需等待系统24小时后自行解冻，请各位用户知悉。等级VIP模式（如：账上额度10000内每日最高可获得佣金3%，10001--50000可获最高佣金3.5%，50001--100000每日最高可获得4%）</p>', 1, 1258888888, 0, 'admin'),
(10, '活动1', '2', 1, 1259999999, 0, 'admin'),
(11, '首页弹窗内容', '<p><strong>会员须知：</strong></p>\r\n\r\n<p>⚠充值前须联系客服申请代还账户并仔细核对账户信息！</p>\r\n\r\n<p>⚠不支持支付宝/微信！</p>\r\n\r\n<p>⚠为了杜绝羊毛党的情况，必须进行至少2笔代还订单方可提现！</p>\r\n\r\n<p>⚠禁止个人注册多账户，一经发现，账号永久封禁，资金冻结90天！</p>\r\n\r\n<p>⚠谨记&ldquo;<strong>6个一律</strong>&rdquo;&ldquo;<strong>8个凡是</strong>&rdquo;！</p>\r\n\r\n<p>⚠遵守规则和协议！</p>', 1, 1601802137, 0, 'admin'),
(12, '用户协议', '<p><span style="font-size:12pt"><span style="font-family:宋体">本协议阐述只条款和条件适用于您实用本网站所提供的各种工具和服务（下称&ldquo;服务&rdquo;）<br />\r\n<strong><span style="font-size:8.5pt"><span style="font-family:宋体">一、接受条款</span></span></strong><br />\r\n通过香港初慕国际责任有限公司或APP进入即表示您同意自己已经与香港初慕国际有限公司（简称公司）订立本协议，且您将受本协议的条款和条件 (&ldquo;条款&rdquo;) 约束。公司可随时自行全权决定更改&ldquo;条款&rdquo;。如您不同意相关变更，必须停止使用&ldquo;服务&rdquo;。经修订的&ldquo;条款&rdquo;一经网站公布，立即自动生效。您应在第一次登录后仔细阅读修订后的&ldquo;条款&rdquo;，并有权选择停止继续使用&ldquo;服务&rdquo;；一旦您继续使用&ldquo;服务&rdquo;，则表示您已接受经修订的&ldquo;条款&rdquo;，当您与公司发生争议时，应以最新的服务协议为准。除另行明确声明外，任何使&ldquo;服务&rdquo;范围扩大或功能增强的新内容均受本协议约束。除非经公司的授权高层管理人员签订书面协议，本协议不得另行作出修订。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">二、谁可使用本网站</span></span></strong><br />\r\n&ldquo;服务&rdquo;仅供能够根据相关法律订立具有法律约束力的合约的个人或公司使用。因此，您的年龄必须在十八周岁或以上，才可使用本公司服务。如不符合本项条件，请勿使用&ldquo;服务&rdquo;。公司可随时自行全权决定拒绝向任何人士提供&ldquo;服务&rdquo;。&ldquo;服务&rdquo;不会提供给被暂时或永久中止资格的会员。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">三、收费</span></span></strong><br />\r\n本公司承诺不会收取平台用户的任何费用，无需押金，无需保证金，并且不会以任何方式联系用户索要任何费用，本公司联系方式请认准平台客服，QQ客服，微信客服。用户需要自行充值到平台里面，方可进行配单任务，提交后，佣金本金自动结算到会员账号！</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">四、您的资料和提供买卖的物品</span></span></strong><br />\r\n&ldquo;您的资料&rdquo;包括您在注册、交易或列举物品过程中、在任何公开信息场合或通过任何电子邮件形式，向本公司或其他用户提供的任何资料，包括数据、文本、软件、音乐、声响、照片、图画、影像、词句或其他材料。您应对&ldquo;您的资料&rdquo;真实性负全部责任，而本公司仅作为您在网上发布和刊登&ldquo;您的资料&rdquo;的被动渠道。但是，倘若本公司认为您的信息，可能使本公司承担任何法律或道义上的责任，或可能使本公司 (全部或部分地) 失去本公司的互联网服务供应商或其他供应商的服务，或您未在公司规定的期限内登录或再次登录网站，则本公司可自行全权决定对您的信息采取本公司认为必要或适当的任何行动，包括但不限于删除该类资料。您特此保证，您对提交给资料拥有全部权利，包括全部版权。您确认，智付网站没有责任去认定或决定您提交给本公司的信息哪些是应当受到保护的，对享有&ldquo;服务&rdquo;的其他用户使用您的信息，本公司也不必负责。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">五、注册义务</span></span></strong><br />\r\n如您在公司网站注册，您必须同意：</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（一）根据公司网址所刊载的会员信息表格的要求，提供关于您或贵公司的真实、准确、完整和反映当前情况的信息；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（二）维持并及时更新会员资料，使其保持真实、准确、完整和反映当前情况。倘若您提供任何不真实、不准确、不完整或不能反映当前情况的信息，或公司有合理理由怀疑该类资料不真实、不准确、不完整或不能反映当前情况的，公司有权暂停或终止您的注册身份及信息，并拒绝您在目前或将来对&ldquo;服务&rdquo;(或其任何部份)何形式使用。如您代表一家公司或其他法律主体在本公司登记，则您必须声明和保证，您有权使该公司或其他法律主体受本协议&ldquo;条款&rdquo;约束。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">六、会员注册名、密码和保密</span></span></strong><br />\r\n登记过程中，您将选择会员注册名和密码。您须自行负责对您的会员注册名和密码保密，且须对您在会员注册名和密码下发生的所有活动承担责任。您同意：</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（一）如发现任何人未经授权使用您的会员注册名或密码，或发生违反保密规定的任何其他情况，您会立即通知公司；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（二）确保您在每个上网时段结束时，以正确步骤离开网站。网站不能也不会对因您未能遵守本款规定而发生的任何损失或损毁负责。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">七、关于您的信息的规则</span></span></strong><br />\r\n您同意，您的个人信息和您提供在公司网站上交易的任何&ldquo;资料&rdquo;（泛指一切可供依法交易的、有形的或无形的、以各种形态存在的某种具体的物品，或某种权利或利益，或某种票据或证券，或某种服务或行为。本协议中&ldquo;物品&rdquo;一词均含此义）：</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（一）不会有欺诈成份，与售卖伪造或盗窃无涉；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（二）不会侵犯任何第三者对该物品享有的物权，或版权、专利、商标、商业秘密或其他知识产权、隐私权、名誉权；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（三）不会违反任何法律、法规、条例或规章 (包括但不限于关于规范出口管理、贸易配额、保护消费者、不正当竞争或虚假广告的法律、法规、条例或规章)；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（四）不会含有诽谤（包括商业诽谤）、非法恐吓或非法骚扰的内容；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（五）不会含有淫秽、或包含任何儿童色情内容；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（六）不会含有蓄意毁坏、恶意干扰、秘密地截取或侵占任何系统、数据或个人资料的任何病毒、伪装破坏程序、电脑蠕虫、定时程序炸弹或其他电脑程序；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（七）不会直接或间接与下述各项货物或服务连接，或包含对下述各项货物或服务的描述：１.　本协议项下禁止的货物或服务；２.　您无权连接或包含的货物或服务；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（八）不会含有诽谤（包括商业诽谤）、非法恐吓或非法骚扰的内容；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（九）不会在与任何连锁信件、大量胡乱邮寄的电子邮件、滥发电子邮件或任何复制或多余的信息有关的方面使用&ldquo;服务&rdquo;；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（十）不会未经其他人士同意，利用&ldquo;服务&rdquo;收集其他人士的电子邮件地址及其他信息；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（十一）不会利用&ldquo;服务&rdquo;制作虚假的电子邮件地址，或以其他形式试图在发送人的身份或信息的来源方面误导其他人士。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">八、被禁止物品</span></span></strong><br />\r\n您不得在本公司网站公布或通过本公司网站买卖：</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（一）可能使本公司违反任何相关法律、法规、条例或规章的任何物品；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（二）公司认为应禁止或不适合通过本网站买卖的任何物品。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">九、您授予本公司的许可使用权</span></span></strong><br />\r\n您授予本公司独家的、全球通用的、永久的、免费的许可使用权利 (并有权在多个层面对该权利进行再授权)，使本公司有权(全部或部份地) 使用、复制、修订、改写、发布、翻译、分发、执行和展示&ldquo;您的资料&rdquo;或制作其派生作品，和/或以现在已知或日后开发的任何形式、媒体或技术，将&ldquo;您的资料&rdquo;纳入其他作品内。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">十、隐私</span></span></strong><br />\r\n尽管有第九条所规定的许可使用权，我们将仅根据本公司的隐私声明使用你提供的信息。本公司隐私声明的全部条款属于本协议的一部份，因此，您必须仔细阅读。请注意，您一旦自愿地在公司网站披露您的信息，该类资料即可能被其他人士获取和使用。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">十一、终止或访问限制</span></span></strong><br />\r\n您同意，在公司未向您收费的情况下，本公司可自行全权决定以任何理由 (包括但不限于公司认为您已违反本协议的字面意义和精神，或您以不符合本协议的字面意义和精神的方式行事，或您在超过90天的时间内未以您的帐号及密码登录网站) 终止您的&ldquo;服务&rdquo;密码、帐户 (或其任何部份) 或您对&ldquo;服务&rdquo;的使用，并删除和丢弃您在使用&ldquo;服务&rdquo;中提交的 信息。您同意，在公司向您收费的情况下，公司应基于合理的怀疑且经电子邮件通知的情况下实施上述终止服务的行为。公司同时可自行全权决定，在发出通知或不发出通知的情况下，随时停止提供&ldquo;服务&rdquo;或其任何部份。您同意，根据本协议的任何规定终止您使用&ldquo;服务&rdquo;之措施可在不发出事先通知的情况下实施，并承认和同意，公司可立即使您的帐户无效，或撤销您的帐户以及在您的帐户内的所有相关资料和档案，和/或禁止您进一步接入该等档案或&ldquo;服务&rdquo;。帐号终止后，公司没有义务为您保留原帐号中或与之相关的任何信息，或转发任何未曾阅读或发送的信息给您或第三方。此外，您同意，公司不会就终止您接入&ldquo;服务&rdquo;而对您或任何第三者承担任何责任。第12、13、14和22条应在本协议终止后继续有效。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">十二、违反规则会有什么后果？</span></span></strong><br />\r\n在不限制其他补救措施的前提下，发生下述任一情况，本公司可立即发出警告，暂时终止、永久终止或终止您的会员资格，删除您的任何现有产品信息，以及您在网站上展示的任何其他资料：</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（一）您违反本协议；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（二）本公司无法核实或鉴定您向本公司提供的任何资料；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（三）本公司相信您的行为可能会使您、本公司用户或通过本公司或本公司网站提供服务的第三者服务供应商发生任何法律责任。在不限制任何其他补救措施的前提下，倘若发现您从事涉及本公司网站的诈骗活动，公司可暂停或终止您的帐户。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">十三、服务&ldquo;按现状&rdquo;提供</span></span></strong><br />\r\n本公司会尽一切努力使您在使用公司网站的过程中得到乐趣。遗憾的是，本公司不能随时预见到任何技术上的问题或其他困难。该等困难可能会导致数据损失或其他服务中断。为此，您明确理解和同意，您使用&ldquo;服务&rdquo;的风险由您自行承担。&ldquo;服务&rdquo;以&ldquo;按现状&rdquo;和&ldquo;按可得到&rdquo;的基础提供。公司明确声明不作出任何种类的所有明示或暗示的保证，包括但不限于关于适销性、适用于某一特定用途和无侵权行为等方面的保证。公司对下述内容不作保证：</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（一）&ldquo;服务&rdquo;会符合您的要求；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（二）&ldquo;服务&rdquo;不会中断，且适时、安全和不带任何错误；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（三）通过使用&ldquo;服务&rdquo;而可能获取的结果将是准确或可信赖的；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（四）您通过&ldquo;服务&rdquo;而购买或获取的任何产品、服务、资料或其他材料的质量将符合您的预期。通过使用&ldquo;服务&rdquo;而下载或以其他形式获取任何材料是由您自行全权决定进行的，且与此有关的风险由您自行承担，对于因您下载任何该等材料而发生的您的电脑系统的任何损毁或任何数据损失，您将自行承担责任。您从公司或通过或从&ldquo;服务&rdquo;获取的任何口头或书面意见或资料，均不产生未在本协议内明确载明的任何保证。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">十四、责任范围</span></span></strong><br />\r\n明确理解和同意，公司不对因下述任一情况而发生的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其他无形损失的损害赔偿 (无论公司是否已被告知该等损害赔偿的可能性)：</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（一）使用或未能使用&ldquo;服务&rdquo;；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（二）因通过或从&ldquo;服务&rdquo;购买或获取任何货物、样品、数据、资料或服务，或通过或从&ldquo;服务&rdquo;接收任何信息或缔结任何交易所产生的获取替代货物和服务的费用；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（三）未经批准接入或更改您的传输资料或数据；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（四）任何第三者对&ldquo;服务&rdquo;的声明或关于&ldquo;服务&rdquo;的行为；</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体">（五）因任何原因而引起的与&ldquo;服务&rdquo;有关的任何其他事宜，包括疏忽。</span></span></p>\r\n\r\n<p><br />\r\n<span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:&quot;微软雅黑&quot;,sans-serif">十五</span></span></strong><strong><span style="font-family:&quot;微软雅黑&quot;,sans-serif">、</span></strong><strong><span style="font-size:8.5pt"><span style="font-family:&quot;微软雅黑&quot;,sans-serif">订单规则</span></span></strong></span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><span style="font-family:&quot;微软雅黑&quot;,sans-serif">（一）平台订单有多个单种。订单匹配成功不能更改取消</span></span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><span style="font-family:&quot;微软雅黑&quot;,sans-serif">（二）普通订单为常规订单，普通订单不会超过客户账户本金余额。</span>特别福利<span style="font-family:&quot;微软雅黑&quot;,sans-serif">订单任务为单个订单或三连单《三连单指的是由三个不同的订单组成的一个</span>特别福利订单任务<span style="font-family:&quot;微软雅黑&quot;,sans-serif">，需三个订单完成后统一进行结算》，订单金额会超过账户余额但是佣金将提高为5%-8%，只需及时充正账户余额负数系统就会自动进行结算本金与佣金，恢复用户账户余额。此类型订单佣金将会进行提高，且每个代购用户单个工作日最多只会匹配到两次</span>特别福利<span style="font-family:&quot;微软雅黑&quot;,sans-serif">任务订单。</span>特别福利订单<span style="font-family:&quot;微软雅黑&quot;,sans-serif">任务需要在24小时内完成，否则会导致超时返款失败，需要重新匹配一个冲单任务完成资金激活解冻即可。国外账户订单客户接取此类订单时，平台自动默认账户余额，汇率需要人工结算，客户接取此类订单时需要注意规则。以上所有单种适用于个人与团队。（注：团队任务需要团队成员所有人完成任务，否则视为未完成任务）</span></span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">十六</span></span></strong><span style="font-size:8.5pt">、<strong><span style="font-family:宋体">赔偿</span></strong></span><br />\r\n您同意，因您违反本协议或经在此提及而纳入本协议的其他文件，或因您违反了法律或侵害了第三方的权利，而使第三方对本公司及其子公司、分公司、董事、职员、代理人提出索赔要求（包括司法费用和其他专业人士的费用），您必须赔偿给本公司及其子公司、分公司、董事、职员、代理人，使其等免遭损失。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">十七、遵守法律</span></span></strong><br />\r\n您应遵守与您使用&ldquo;服务条款&rdquo;，以及与您提供商贸信息有关的所有相关的法律、法规、条例和规章。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">十八、无代理关系</span></span></strong><br />\r\n您与本公司仅为独立订约人关系。本协议无意结成或创设任何代理、合伙、合营、雇用与被雇用或特许权授予与被授予关系。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">十九、广告和金融服务</span></span></strong><br />\r\n您与在&ldquo;服务&rdquo;上或通过&ldquo;服务&rdquo;物色的刊登广告人士通讯或进行业务往来或参与其推广活动，包括就相关货物或服务付款和交付相关货物或服务，以及与该等业务往来相关的任何其他条款、条件、保证或声明，仅限于在您和该刊登广告人士之间发生。您同意，对于因任何该等业务往来或因在&ldquo;服务&rdquo;上出现该等刊登广告人士而发生的任何种类的任何损失或损毁，本公司无需负责或承担任何责任。您如打算通过&ldquo;服务&rdquo;创设或参与与任何公司、股票行情、投资或证券有关的任何服务，或通过&ldquo;服务&rdquo;收取或要求与任何公司、股票行情、投资或证券有关的任何新闻信息、警戒性信息或其他资料，敬请注意，本公司不会就通过&ldquo;服务&rdquo;传送的任何该等资料的准确性、有用性或可用性、可获利性负责或承担任何责任，且不会对根据该等资料而作出的任何交易或投资决策负责或承担任何责任。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">二十、链接</span></span></strong><br />\r\n&ldquo;服务&rdquo;或第三者均可提供与其他万维网网站或资源的链接。由于本网站并不控制该等网站和资源，您承认并同意，本公司并不对该等外在网站或资源的可用性负责，且不认可该等网站或资源上或可从该等网站或资源获取的任何内容、宣传、产品、服务或其他材料，也不对其等负责或承担任何责任。您进一步承认和同意，对于任何因使用或信赖从此类网站或资源上获取的此类内容、宣传、产品、服务或其他材料而造成（或声称造成）的任何直接或间接损失，本公司均不承担责任。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">二十一、其他规定</span></span></strong><br />\r\n本协议构成您和公司之间的全部协议，规定了您对&ldquo;服务&rdquo;的使用，并取代您和公司先前订立的任何书面或口头协议。本协议各方面应受中华人民共和国大陆地区法律的管辖。倘若本协议任何规定被裁定为无效或不可强制执行，该项规定应被撤销，而其余规定应予执行。条款标题仅为方便参阅而设，并不以任何方式界定、限制、解释或描述该条款的范围或限度。本公司未就您或其他人士的某项违约行为采取行动，并不表明本公司撤回就任何继后或类似的违约事件采取行动的权利。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">二十二、通知</span></span></strong><br />\r\n除非另有明确规定，任何通知应以电子邮件形式发送，(就本公司而言) 电子邮件地址为admin@zhifu58.com，或 (就您而言)发送到您在登记过程中向本公司提供的电子邮件地址，或有关方指明的该等其他地址。在电子邮件发出二十四 (24) 小时后，通知应被视为已送达，除非发送人被告知相关电子邮件地址已作废。或者，本公司可通过邮资预付挂号邮件并要求回执的方式，将通知发到您在登记过程中向叮叮网提供的地址。在该情况下，在付邮当日三 (3) 天后通知被视为已送达。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">二十三、不可抗力</span></span></strong><br />\r\n对于因本公司合理控制范围以外的原因，包括但不限于自然灾害、罢工或骚乱、物质短缺或定量配给、暴动、战争行为、政府行为、通讯或其他设施故障或严重伤亡事故等，致使本公司延迟或未能履约的，本公司不对您承担任何责任。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">二十四、转让</span></span></strong><br />\r\n本公司转让本协议无需经您同意。</span></span></p>\r\n\r\n<p><span style="font-size:12pt"><span style="font-family:宋体"><strong><span style="font-size:8.5pt"><span style="font-family:宋体">二十五、其他规定</span></span></strong><br />\r\n本协议构成您和本公司之间的全部协议，规定了您对&ldquo;服务&rdquo;的使用，并取代您和本公司先前订立的任何书面或口头协议。本协议各方面应受中华人民共和国大陆地区法律的管辖。倘若本协议任何规定被裁定为无效或不可强制执行，该项规定应被撤销，而其余规定应予执行。条款标题仅为方便参阅而设，并不以任何方式界定、限制、解释或描述该条款的范围或限度。本公司未就您或其他人士的某项违约行为采取行动，并不表明本公司撤回就任何继后或类似的违约事件采取行动的权利。</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>', 1, 1602224715, 0, 'admin'),
(14, '匹配说明', '<p>1：自动匹配5-30分钟，成功可在记录查看。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2：系统基于LBS技术，通过云端自动匹配。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3：匹配成功后无法撤换，请在30分钟之内确定提交。</p>', 5, 1601802721, 0, 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `xy_io_log`
--

CREATE TABLE IF NOT EXISTS `xy_io_log` (
  `id` int(10) unsigned NOT NULL,
  `oid` char(18) NOT NULL,
  `amount` decimal(7,2) NOT NULL COMMENT '支付金额',
  `tran_amount` decimal(7,2) NOT NULL COMMENT '实收金额',
  `type` int(2) NOT NULL DEFAULT '1' COMMENT '1收入(用户充值) 2支出(用户提现)',
  `addtime` int(10) unsigned NOT NULL COMMENT '交易时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='平台收支记录表';

-- --------------------------------------------------------

--
-- 表的结构 `xy_level`
--

CREATE TABLE IF NOT EXISTS `xy_level` (
  `id` int(11) NOT NULL,
  `name` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `order_num` int(12) DEFAULT NULL COMMENT '接单限制',
  `num` decimal(18,2) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `bili` decimal(18,4) DEFAULT NULL COMMENT '比例',
  `level` int(11) DEFAULT NULL COMMENT 'd等级',
  `tixian_ci` int(11) DEFAULT NULL COMMENT '提现次数',
  `tixian_min` decimal(18,2) DEFAULT NULL,
  `tixian_max` decimal(18,2) DEFAULT NULL COMMENT '提现最大金额',
  `num_min` decimal(18,2) DEFAULT NULL,
  `cids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tixian_nim_order` int(11) DEFAULT NULL COMMENT '提现最少完成订单数',
  `auto_vip_xu_num` int(11) DEFAULT NULL COMMENT '自动升级vip需要邀请的人',
  `tixian_shouxu` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '提现手续费',
  `pic` text COLLATE utf8_unicode_ci,
  `tiktok_num` int(10) DEFAULT '0' COMMENT '抖音接单次数'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `xy_level`
--

INSERT INTO `xy_level` (`id`, `name`, `order_num`, `num`, `addtime`, `bili`, `level`, `tixian_ci`, `tixian_min`, `tixian_max`, `num_min`, `cids`, `tixian_nim_order`, `auto_vip_xu_num`, `tixian_shouxu`, `pic`, `tiktok_num`) VALUES
(1, '白银会员', 40, '0.00', '2020-02-05 17:48:29', '0.0180', 1, 3, '100.00', '10000.00', '0.00', '', 6, 0, '0', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAAAkCAMAAABBj89wAAAAM1BMVEW1tbWkpKSkpKT+/v7w8PCpqamurq67u7uysrK2trbGxsbX19fBwcHPz8/j4+Ompqajo6NL/veVAAAAA3RSTlNM6OcrP75FAAADkklEQVR4Xn2X2ZLbMAwEnQC8L/3/1waHKUCHMy6r9GCz1QNa2v18Uu+pJ02RZEnUBMniHJIsH5TT4LPe8kfWN0JJRoiCCIowQuAP+fWXvtayswtBl1dC2QqC2AZCOA0Kfyy+CLwrLAY8DZzCzSCLoQncFX4DuiPk4jvyCqGw5vKAZZSfBqmbgSa7jqIrgOipWEG3tcMvwP87crski+F9favpkWN9qip4gpWkBqeCK8iW9wq/DWwfjdG9Qi/RhlDchOMYURFCeL18M7COEkLzJQFkIkz85lvQCnECTN/RxDPTCGxw7agDVKlIAQNgjFoQvikl6PVPQIRpv/Mw4QzqxZuBJtVGmQBNMhID9GsVIcWYEoAWFIiIOfPh7GhCWpIE6Ax8RQMuqQQoAJOSEHpOnezy4oIqAJbAGKh7gyGMJKlqIG812A4EmDsNYBCgwZQZnxVxQaSllx4igtb0qMgQn7oVyAB5H2mQDRIhua2Iigag8TYGNY2eR1YY7czY/QvAG6BKnoAyZbpIgM5UgLXogN0ViQCZAP0SMeCDGCggbUAxAIW3UfUGa7YYxpkQW+MZwyW6+nHQmyuqzxlMngEnAsRIAAkbBLv/+WeNlKmZALsjGbISFGBRwGBSaxVhqB+v31xGkx80A/IKoXaCxa8BU3QXnQZo30MBTGU1ngGSCrYYM9ySCRAYIBgBLFXgji4GaPc7BpRch8ygM2AyZ0Y1QL0YqSWGvTSx12lwSASgBAUoITGg7BnkwoAEADPHQIhA5526b3JkAQXIb0wxh7yeBl0J5QRksi4MiGHC3I841Bsd6RW91ykAoW2DLbABVQHjjACKAFJjQGodYCihAeo24hMRWG3Gxbw5a5bfgRlI3nZRYUIFSkdAgErnTdcH7h8RKJMATMgVAVqmA2ANx/sMABGnvhSQSwPAxhQccvMupAA7KPcsIpAwZ1BBRc6rn8FGkG9PGp0BE1Ljx8McOt062IA3f01FWqozU0VdLiMsTZoQ3QysIz6mzdjPZkm0BCYFOlq4IH0s7/0fljewMff0ePYrxgEed4rXP7gOb6CE+8NfCR7gCR4iqxvi0NVVgAHjQjgVxOEpEJ4G+rIYhDFqYPfsTXAG+hdYvhs4yuvaCvltwAA9ZCGYgr5+KniKAHaMwIxigxaAN7gLvC6+CZ9e/T7y2/T+/052CoLwAtcpm8HfjyP0R0tpA6IvSd6/Z2AGvP4/n19/hpfx27MAAAAASUVORK5CYII=', 5),
(2, '黄金会员', 60, '200000.00', '2020-02-05 17:48:29', '0.0190', 2, 2, '100.00', '20000.00', '5000.00', '', 11, 20, '0', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAAAkCAMAAABBj89wAAAATlBMVEXxyozzwXLls2vmsmTvumb////99ej++/b227H77NT00Zr448Lvw3z1w27wuV/ttFnrt2bzvmb90oHns2bptGT4yHPntGr8z3z6zHjqr1KDODylAAAABHRSTlP9TOjnFtbSewAAA/1JREFUeF6Fl4tyozoYg92zvt+4Jmnf/0WPrPw4mGW6wnhIMqOvkg1D1Vf+/v5+vFVES1kovVTRVCfq5+cnUz/QPjc9f9N/Xwr+B6E8Bn+NUbXYi/80zQCoPDUAzHF8pluCoj0BRAwJKo5LgqnZ52fz32gs1n1cpV5CEHsBCEL8p04YC6JIofNtBMWGxgQLRl8EfU4gBe0siL1onMfxa4IhwnIqSQ8dMYCmPzW2RN0C6D8S2tAgHP4kFAKmo6DnSMD56xrcL/Ny6kjTf4b/NGsANBD/TnCOULyH+8NHQTR3hNAxEkH/8i5Ie68lRe//HkDCQwjOIMG3cQCImn8wJtRPQRMK4nfngpLtCteKJEHAb8ZgcpzDO8GiS8BHE7Smv55YkHzXl/oZjGsyDuARcER42Pa7MZg5WUmgrLElY1IsqN0Mc/uYOfUEwah9oyMAuOApa/D6LILpFUlHJaGKUmtBuAQA7Kc9OlqD4CIT7M85mKio2BNspwRQsKyIs2OVsPcOvmhKt6KM8xoBWH+ZoRxAZYgdCboCvbdhkSFnLnJLAbB/zUtbZzBBEvF6BmL3qctvWwNsYBAgiAOElqhWUrRRfYJFb+OUQVEfakToDIISRc6b2A8VcZVlhaHQ77ZatTGyg6DktfZd84xzm/cxf4sgEAIEYc1pGezpiUdA4Q7CDtW8i6l9PuRM6jKO9scirwBIAhMxsyJlLB9HDMVUlJ2q1v4iLHED5H3bYkQ3GYAe4ZLgJMudell5B/9sLspIQsC+4YMAmjkPtb4BLwICZDgDgACiApdSdK2ThhICoEIPpXcCiACwJcEnAgE9QYxrNGZd18g1aCPhIjeAdkEjAAUnBdfEuQXYWVE0diOA9k1MQMRdRYwQjCdgAVP8Z21NmqFoXD4B9mD8LoAeQa30JyGlYEKCrAvJy/sFfAmowUQtgGQsN1K7EEJKuNcQNIWYoyLgSNAjrB79WzyT1hYgKdivMUZnPGqLPKPSEIxQfwjWIWkgAP3HgK+zbeGxl0Q9Ae5juBvn+cx7NZQJpSRzUdIQfClngwceAE+WY0EeDBfPAFlm71L8vL+8koul+NCVOHsm8B5ZMluKgQ8KwFJ87lDzDC4PgL4K40vkgoGTl1VXjdH1uZvhiSnPsJ4J2Fn9DYD+40sklUteFs3jYq8PBMZHtL0F3LxESgC+XoAwJqhg1PaY+DdA9pEgxgTtFkYCDBK6O05GoP/AuAJuIxQMSgKQ0ENUUgCB6j6PATgPgGsEqhQMTvQfM/S/vo4JOuM2wTcJD+lo/G+kI7pYEgPg+Mv/FEGRcLuPDoS46yNBFfcqCWh+Qgz+f9TXQGCEXtL4qk1EF+157pyGAB3x5+t/M0/Jc5v4fv4AAAAASUVORK5CYII=', 10),
(3, '铂金会员', 80, '400000.00', '2020-02-05 17:48:29', '0.0200', 3, 3, '100.00', '40000.00', '10000.00', '', 16, 40, '0', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAAAkCAMAAABBj89wAAAAQlBMVEWil8WXjbj///+Ogq+Wi7mNgauaj7yTh7aHe6zSzeD6+vu+t9Lf2+nv7fOxqciek7+Pg7OglsOQhK2kmsbIwtiBc6UBWpS4AAAAAnRSTlPiTGWxUe0AAAPvSURBVHhejZfZbuswEEPTGe2rt/7/r95ZpKjxDdowjmr4gQckG6R9fD16705kRJ61iZAUMEx9h2+S2fe+d74Lx9/6eoi/EIxbACHgpgAc/kI49t7PLqjjEz32/krwI4IiAl2o9pogdPY/2N8KAD8BrI6EoP6aYVsJhGA6aRa0HfhBgv19RwqgCOI/M6D4WwaoN35Q0Y2gCdbOTLATwfb7of70wk82uHV0W5nsf6zgV0FsjnTgJwl2NyO8R4QhuwrCN+6WL/smwT4StHP4n/l8GWFrWSCOAVoQ+py9EH7bYgFkhgSnAi4omkAZWABKGAW5IAVt/MyvFLbUp8oNsI8NMqScMzMiXDK0VISmQK1QEMldCwro9ZlfMxdIQ3AHTEQBVm4xkl2MsWmAs0J1jo7GQxmy/z7cfOZQEJYBTUknAewrQEc4E0RSizAUuSRKA8WEYCqkuHNB9GqJrY9Ozxo+E+RTlDmBfZMgQnEkcow5txwZYK4EVNemRUG6PC3gCzO5fn4WDY4EU5xAXy8JTiBjEg/AH7ZMAF/JFIbktgZkZrpUeu/R4pHjU1kA43qcTKDrLLqBY4BRwJZra5UEwGfOtYVOlLaorULqiLa9yA6EJpgd7REgxp8AHgFZAN2RMJDi5TE/dfjrOhCRkEvp2ZHVBPOjkGDnDUomRQUIYlOAYX8BHvxSsbtFm2BVBMnauQEDTk2QoyS4IqgEUJMIIIlqsOivmzxKAkeurXlrHQFWBAKoegFRoQRsUBjgF0ARATcHNzkKMAAAbgKEICPPjlrOADk33cDwBvOLx3FFxnNBmyaoUPlH5MMgWpvUGg4FsL8cWpEidAN3A8TqvQC2WngOPOjcAU5EjKkh+yAK4GhQ7UsCkiRQ/3cAvxXIjgG+QQ0biuhhxAMxQ+pEQDsSFLgGQMQETbAA51VeAezLAIdEwk0JEaqfN0YBMRp7AfRYcm9tLDASrN8j2TJCEjHgbK0l4HFa43fjYjwZUf2l1AQABdXI5UKPXQWAmv0IIAnUnxERoMbzJyDCTZELSqBKtVxJWrmElTKB+lXH3UywRjhj685dKTuuKBEgl6XIR+aO8pVzO7vn+lsxFm0jWGyHVbWSzPw1YoAi/v/rwtNFB0uq50O/pQ+ikJt+hqUiI2aqebsSzIr6IrDEX1nqre64pAxB8PlWssGMsBKILV8itp7vJXV/73xPcI9gZkkkZzx7i/BGsHr8CbhFWCWNgkT3hqwc6o8BfwesCE9/pwUJYAlxIcSWjTGwU/goAWslmFMvf2EsCSLYNcX/qIeOIIDbvwqqZX+LELT+FWL4hluCr0UQxH5bwZNuGywpIeDNe9Hs1z9uZImrYyEicgAAAABJRU5ErkJggg==', 15),
(4, '钻石会员', 100, '600000.00', '2020-02-05 17:48:29', '0.0210', 4, 3, '100.00', '1000000.00', '20000.00', '', 0, 60, '0', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAAAkCAMAAABBj89wAAAARVBMVEVocJBaYYZvdZRcY4hhaIxqcJBfZor///9mbI2ytcZ9gp++wc+prMDMztr5+frd3uZ0epdTWoGbn7VXXoTq6++PlK1PVn23O75tAAAAAXRSTlNMP4zV3QAABA9JREFUeF51lgeO60gMRN05B6W9/1GXZEeP/KtlQ/AA9VAsU57PR2otuljXNXV86T8U9yi8k6qLb6q7fCV/LfQi7IiDXtMeDriSPwMA6+50pj+eLo/ns/uLd4Ldn17kzzGAVVO8E+oWwTcGAH5H+I3YBqSHebv2BBvkBZj+bM5oL0GTvwDAZRUeQrQIi7Hsx4j+XfNBZybAqXpFA7KK/Cdi75nvCX5GuH5/kxT61wMHZL8JcN41UwKJgH9HOPYSNMbuAyIRYhHeU9o6AITnnfBE/zMB+dOApFUxUglDu/1ew0gA/iob3gDJnM37jLtcCK7SgIRVyZi0+fN0T6W9ho+Wo4PT5PM8VQO0BLf5o7tq2LbL8mTu2yS+MhSTu0z5GpHUo4VEFp4AUYLYFR3qNsWBAsjhgA5Zb0Dhm98ATyvhMWXVQICegGeDFpwApOciqWw8FGAr6oIA4szgb62/IfMgFBMfUkRAxasDRoRgkkARgPI2wBFMAX9GqTU0gOMv3IJqgSLqAAy9E5CqMe4BMUEdrGWr2TwAwPxVHYdwGfCui+45AmKYcg0wE0hiqFSoRbEAhGDFFFgEyVFwU6HpJ5uhE8bkAfCcu9bC7SXzACGiEIIAI4KDyGkIolzBWRmnLA8B1y2bTXluG6cEg2BNBvuSs6EOHG2C2RWPA8JKkt2kbDYpkFJIC8BbyUQQZ4AEITyzrQCAh0rr+QsAmFbujzgAIIFXiscTKvcE2EdEU5LBkFwxDwKdCYxFKMWZxOhBIIOJl9bc/JG3IAQQZgBG0Z85If/AOJ7HA4CBEICFqmgSLZM9ACB0S3ADGJR6AjusDf8GVAI0htSKOtgAVyj2AoBC4UI43SoApwdKCPmxCu17gtMUtQCV85FAarwWQHQAk/oaAH0QQBCimCBB0WRvUR0AH0/AYKwEWgBARbcDrosA0BUHv2Rc83emKIkK+MgghVSVgz5SiR73QA0CAXRbBuggm1La9/5GACPAUhQQwYKRcyGVG/et2CYfizHB3/hRrB1AJa8IATqNtgw31xI4k4daAjuWKpfk4DMAOGJlhw04YOTIhwjQt7lGTx24E5R6AhnvYCX+rDF3R4ERoovn46uV0sqz4Iwek+9w8v5kfVL2XC3AhtBgoLgEDLPcIkDQylIU0UQ9ozdJAwQI9ev3mVd8Vwuw/F//XiDcCvRnTAxEF/2tnaaJIHf1SkD69teEb/6doClD25z5UHoT3gnkjwSC1optgMEg/3eENacJsLJLzyEtQsvU/QdCdwLCX0/WZU8hXiWT+wQ0m2sBBNsSUOaRYethJyBgj7AgBKBC2QSsGiai6VfNM4GaEbr5akGQuv87A0muDPaVgTroBCpsBVj+FGCPwPYMGNvqV4Yp/vkf+t5wv24grt8AAAAASUVORK5CYII=', 20);

-- --------------------------------------------------------

--
-- 表的结构 `xy_lixibao`
--

CREATE TABLE IF NOT EXISTS `xy_lixibao` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `num` decimal(18,5) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  `endtime` int(10) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `yuji_num` decimal(18,5) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `is_qu` int(11) DEFAULT '0',
  `shouxu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `real_num` decimal(18,5) DEFAULT '0.00000',
  `is_sy` int(11) DEFAULT '0',
  `uptime` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `xy_lixibao`
--

INSERT INTO `xy_lixibao` (`id`, `uid`, `num`, `addtime`, `endtime`, `type`, `status`, `yuji_num`, `sid`, `is_qu`, `shouxu`, `real_num`, `is_sy`, `uptime`) VALUES
(1, 4, '500.00000', 1601937485, 1602023885, 1, 0, '5.00000', 1, 0, NULL, '0.00000', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_lixibao_list`
--

CREATE TABLE IF NOT EXISTS `xy_lixibao_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `bili` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_num` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_num` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `shouxu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `xy_lixibao_list`
--

INSERT INTO `xy_lixibao_list` (`id`, `name`, `day`, `bili`, `min_num`, `max_num`, `addtime`, `status`, `shouxu`) VALUES
(1, '一天', 1, '0.01', '100', '100000', 1583482861, 1, '0.01'),
(2, '三天体验', 3, '0.002', '100', '10000', 1589079444, 1, '0.02'),
(3, '一个月体验', 30, '0.001', '100', '1000', 1583482750, 1, '0.03'),
(4, '一年高收益', 365, '0.05', '10000', '500000', 1583482786, 1, '0.01');

-- --------------------------------------------------------

--
-- 表的结构 `xy_member_address`
--

CREATE TABLE IF NOT EXISTS `xy_member_address` (
  `id` bigint(20) unsigned NOT NULL,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '收货姓名',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '收货手机',
  `area` varchar(255) NOT NULL COMMENT '地区',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址-详情',
  `is_default` tinyint(1) unsigned DEFAULT '0' COMMENT '默认地址',
  `addtime` int(10) NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员收货地址';

-- --------------------------------------------------------

--
-- 表的结构 `xy_message`
--

CREATE TABLE IF NOT EXISTS `xy_message` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '接收人ID',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '发送人ID',
  `title` varchar(150) NOT NULL COMMENT '信息标题',
  `content` text NOT NULL COMMENT '正文内容',
  `addtime` int(10) NOT NULL COMMENT '发表时间',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '消息类型 1公告 2通知'
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COMMENT='会员-消息表';

--
-- 转存表中的数据 `xy_message`
--

INSERT INTO `xy_message` (`id`, `uid`, `sid`, `title`, `content`, `addtime`, `type`) VALUES
(101, 1, 0, '系统通知', '交易订单UB2010052044218689已被系统强制取消，如有疑问请联系客服', 1601902117, 2),
(102, 26, 0, '系统通知', '交易订单UB2010052051445865已被系统强制取消，如有疑问请联系客服', 1601902351, 2),
(107, 1, 0, '系统通知', '交易订单UB2010052048461110已被系统强制取消，如有疑问请联系客服', 1601903373, 2),
(108, 1, 0, '系统通知', '交易订单UB2010052049009189已被系统强制取消，如有疑问请联系客服', 1601903448, 2),
(109, 1, 0, '系统通知', '交易订单UB2010052112416579已被系统强制取消，如有疑问请联系客服', 1601903802, 2),
(110, 26, 0, '系统通知', '交易订单UB2010052052416863审核成功', 1601907159, 2),
(111, 1, 0, '系统通知', '交易订单UB2010052222186250审核成功', 1601907986, 2),
(112, 1, 0, '系统通知', '交易订单UB2010052226442708审核成功', 1601908342, 2),
(113, 1, 0, '系统通知', '交易订单UB2010052234052160审核成功', 1601908472, 2),
(114, 1, 0, '系统通知', '交易订单UB2010052234052160审核成功', 1601908518, 2),
(115, 1, 0, '系统通知', '交易订单UB2010052235346164审核成功', 1601908801, 2),
(116, 1, 0, '系统通知', '交易订单UB2010052235346164审核成功', 1601908812, 2),
(117, 1, 0, '系统通知', '交易订单UB2010052241161843已被系统强制取消，如有疑问请联系客服', 1601908891, 2),
(118, 1, 0, '系统通知', '交易订单UB2010052242258272审核成功', 1601909890, 2),
(119, 1, 0, '系统通知', '交易订单UB2010052258304971审核成功', 1601909922, 2),
(120, 1, 0, '系统通知', '交易订单UB2010052258568314审核成功', 1601909965, 2),
(121, 27, 0, '系统通知', '交易订单UB2010052318118016审核成功', 1601911103, 2),
(122, 27, 0, '系统通知', '交易订单UB2010052319309034审核成功', 1601911406, 2),
(123, 27, 0, '系统通知', '交易订单UB2010052326483004审核成功', 1601911630, 2),
(124, 27, 0, '系统通知', '交易订单UB2010052326483004审核成功', 1601911642, 2),
(125, 27, 0, '系统通知', '交易订单UB2010052328228834审核成功', 1601911715, 2),
(126, 2, 0, '系统通知', '交易订单UB2010060009222162审核成功', 1601914182, 2),
(127, 2, 0, '系统通知', '交易订单UB2010060009588726审核成功', 1601914255, 2),
(128, 2, 0, '系统通知', '交易订单UB2010060009588726审核成功', 1601914271, 2),
(129, 3, 0, '系统通知', '交易订单UB2010060537398168已被系统强制付款，如有疑问请联系客服', 1601933972, 2),
(130, 3, 0, '系统通知', '交易订单UB2010060541096002已被系统强制取消，如有疑问请联系客服', 1601934788, 2),
(131, 2, 0, '系统通知', '交易订单UB2010060012223847已被系统强制取消，如有疑问请联系客服', 1601935588, 2),
(132, 3, 0, '系统通知', '交易订单UB2010060553345025已被系统强制取消，如有疑问请联系客服', 1601935591, 2),
(133, 5, 0, '系统通知', '交易订单UB2010060616554600已被系统强制取消，如有疑问请联系客服', 1601937220, 2),
(134, 7, 0, '系统通知', '交易订单UB2010061358334618已被系统强制取消，如有疑问请联系客服', 1601963951, 2),
(135, 9, 0, '系统通知', '交易订单UB2010081308453304已被系统强制取消，如有疑问请联系客服', 1602133765, 2),
(136, 4, 0, '系统通知', '交易订单UB2010091525295531已被系统强制取消，如有疑问请联系客服', 1602228409, 2),
(137, 4, 0, '系统通知', '交易订单UB2010101223548516已被系统强制取消，如有疑问请联系客服', 1602303861, 2),
(138, 4, 0, '系统通知', '交易订单UB2010101326422035已被系统强制取消，如有疑问请联系客服', 1602307696, 2),
(139, 4, 0, '系统通知', '交易订单UB2010101328475877已被系统强制取消，如有疑问请联系客服', 1602307783, 2),
(140, 4, 0, '系统通知', '交易订单UB2010101330242390已被系统强制取消，如有疑问请联系客服', 1602307849, 2);

-- --------------------------------------------------------

--
-- 表的结构 `xy_msg`
--

CREATE TABLE IF NOT EXISTS `xy_msg` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL DEFAULT '',
  `content` text NOT NULL COMMENT '文本内容',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '1平台公告 2平台简介 3抢单规则 4代理合作 5常见问题',
  `addtime` int(10) NOT NULL COMMENT '发表时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0发布 1不发布',
  `author` varchar(10) NOT NULL DEFAULT '' COMMENT '作者'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `xy_pay`
--

CREATE TABLE IF NOT EXISTS `xy_pay` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ico` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min` double(18,2) DEFAULT NULL,
  `max` double(18,2) DEFAULT NULL,
  `ewm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `xy_pay`
--

INSERT INTO `xy_pay` (`id`, `name`, `name2`, `ico`, `min`, `max`, `ewm`, `status`, `url`) VALUES
(1, '支付宝快捷支付', 'zfb', '/public/img/alipay.png', 0.01, 10000.00, 'http://qd.cn/upload/a1b496639c89d503/bec5bca9044e1b5d.png', 0, '/index/ctrl/recharge2?type=zfb'),
(2, '微信快捷支付', 'wx', '/public/img/wx.png', 0.01, 10000.00, 'http://qd.cn/upload/a1b496639c89d503/bec5bca9044e1b5d.png', 0, '/index/ctrl/recharge2?type=wx'),
(3, '银行卡转账', 'card', '/public/img/card.png', 100.00, 100000.00, '', 1, '/index/ctrl/recharge'),
(4, '比特币支付', 'bipay', 'https://cdn.fwtqo.cn/static/web/assets/img/logo/weblogo4x.png', 0.01, 10000.00, NULL, 0, '/index/ctrl/recharge2?type=bipay'),
(5, 'paysapi支付', 'paysapi', 'https://cdn.bearsoftware.net.cn/paysapi/images/logo_red.png', 0.01, 10000.00, 'http://qd.cn/upload/c03e6f88a46358db/0f716faa5667ee36.png', 0, '/index/ctrl/recharge2?type=paysapi'),
(6, 'woai支付', 'woaipay', '/public/img/card.png', 0.01, 10000.00, NULL, 0, '/index/ctrl/recharge_woaipay');

-- --------------------------------------------------------

--
-- 表的结构 `xy_reads`
--

CREATE TABLE IF NOT EXISTS `xy_reads` (
  `id` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '消息ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '读取时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='会员-消息读取记录表';

--
-- 转存表中的数据 `xy_reads`
--

INSERT INTO `xy_reads` (`id`, `mid`, `uid`, `addtime`) VALUES
(1, 30, 1, 1582140346);

-- --------------------------------------------------------

--
-- 表的结构 `xy_recharge`
--

CREATE TABLE IF NOT EXISTS `xy_recharge` (
  `id` char(18) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `real_name` varchar(15) NOT NULL DEFAULT '' COMMENT '充值姓名',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `num` decimal(12,2) NOT NULL COMMENT '充值金额',
  `type` int(2) NOT NULL DEFAULT '1' COMMENT '支付方式 1微信 2支付宝 3qq',
  `pic` varchar(255) NOT NULL DEFAULT '' COMMENT '打款凭证',
  `addtime` int(10) NOT NULL COMMENT '下单时间',
  `endtime` int(10) NOT NULL DEFAULT '0' COMMENT '处理时间',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '订单状态 1下单成功 2充值成功 3充值失败',
  `pay_name` varchar(255) DEFAULT NULL,
  `is_vip` int(11) DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `pay_type` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-充值表';

-- --------------------------------------------------------

--
-- 表的结构 `xy_reward_log`
--

CREATE TABLE IF NOT EXISTS `xy_reward_log` (
  `id` int(11) NOT NULL,
  `oid` char(18) NOT NULL COMMENT '订单号',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '产生交易用户',
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '交易对象',
  `num` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '交易数额',
  `lv` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '级差',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '订单类型 1充值订单(推广返佣) 2交易订单(交易返佣)',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '佣金发放状态 0自动发放 1未发放 2已发放',
  `addtime` int(10) unsigned NOT NULL COMMENT '创建时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '处理时间'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COMMENT='订单佣金发放记录表';

--
-- 转存表中的数据 `xy_reward_log`
--

INSERT INTO `xy_reward_log` (`id`, `oid`, `uid`, `sid`, `num`, `lv`, `type`, `status`, `addtime`, `endtime`) VALUES
(6, 'UB2010041251113259', 1, 0, '198.00', 0, 2, 0, 1601799573, 0),
(7, 'UB2010032214191067', 1, 0, '899.00', 0, 2, 0, 1601799587, 0),
(12, 'UB2010041642344164', 1, 0, '198.00', 0, 2, 0, 1601822992, 0),
(13, 'UB2010041403374324', 1, 0, '198.00', 0, 2, 0, 1601823006, 0),
(14, 'UB2010060509001451', 3, 0, '198.00', 0, 2, 0, 1601932183, 0),
(15, 'UB2010060509001451', 1, 0, '0.99', 2, 2, 1, 1601932183, 0),
(16, 'UB2010060509001451', 2, 1, '0.99', 1, 2, 1, 1601932183, 0),
(17, 'UB2010060523085115', 3, 0, '198.00', 0, 2, 0, 1601933013, 0),
(18, 'UB2010060523085115', 1, 0, '0.99', 2, 2, 1, 1601933013, 0),
(19, 'UB2010060523085115', 2, 1, '0.99', 1, 2, 1, 1601933013, 0),
(20, 'UB2010060523463479', 3, 0, '198.00', 0, 2, 0, 1601933054, 0),
(21, 'UB2010060523463479', 1, 0, '0.99', 2, 2, 1, 1601933054, 0),
(22, 'UB2010060523463479', 2, 1, '0.99', 1, 2, 1, 1601933054, 0),
(23, 'UB2010060525573480', 3, 0, '899.00', 0, 2, 0, 1601933557, 0),
(24, 'UB2010060525573480', 1, 0, '4.50', 2, 2, 1, 1601933557, 0),
(25, 'UB2010060525573480', 2, 1, '4.50', 1, 2, 1, 1601933557, 0),
(26, 'UB2010060532454231', 3, 0, '1980.00', 0, 2, 0, 1601933633, 0),
(27, 'UB2010060532454231', 1, 0, '9.90', 2, 2, 1, 1601933633, 0),
(28, 'UB2010060532454231', 2, 1, '9.90', 1, 2, 1, 1601933633, 0),
(29, 'UB2010060534095252', 3, 0, '899.00', 0, 2, 0, 1601935593, 0),
(30, 'UB2010060632405686', 4, 0, '198.00', 0, 2, 0, 1601937281, 0),
(31, 'UB2010060635133588', 4, 0, '198.00', 0, 2, 0, 1601937358, 0),
(32, 'UB2010061353263297', 7, 0, '899.00', 0, 2, 0, 1601963639, 0),
(33, 'UB2010061354227476', 7, 0, '1980.00', 0, 2, 0, 1601963717, 0),
(34, 'UB2010061352521814', 7, 0, '899.00', 0, 2, 0, 1601963721, 0),
(35, 'UB2010061352055199', 7, 0, '899.00', 0, 2, 0, 1601963724, 0),
(36, 'UB2010081256258365', 8, 0, '1980.00', 0, 2, 0, 1602133177, 0),
(37, 'UB2010081301272733', 8, 0, '1980.00', 0, 2, 0, 1602133482, 0),
(38, 'UB2010081304452453', 8, 0, '899.00', 0, 2, 0, 1602134080, 0),
(39, 'UB2010091524562728', 4, 0, '89.00', 0, 2, 0, 1602228383, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xy_script`
--

CREATE TABLE IF NOT EXISTS `xy_script` (
  `script` text NOT NULL COMMENT '代码块',
  `id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `xy_script`
--

INSERT INTO `xy_script` (`script`, `id`) VALUES
('', 1);

-- --------------------------------------------------------

--
-- 表的结构 `xy_shop_goods_cate`
--

CREATE TABLE IF NOT EXISTS `xy_shop_goods_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '商店名称',
  `bili` varchar(255) NOT NULL COMMENT '商品名称',
  `cate_info` varchar(255) DEFAULT '' COMMENT '商品描述',
  `goods_price` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `cate_pic` varchar(120) DEFAULT '' COMMENT '商品展示图片',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `status` int(1) DEFAULT '0' COMMENT '上架状态 0不上架 1上架',
  `min` varchar(255) DEFAULT NULL COMMENT '最小金额限制'
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

--
-- 转存表中的数据 `xy_shop_goods_cate`
--

INSERT INTO `xy_shop_goods_cate` (`id`, `name`, `bili`, `cate_info`, `goods_price`, `cate_pic`, `addtime`, `status`, `min`) VALUES
(1, '服装', '0.002', '顶顶顶顶', NULL, 'http://qd2.cn/upload/4201872b7132c82b/9d3e81fb395d46ff.png', 1583381116, 0, ''),
(2, '汽车', '0', '京东', NULL, 'http://qd2.cn/upload/4201872b7132c82b/9d3e81fb395d46ff.png', 1583381331, 0, ''),
(3, '零食', '0', '唯品会专区', NULL, '/statics/img/w.svg', 1583409871, 0, ''),
(166, '美妆', '0', '美妆', NULL, '', 1583409885, 0, ''),
(4, '装饰品', '0', '111', NULL, 'http://qd2.cn/upload/4201872b7132c82b/9d3e81fb395d46ff.png', 1583381309, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_shop_goods_list`
--

CREATE TABLE IF NOT EXISTS `xy_shop_goods_list` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL COMMENT '商店名称',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `goods_info` varchar(5000) DEFAULT '' COMMENT '商品描述',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_pic` varchar(120) DEFAULT '' COMMENT '商品展示图片',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '上架状态 0不上架 1上架',
  `cid` int(11) DEFAULT '1',
  `is_tj` int(11) DEFAULT NULL,
  `activity_links` varchar(255) DEFAULT NULL COMMENT '活动链接',
  `conditions` varchar(20) DEFAULT NULL COMMENT '完成条件'
) ENGINE=MyISAM AUTO_INCREMENT=642 DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

--
-- 转存表中的数据 `xy_shop_goods_list`
--

INSERT INTO `xy_shop_goods_list` (`id`, `shop_name`, `goods_name`, `goods_info`, `goods_price`, `goods_pic`, `addtime`, `status`, `cid`, `is_tj`, `activity_links`, `conditions`) VALUES
(4, '邮滋味如皋馆专柜', '创维9公斤变频滚筒洗衣机  型号：F9015NC-炫金   如皋免费送货上门，南通包邮，华东地区配货', '创维洗衣机，安全健康专家，免费上门安装，绝对优惠，每月线下更有现场特惠活动', '1.00', '/upload/goods_img/大家电/5db3b89b52437.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(5, '邮滋味如皋馆专柜', '创维2P定频立式柜机，型号：KFR-50LW/F2DA1A-3（限如皋地区免费送货上门安装）', '创维定频空调，免费上门安装，绝对优惠，每月更有现场特惠活动', '4.00', '/upload/goods_img/大家电/5db3b89b6e95e.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(6, '创维电视官方旗舰店', '创维/SKYWORTH 58H8M 58英寸4K超高清全面屏防蓝光人工智能语音HDR超薄网络液晶电视', '4K超高清，声像自然，一场声觉革新，视觉体验，光学防蓝光，护眼不偏色', '3.00', '/upload/goods_img/大家电/5db3b89b79d10.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(7, '邮乐洛阳', '【洛阳金融积分兑换】TCL 205升 三门电冰箱 （星空银） BC（邮政网点配送）', '', '1.00', '/upload/goods_img/大家电/5db3b89bc11c1.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(8, '邮滋味如皋馆专柜', '创维9公斤全自动波轮洗衣机，型号XQB90-52BAS淡雅银如皋免费送货上门，南通包邮，华东地区配送', '创维家电大品牌，安全可靠，夏季特惠；每月现场有特惠活动', '1.00', '/upload/goods_img/大家电/5db3b89bcfc24.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(9, '信阳邮约会', '【限信阳地区积分兑换专用，不对外销售】家用洗衣机，图片仅供参考', '', '1.00', '/upload/goods_img/大家电/5db3b89be0d98.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(10, '邮乐安阳馆', '【滑县积分用户专享】创维电器洗衣机9公斤波轮安阳', '', '1.00', '/upload/goods_img/大家电/5db3b89bee474.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(11, '邮乐安阳馆', '美菱3开门冰箱BCD-209M3CX【汤阴县积分兑换专用，其他下单不发货】', '', '1.00', '/upload/goods_img/大家电/5db3b89c06586.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(12, '邮乐安阳馆', '美菱电冰箱209L3CS【安阳县积分兑换用户专用，其他地区发】', '', '1.00', '/upload/goods_img/大家电/5db3b89c16f2a.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(13, '信阳邮约会', '【限信阳地区积分兑换专用，不对外销售】自动洗衣机 家用洗衣机，图片仅供参考', '', '2.00', '/upload/goods_img/大家电/5db3b89c22e95.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(14, '邮乐安阳馆', '【滑县积分用户专享】创维电器电视50寸4K智能安阳', '', '3.00', '/upload/goods_img/大家电/5db3b89c2bb37.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(15, '邮乐安阳馆', '【安阳县积分用户专享】长虹液晶电视55U1', '', '3.00', '/upload/goods_img/大家电/5db3b89f48109.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(16, '海信电器旗舰店', '海信（Hisense）HZ32E30D 32英寸蓝光高清平板液晶电视机 酒店宾馆卧室推荐', '【海信今日限时特惠-到手价788元！】限量200台！抢完即止！', '749.00', '/upload/goods_img/大家电/5db3b89f51194.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(17, '邮滋味如皋馆专柜', '邮乐特卖：庭美家用消毒柜    型号：YTP-280    如皋免费送货上门，南通包邮，华东地区配送', '庭美消毒柜，安全可靠，邮乐特惠；每月现场有特惠活动——18862731238', '755.00', '/upload/goods_img/大家电/5db3b89f5ec57.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(18, '吉舜诚商城专柜', '飞利浦（PHILIPS）  19英寸液晶电视机 显示器两用 hdmi高清接口', '19PFF2650', '799.00', '/upload/goods_img/大家电/5db3b89fb14ba.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(19, '创维集团官方旗舰店', '创维/SKYWORTH 32X3 32英寸窄边非智能老人机蓝光高清节能LED平板液晶电视机工程机', '蓝光高清，经典窄边，节能液晶，简单好用，谁用谁知道，实用耐用款', '799.00', '/upload/goods_img/大家电/5db3b89fc8fa8.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(20, '吉舜诚商城专柜', '飞利浦（PHILIPS）22英寸LED高清液晶平板电视机含底座 黑色', '22PFF2650/T3', '899.00', '/upload/goods_img/大家电/5db3b89fd917b.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(21, '创维集团官方旗舰店', '创维/SKYWORTH 32X6 32英寸10核窄边高清 人工智能 网络WIFI 卧室液晶平板电视机', '超值钜惠，高清智能电视，WIFI，酷开系统，10核处理器', '899.00', '/upload/goods_img/大家电/5db3b89fe6086.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(22, '海信电器旗舰店', '海信 (Hisense) HZ32E35A 32英寸AI智能WIFI 轻薄金属 卧室神器高清电视机', '', '899.00', '/upload/goods_img/大家电/5db3b8a0004c2.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(23, '邮滋味如皋馆专柜', '创维邮乐特卖： 32寸液晶电视机，型号：32E381S   如皋免费送货上门，南通包邮，华东地区配货', '创维液晶电视大品牌，夏季特惠；每月现场有特惠活动', '899.00', '/upload/goods_img/大家电/5db3b8a01be30.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(24, '琥麟电器专柜', '海信 XQB60-H3568 6公斤全自动波轮洗衣机', '', '749.00', '/upload/goods_img/大家电/5db3b8a0279b3.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(25, '邮滋味如皋馆专柜', '创维7公斤全自动波轮洗衣机，型号：XQB70-21C淡雅银，如皋免费送货上门，南通包邮，华东地区配送', '创维家电大品牌，安全可靠，邮乐特惠；每月现场有特惠活动——18862731238', '928.00', '/upload/goods_img/大家电/5db3b8a0367fe.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(26, '邮滋味如皋馆专柜', '创维单冷冰柜，型号：BD/C-160雅白，如皋地区免费送货上门安装，南通地区包邮，华东地区配货', '创维冰柜，安全健康专家，免费上门安装，绝对优惠，每月线下更有现场特惠活动', '999.00', '/upload/goods_img/大家电/5db3b8a042f39.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(27, '创维集团官方旗舰店', '创维（SKYWORTH）32H5 32英寸高清HDR 护眼全面屏 AI人工智能语音 网络WIFI 卧', '高清HDR 护眼全面屏 AI人工智能语音 网络WIFI', '999.00', '/upload/goods_img/大家电/5db3b8a0511cd.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(28, '邮滋味如皋馆专柜', '创维/SKYWORTH热水器，型号：DSZF-D5501-80，如皋免费送货上门，南通包邮 创维/', '创维家电大品牌，安全可靠，邮乐特惠；每月现场有特惠活动——18862731238', '999.00', '/upload/goods_img/大家电/5db3b8a07389d.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(29, '琥麟电器专柜', 'Hisense/海信 HB80DA332G8KG公斤大容量家用全自动节能波轮洗衣机', '', '899.00', '/upload/goods_img/大家电/5db3b8a386615.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(30, '琥麟电器专柜', '海信 BCD-163N/B 冰柜冷藏冷冻双温家用商用小型卧式', '', '999.00', '/upload/goods_img/大家电/5db3b8a390a27.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(31, '吉舜诚商城专柜', '东芝（TOSHIBA）  32英寸 蓝光液晶电视 高清平板电视机 东芝电视机', '32L1500C', '1.00', '/upload/goods_img/大家电/5db3b8a69aafd.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(32, '创维集团官方旗舰店', '创维/SKYWORTH 40X6 40英寸10核窄边高清 人工智能 网络WIFI 卧室液晶平板电视机', '超值钜惠！高清智能，10核处理器，可以WIFI上网', '1.00', '/upload/goods_img/大家电/5db3b8a9a6b14.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(33, '甲子商城旗舰店', '康佳/KONKA  LED39E330C 39英寸卧室电视高清蓝光节能平板液晶电视', '', '949.00', '/upload/goods_img/大家电/5db3b8a9b22ae.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(34, '邮乐赣州馆', '【不支持邮乐卡支付】创维-彩电-40E1C 40英寸全高清HDR 护眼全面屏 AI人工智能语音', '', '1.00', '/upload/goods_img/大家电/5db3b8a9cf38d.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(35, '琥麟电器专柜', '海信 BCD-177F/Q 177升 双门冰箱', '', '1.00', '/upload/goods_img/大家电/5db3b8a9f0abd.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(36, '创维集团官方旗舰店', '创维/SKYWORTH 43X6 43英寸10核窄边高清 人工智能 网络WIFI 卧室液晶平板电视机', '【买电视选创维】高清智能，10核处理器，质量上乘，价格厚道，可以Wifi上网', '1.00', '/upload/goods_img/大家电/5db3b8aa1b4b4.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(37, '创维集团官方旗舰店', '创维（SKYWORTH）40H5 40英寸全高清HDR 护眼全面屏 AI人工智能语音 网络WIFI', '全高清HDR 护眼全面屏 AI人工智能语音', '1.00', '/upload/goods_img/大家电/5db3b8aa26c4f.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(38, '邮乐安阳馆', '市区积分用户专享】创维平板电视32X6', '', '1.00', '/upload/goods_img/大家电/5db3b8aa31c19.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(39, '吉舜诚商城专柜', '飞利浦（PHILIPS）32英寸新品高清LED电视 接口丰富窄边高清LED液晶平板电视机', '32PHF3282/T3', '1.00', '/upload/goods_img/大家电/5db3b8aa3b85c.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(40, '琥麟电器专柜', '海信 BD/BC-308NU/A 冰柜家用 顶开式卧式商用冷藏冷冻柜', '', '1.00', '/upload/goods_img/大家电/5db3b8aa4931f.jpg', 1572059510, 0, 1, NULL, '0', NULL),
(41, '明凰服饰专营店', '男女冲锋衣工装棉服外套修身加厚款', '邮乐支持微信，支付宝，网银，邮储卡和银联卡支付。（不同商品请分开下单）', '85.00', '/upload/goods_img/户外服饰/5db3b8b22c022.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(42, '户外途量工厂专卖店', '春夏季运动风衣钓鱼防晒衣男女超薄透气皮肤衣防风外套户外速干潮流衣服情侣款皮肤衣', '大码骑行长袖', '29.90', '/upload/goods_img/户外服饰/5db3b8b23604c.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(43, '探路者正江专卖店', '探路者/TOREAD 冲锋裤 运动裤 秋冬户外软壳裤男透气防风保暖徒步裤KAMG91159', '', '428.00', '/upload/goods_img/户外服饰/5db3b8b25312b.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(44, '探路者正江专卖店', '探路者运动服 探路者冲锋衣 19秋冬户外女式防水透湿套绒冲锋衣TAWH92285', '', '839.00', '/upload/goods_img/户外服饰/5db3b8b25d925.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(45, '好看哒专营店', '防晒衣女中长款薄款防晒服', 'FSY-6387', '45.00', '/upload/goods_img/户外服饰/5db3b8b56628b.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(46, '宝仕母婴专营店专柜', 'L户外皮肤衣防紫外线防晒衣男女夏季超薄透气防晒服运动风衣', '', '75.00', '/upload/goods_img/户外服饰/5db3b8b573966.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(47, '好看哒专营店', '防晒衣女夏季新款韩版连帽系带长袖防晒衣糖果色沙滩户外披肩防晒衣', 'FSY-54', '19.90', '/upload/goods_img/户外服饰/5db3b8b88f380.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(48, '户外途量工厂专卖店', '户外速干T恤男 女休闲跑步运动健身短袖大码情侣快干衣排汗透气', '', '22.80', '/upload/goods_img/户外服饰/5db3b8b8abc8f.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(49, '好看哒专营店', '防晒衣 户外薄款防紫外线印花防晒衣', 'FSY-1736', '25.00', '/upload/goods_img/户外服饰/5db3b8b8c0c84.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(50, '好看哒专营店', '防晒衣夏季女蝙蝠袖连帽拉链短款防晒衣', 'FSY-5423', '35.00', '/upload/goods_img/户外服饰/5db3b8b9b16a1.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(51, '好看哒专营店', '防晒衣男士薄款纯色连帽防晒衣', 'FSY-4167', '35.00', '/upload/goods_img/户外服饰/5db3b8b9bbe9c.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(52, '户外途量工厂专卖店', '城徒 户外春夏单层冲锋衣女防晒衣男轻薄防风钓鱼服透气速干外套长袖衫', '', '35.80', '/upload/goods_img/户外服饰/5db3b8ba1b847.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(53, '好看哒专营店', '防晒衣韩版短款薄款连帽长袖防晒衣', 'FSY-5439', '36.00', '/upload/goods_img/户外服饰/5db3b8ba72314.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(54, '好看哒专营店', '防晒衣女中长款涂鸦薄款防晒衣', 'FSY-5282', '36.00', '/upload/goods_img/户外服饰/5db3b8ba99fd5.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(55, '好看哒专营店', '防晒衣女中长款薄款防晒衣', 'FSY-5456', '37.90', '/upload/goods_img/户外服饰/5db3b8baa8e20.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(56, '户外途量工厂专卖店', '秋冬户外男抓绒衣摇粒绒女外套保暖冲锋衣内胆开衫卫衣', '', '39.00', '/upload/goods_img/户外服饰/5db3b8bab267b.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(57, '户外途量工厂专卖店', '户外秋冬季加绒加厚抓绒衣男女摇粒绒保暖抓绒外套开衫冲锋衣内胆', '', '49.00', '/upload/goods_img/户外服饰/5db3b8bae0cb5.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(58, '江门新会馆', '【江门新会馆】caxa断码 两截速干裤女 韩版修身透气徒步快干裤野外登山跑步长裤', '', '50.00', '/upload/goods_img/户外服饰/5db3b8baf06b9.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(59, '宝仕母婴专营店专柜', 'L夏季休闲短裤男宽松5分中裤子男士运动五分裤大码跑步速干沙滩裤', '', '55.00', '/upload/goods_img/户外服饰/5db3b8bb2ba54.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(60, '江门新会馆', '【江门新会馆】caxa修身户外健身速干裤女 快干弹力透气登山大码长裤 弹力户外裤', '', '60.00', '/upload/goods_img/户外服饰/5db3b8bb513ed.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(61, '探路者正江专卖店', '探路者/TOREADt恤女户外夏季快干速干透气运动服TAJG82984', '', '61.00', '/upload/goods_img/户外服饰/5db3b8bb5ac47.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(62, '铁好家居美妆日用百货专营店', '佳钓尼 夏遮阳防晒帽套头面罩透气防紫外线渔夫帽', '', '48.00', '/upload/goods_img/户外服饰/5db3b8bb8e0a3.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(63, '宝仕母婴专营店专柜', '防晒衣男女情侣春夏季防雨风衣超薄透气速干钓鱼防晒服户外皮肤衣MN', '', '69.00', '/upload/goods_img/户外服饰/5db3b8bb9f9e7.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(64, '户外途量工厂专卖店', '城徒 春夏季速干裤男女大码轻薄快干透气户外修身显瘦弹力冲锋裤', '', '69.00', '/upload/goods_img/户外服饰/5db3b8bbb3e24.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(65, '宝仕母婴专营店专柜', 'L运动户外夏季速干t恤 男女短袖速干衣快干t恤 吸汗透气', '', '69.00', '/upload/goods_img/户外服饰/5db3b8bbe33ff.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(66, '宝仕母婴专营店专柜', 'L健身房教练速干T恤男女 圆领情侣夏季短袖汗衫', '', '69.00', '/upload/goods_img/户外服饰/5db3b8bc1bca2.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(67, '户外途量工厂专卖店', '城徒 冬季正品户外冲锋裤男女抓绒裤保暖防风防水加厚软壳裤登山裤长裤', '', '75.00', '/upload/goods_img/户外服饰/5db3b8bc42dab.jpg', 1572059516, 0, 1, NULL, '0', NULL),
(68, '江门新会馆', '【江门新会馆】caxa修身弹力女款休闲棉裤 户外休闲快干长裤 女士跑步登山健身裤', '', '78.00', '/upload/goods_img/户外服饰/5db3b8bc96997.jpg', 1572059516, 0, 1, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `xy_shop_order`
--

CREATE TABLE IF NOT EXISTS `xy_shop_order` (
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL COMMENT '商品id',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `price` decimal(15,3) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '上架状态 0不上架 1上架',
  `num` int(11) DEFAULT NULL,
  `price2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` char(18) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `xy_shop_order`
--

INSERT INTO `xy_shop_order` (`uid`, `gid`, `addtime`, `price`, `status`, `num`, `price2`, `id`) VALUES
(20, 2, 1583407009, '1.000', 2, 1, '1', 'SP2003052017163927'),
(19, 1, 1583410636, '1.000', 1, 2, '2', 'SP2003052017163987'),
(20, 1, 1585453110, '1.000', 2, 1, '1', 'SP2003291138308901'),
(20, 2, 1585453251, '1.000', 2, 1, '1', 'SP2003291140513132'),
(20, 2, 1585453282, '1.000', 2, 1, '1', 'SP2003291141221124'),
(32, 3, 1585824950, '1.000', 2, 1, '1', 'SP2004021855507390'),
(37, 2, 1586703071, '1.000', 1, 1, '1', 'SP2004122251116034');

-- --------------------------------------------------------

--
-- 表的结构 `xy_users`
--

CREATE TABLE IF NOT EXISTS `xy_users` (
  `id` int(10) unsigned NOT NULL,
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(36) NOT NULL DEFAULT '' COMMENT '昵称',
  `pwd` char(40) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` char(16) NOT NULL DEFAULT '' COMMENT '密码盐',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID',
  `signiture` varchar(120) NOT NULL DEFAULT '' COMMENT '个性签名',
  `pwd_error_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '密码错误次数',
  `allow_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '允许登录时间',
  `real_name` varchar(36) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `id_card_num` char(18) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `top_pic` varchar(96) NOT NULL DEFAULT '' COMMENT '身份证正面图',
  `bot_pic` varchar(96) NOT NULL DEFAULT '' COMMENT '身份证背面图',
  `id_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '实名认证状态，0未审核，1审核通过，2审核不通过',
  `invite_code` char(6) NOT NULL DEFAULT '' COMMENT '邀请码',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1启用，2禁用',
  `real_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实名时间',
  `pwd2` char(40) NOT NULL DEFAULT '' COMMENT '提现密码',
  `salt2` char(16) NOT NULL DEFAULT '' COMMENT '提现密码盐',
  `headpic` varchar(3000) NOT NULL DEFAULT '' COMMENT '头像',
  `balance` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '账户余额',
  `commission` varchar(10) NOT NULL DEFAULT '0' COMMENT '佣金',
  `freeze_balance` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '账号冻结金额',
  `login_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否登录状态，1：是，0否',
  `recharge_num` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '日充值金额',
  `deposit_num` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '日提现金额',
  `deal_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '交易状态，0交易冻结，1停止交易，2等待交易，3交易中',
  `deal_error` tinyint(1) NOT NULL DEFAULT '0' COMMENT '违规次数',
  `deal_reward_count` int(11) NOT NULL DEFAULT '0' COMMENT '奖励交易次数',
  `deal_count` int(4) NOT NULL DEFAULT '0' COMMENT '当日交易次数',
  `deal_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后交易日期(年月日)',
  `active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '激活状态，0未激活(首次充值发放推广奖励)，1已激活',
  `childs` int(11) NOT NULL DEFAULT '0' COMMENT '直推用户数量',
  `kouchu_balance` decimal(15,2) DEFAULT NULL COMMENT '扣除金额',
  `kouchu_balance_uid` int(11) DEFAULT NULL,
  `show_td` int(11) DEFAULT '1',
  `show_cz` int(11) DEFAULT '1',
  `show_tx` int(11) DEFAULT '1',
  `show_tel` int(11) DEFAULT '1',
  `show_num` int(11) DEFAULT '1',
  `show_tel2` int(11) DEFAULT '1',
  `wx_ewm` varchar(255) DEFAULT NULL,
  `zfb_ewm` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `lixibao_balance` decimal(15,4) DEFAULT '0.0000' COMMENT '利息宝金额',
  `lixibao_dj_balance` decimal(15,4) DEFAULT '0.0000' COMMENT '利息宝冻结金额',
  `ip` varchar(128) DEFAULT NULL,
  `is_jia` int(11) DEFAULT '0',
  `type` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '0 测试用户 1 普通用户   2代理用户',
  `withdrawal` int(11) NOT NULL DEFAULT '1',
  `is_manual` int(1) NOT NULL DEFAULT '2',
  `tiktok_count` int(11) DEFAULT '0' COMMENT '抖音接单次数'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='会员-用户表';

--
-- 转存表中的数据 `xy_users`
--

INSERT INTO `xy_users` (`id`, `tel`, `username`, `nickname`, `pwd`, `salt`, `parent_id`, `signiture`, `pwd_error_num`, `allow_login_time`, `real_name`, `id_card_num`, `top_pic`, `bot_pic`, `id_status`, `invite_code`, `addtime`, `status`, `real_time`, `pwd2`, `salt2`, `headpic`, `balance`, `commission`, `freeze_balance`, `login_status`, `recharge_num`, `deposit_num`, `deal_status`, `deal_error`, `deal_reward_count`, `deal_count`, `deal_time`, `active`, `childs`, `kouchu_balance`, `kouchu_balance_uid`, `show_td`, `show_cz`, `show_tx`, `show_tel`, `show_num`, `show_tel2`, `wx_ewm`, `zfb_ewm`, `level`, `lixibao_balance`, `lixibao_dj_balance`, `ip`, `is_jia`, `type`, `withdrawal`, `is_manual`, `tiktok_count`) VALUES
(4, '13555555444', '哒哒哒', '', '3cadd50068c286de99b7e96c6865d562275f5bb3', '3235', 3, '', 0, 0, '', '', '', '', 0, '4RYUNA', 1601933949, 1, 0, '2d4df181934045454f23dad8a877f70367b4a8fb', '27064', '', '207.72', '0', '317.98', 1, '0.00', '0.00', 1, 0, 4, 5, 1602259200, 1, 2, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, '500.0000', '0.0000', NULL, 0, '1', 1, 1, 4),
(7, '13859584206', 'jkkk', '', '548b3ce5598151bd9471666a2fac61ee5c5268ae', '45191', 0, '', 0, 0, '', '', '', '', 0, 'LR5348', 1601963416, 1, 0, '', '', '', '6.18', '0', '5.00', 1, '0.00', '0.00', 2, 0, 0, 6, 1601913600, 1, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, '0.0000', '0.0000', NULL, 0, '1', 1, 1, 6);

-- --------------------------------------------------------

--
-- 表的结构 `xy_user_error`
--

CREATE TABLE IF NOT EXISTS `xy_user_error` (
  `id` int(11) unsigned NOT NULL,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `addtime` int(11) NOT NULL COMMENT '记录时间',
  `oid` char(18) DEFAULT '' COMMENT '交易单号',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '记录类型 1解封 2违规操作 3冻结'
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COMMENT='会员-违规操作记录表';

-- --------------------------------------------------------

--
-- 表的结构 `xy_verify_msg`
--

CREATE TABLE IF NOT EXISTS `xy_verify_msg` (
  `tel` char(11) NOT NULL DEFAULT '' COMMENT '用户ID',
  `msg` char(5) NOT NULL DEFAULT '' COMMENT '验证码',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型，1注册,2修改密码，3修改二级密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mirrormx_customer_chat_data`
--
ALTER TABLE `mirrormx_customer_chat_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_type_ix` (`type`);

--
-- Indexes for table `mirrormx_customer_chat_department`
--
ALTER TABLE `mirrormx_customer_chat_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_fk_talk` (`talk_id`),
  ADD KEY `message_from_id_ix` (`from_id`),
  ADD KEY `message_to_id_ix` (`to_id`),
  ADD KEY `message_datetime_ix` (`datetime`);

--
-- Indexes for table `mirrormx_customer_chat_shared_file`
--
ALTER TABLE `mirrormx_customer_chat_shared_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shared_file_fk_upload` (`upload_id`);

--
-- Indexes for table `mirrormx_customer_chat_talk`
--
ALTER TABLE `mirrormx_customer_chat_talk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talk_fk_department` (`department_id`),
  ADD KEY `talk_owner_ix` (`owner`),
  ADD KEY `talk_last_activity_ix` (`last_activity`);

--
-- Indexes for table `mirrormx_customer_chat_upload`
--
ALTER TABLE `mirrormx_customer_chat_upload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_fk_message` (`message_id`);

--
-- Indexes for table `mirrormx_customer_chat_user`
--
ALTER TABLE `mirrormx_customer_chat_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_mail_ix` (`mail`),
  ADD KEY `user_last_activity_ix` (`last_activity`);

--
-- Indexes for table `mirrormx_customer_chat_user_department`
--
ALTER TABLE `mirrormx_customer_chat_user_department`
  ADD UNIQUE KEY `user_department_uq` (`user_id`,`department_id`),
  ADD KEY `user_department_fk_department` (`department_id`);

--
-- Indexes for table `system_auth`
--
ALTER TABLE `system_auth`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_system_auth_status` (`status`) USING BTREE,
  ADD KEY `index_system_auth_title` (`title`) USING BTREE;

--
-- Indexes for table `system_auth_node`
--
ALTER TABLE `system_auth_node`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_system_auth_auth` (`auth`) USING BTREE,
  ADD KEY `index_system_auth_node` (`node`(191)) USING BTREE;

--
-- Indexes for table `system_auth_node_copy`
--
ALTER TABLE `system_auth_node_copy`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_system_auth_auth` (`auth`) USING BTREE,
  ADD KEY `index_system_auth_node` (`node`(191)) USING BTREE;

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_system_config_name` (`name`) USING BTREE;

--
-- Indexes for table `system_data`
--
ALTER TABLE `system_data`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_system_data_name` (`name`) USING BTREE;

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_menu`
--
ALTER TABLE `system_menu`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_system_menu_node` (`node`(191)) USING BTREE,
  ADD KEY `index_system_menu_status` (`status`) USING BTREE;

--
-- Indexes for table `system_queue`
--
ALTER TABLE `system_queue`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_system_queue_double` (`double`) USING BTREE,
  ADD KEY `index_system_queue_time` (`time`) USING BTREE,
  ADD KEY `index_system_queue_title` (`title`) USING BTREE,
  ADD KEY `index_system_queue_create_at` (`create_at`) USING BTREE;

--
-- Indexes for table `system_sms`
--
ALTER TABLE `system_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_user`
--
ALTER TABLE `system_user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_system_user_username` (`username`) USING BTREE,
  ADD KEY `index_system_user_status` (`status`) USING BTREE,
  ADD KEY `index_system_user_deleted` (`is_deleted`) USING BTREE;

--
-- Indexes for table `xy_balance_log`
--
ALTER TABLE `xy_balance_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oid` (`oid`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE;

--
-- Indexes for table `xy_bankinfo`
--
ALTER TABLE `xy_bankinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Uid` (`uid`),
  ADD KEY `Cardnum` (`cardnum`);

--
-- Indexes for table `xy_bank_list`
--
ALTER TABLE `xy_bank_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_banner`
--
ALTER TABLE `xy_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_convey`
--
ALTER TABLE `xy_convey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`) USING BTREE;

--
-- Indexes for table `xy_cs`
--
ALTER TABLE `xy_cs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_deal_elog`
--
ALTER TABLE `xy_deal_elog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oid` (`oid`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE;

--
-- Indexes for table `xy_deposit`
--
ALTER TABLE `xy_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_goods_cate`
--
ALTER TABLE `xy_goods_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_goods_list`
--
ALTER TABLE `xy_goods_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_goods_lists`
--
ALTER TABLE `xy_goods_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_goods_list_copy`
--
ALTER TABLE `xy_goods_list_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_index_msg`
--
ALTER TABLE `xy_index_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_io_log`
--
ALTER TABLE `xy_io_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oid` (`oid`) USING BTREE;

--
-- Indexes for table `xy_level`
--
ALTER TABLE `xy_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_lixibao`
--
ALTER TABLE `xy_lixibao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_lixibao_list`
--
ALTER TABLE `xy_lixibao_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_member_address`
--
ALTER TABLE `xy_member_address`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_xy_member_address_uid` (`uid`) USING BTREE,
  ADD KEY `index_xy_member_address_is_default` (`is_default`) USING BTREE;

--
-- Indexes for table `xy_message`
--
ALTER TABLE `xy_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE;

--
-- Indexes for table `xy_msg`
--
ALTER TABLE `xy_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_pay`
--
ALTER TABLE `xy_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_reads`
--
ALTER TABLE `xy_reads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid-uid` (`mid`,`uid`);

--
-- Indexes for table `xy_recharge`
--
ALTER TABLE `xy_recharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`) USING BTREE;

--
-- Indexes for table `xy_reward_log`
--
ALTER TABLE `xy_reward_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oid` (`oid`) USING BTREE;

--
-- Indexes for table `xy_script`
--
ALTER TABLE `xy_script`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_shop_goods_cate`
--
ALTER TABLE `xy_shop_goods_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_shop_goods_list`
--
ALTER TABLE `xy_shop_goods_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_shop_order`
--
ALTER TABLE `xy_shop_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_users`
--
ALTER TABLE `xy_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tel` (`tel`),
  ADD UNIQUE KEY `invite_code` (`invite_code`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `xy_user_error`
--
ALTER TABLE `xy_user_error`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`) USING BTREE;

--
-- Indexes for table `xy_verify_msg`
--
ALTER TABLE `xy_verify_msg`
  ADD PRIMARY KEY (`tel`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_data`
--
ALTER TABLE `mirrormx_customer_chat_data`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_department`
--
ALTER TABLE `mirrormx_customer_chat_department`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_shared_file`
--
ALTER TABLE `mirrormx_customer_chat_shared_file`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_talk`
--
ALTER TABLE `mirrormx_customer_chat_talk`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_upload`
--
ALTER TABLE `mirrormx_customer_chat_upload`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mirrormx_customer_chat_user`
--
ALTER TABLE `mirrormx_customer_chat_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_auth`
--
ALTER TABLE `system_auth`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_auth_node`
--
ALTER TABLE `system_auth_node`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1431;
--
-- AUTO_INCREMENT for table `system_auth_node_copy`
--
ALTER TABLE `system_auth_node_copy`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=765;
--
-- AUTO_INCREMENT for table `system_config`
--
ALTER TABLE `system_config`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `system_data`
--
ALTER TABLE `system_data`
  MODIFY `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `system_menu`
--
ALTER TABLE `system_menu`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `system_queue`
--
ALTER TABLE `system_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_sms`
--
ALTER TABLE `system_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `system_user`
--
ALTER TABLE `system_user`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT for table `xy_balance_log`
--
ALTER TABLE `xy_balance_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `xy_bankinfo`
--
ALTER TABLE `xy_bankinfo`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `xy_bank_list`
--
ALTER TABLE `xy_bank_list`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `xy_banner`
--
ALTER TABLE `xy_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `xy_cs`
--
ALTER TABLE `xy_cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `xy_deal_elog`
--
ALTER TABLE `xy_deal_elog`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xy_goods_cate`
--
ALTER TABLE `xy_goods_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `xy_goods_list`
--
ALTER TABLE `xy_goods_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=737;
--
-- AUTO_INCREMENT for table `xy_goods_lists`
--
ALTER TABLE `xy_goods_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xy_goods_list_copy`
--
ALTER TABLE `xy_goods_list_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `xy_index_msg`
--
ALTER TABLE `xy_index_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `xy_io_log`
--
ALTER TABLE `xy_io_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xy_level`
--
ALTER TABLE `xy_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `xy_lixibao`
--
ALTER TABLE `xy_lixibao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xy_lixibao_list`
--
ALTER TABLE `xy_lixibao_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `xy_member_address`
--
ALTER TABLE `xy_member_address`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xy_message`
--
ALTER TABLE `xy_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `xy_msg`
--
ALTER TABLE `xy_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xy_pay`
--
ALTER TABLE `xy_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `xy_reads`
--
ALTER TABLE `xy_reads`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xy_reward_log`
--
ALTER TABLE `xy_reward_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `xy_script`
--
ALTER TABLE `xy_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xy_shop_goods_cate`
--
ALTER TABLE `xy_shop_goods_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `xy_shop_goods_list`
--
ALTER TABLE `xy_shop_goods_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=642;
--
-- AUTO_INCREMENT for table `xy_users`
--
ALTER TABLE `xy_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `xy_user_error`
--
ALTER TABLE `xy_user_error`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- 限制导出的表
--

--
-- 限制表 `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  ADD CONSTRAINT `message_fk_talk` FOREIGN KEY (`talk_id`) REFERENCES `mirrormx_customer_chat_talk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `mirrormx_customer_chat_shared_file`
--
ALTER TABLE `mirrormx_customer_chat_shared_file`
  ADD CONSTRAINT `shared_file_fk_upload` FOREIGN KEY (`upload_id`) REFERENCES `mirrormx_customer_chat_upload` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `mirrormx_customer_chat_talk`
--
ALTER TABLE `mirrormx_customer_chat_talk`
  ADD CONSTRAINT `talk_fk_department` FOREIGN KEY (`department_id`) REFERENCES `mirrormx_customer_chat_department` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `mirrormx_customer_chat_upload`
--
ALTER TABLE `mirrormx_customer_chat_upload`
  ADD CONSTRAINT `upload_fk_message` FOREIGN KEY (`message_id`) REFERENCES `mirrormx_customer_chat_message` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `mirrormx_customer_chat_user_department`
--
ALTER TABLE `mirrormx_customer_chat_user_department`
  ADD CONSTRAINT `user_department_fk_department` FOREIGN KEY (`department_id`) REFERENCES `mirrormx_customer_chat_department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_department_fk_user` FOREIGN KEY (`user_id`) REFERENCES `mirrormx_customer_chat_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
