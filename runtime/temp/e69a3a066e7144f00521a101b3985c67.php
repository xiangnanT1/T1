<?php /*a:2:{s:59:"D:\wed\gongs\fang\dz\application\admin\view\index\main.html";i:1601555502;s:53:"D:\wed\gongs\fang\dz\application\admin\view\main.html";i:1583653880;}*/ ?>
<div class="layui-card layui-bg-gray"><style>        .layui-tab-card>.layui-tab-title .layui-this {
            background-color: #fff;
        }
    </style><!--<div class="layui-tab layui-tab-card" lay-allowClose="true" lay-filter="test1">--><!--<ul class="layui-tab-title">--><!--<li lay-id="/admin/users/index" class="layui-this">网站设置</li>--><!--<li lay-id="/admin/deal/order_list">用户基本管理</li>--><!--<li lay-id="222">权限分配</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--</ul>--><!--</div>--><?php if(!(empty($title) || (($title instanceof \think\Collection || $title instanceof \think\Paginator ) && $title->isEmpty()))): ?><div class="layui-card-header layui-anim layui-anim-fadein notselect"><span class="layui-icon layui-icon-next font-s10 color-desc margin-right-5"></span><?php echo htmlentities((isset($title) && ($title !== '')?$title:'')); ?><div class="pull-right"></div></div><?php endif; ?><div class="layui-card-body layui-anim layui-anim-upbit"><style>    .store-total-container {
        font-size: 14px;
        margin-bottom: 20px;
        letter-spacing: 1px;
    }

    .store-total-container .store-total-icon {
        top: 45%;
        right: 8%;
        font-size: 65px;
        position: absolute;
        color: rgba(255, 255, 255, 0.4);
    }

    .store-total-container .store-total-item {
        color: #fff;
        line-height: 4em;
        padding: 15px 25px;
        position: relative;
    }

    .store-total-container .store-total-item > div:nth-child(2) {
        font-size: 46px;
        line-height: 46px;
    }

    .num2{font-size: 20px;font-weight: bold;line-height: 100%}
    .store-total-container .store-total-item > div:nth-child(2) {
        font-size: 26px;
        line-height: 36px;
        font-weight: bold;
    }
    .store-total-container .store-total-item{line-height: 2em}
</style><div class="think-box-shadow store-total-container notselect"><div class="margin-bottom-15">商城统计</div><div class="layui-row layui-col-space15"><div class="layui-col-sm6 layui-col-md3"><div class="store-total-item nowrap" style="background:linear-gradient(-125deg,#57bdbf,#2f9de2)"><div>商品总量</div><div><?php echo htmlentities($goods_num); ?></div><div>今日新增商品 <span class="num2"><?php echo htmlentities($today_goods_num); ?></span></div><p>昨日新增商品 <span class="num3"><?php echo htmlentities($yes_goods_num); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-template-1"></i></div><div class="layui-col-sm6 layui-col-md3"><div class="store-total-item nowrap" style="background:linear-gradient(-125deg,#ff7d7d,#fb2c95)"><div>用户总量</div><div><?php echo htmlentities($users_num); ?></div><div>今日新增用户 <span class="num2"><?php echo htmlentities($today_users_num); ?></span></div><p>昨日新增用户 <span class="num3"><?php echo htmlentities($yes_users_num); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-user"></i></div><div class="layui-col-sm6 layui-col-md3"><div class="store-total-item nowrap" style="background:linear-gradient(-113deg,#c543d8,#925cc3)"><div>订单总量</div><div><?php echo htmlentities($order_num); ?></div><div>今日新增订单 <span class="num2"><?php echo htmlentities($today_order_num); ?></span></div><p>昨日新增订单 <span class="num3"><?php echo htmlentities($yes_order_num); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-read"></i></div><div class="layui-col-sm6 layui-col-md3"><div class="store-total-item nowrap" style="background: linear-gradient(-113deg,#8e8cb3,#2219d0);"><div>订单总金额</div><div><?php echo htmlentities($order_sum); ?></div><div>今日新增订单总金额 <span class="num2"><?php echo htmlentities($today_order_sum); ?></span></div><p>昨日新增订单总金额 <span class="num3"><?php echo htmlentities($yes_order_sum); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-rmb"></i></div><div class="layui-col-sm6 layui-col-md2"><div class="store-total-item nowrap" style="background:linear-gradient(-141deg,#ecca1b,#f39526)"><div>用户充值</div><div><?php echo htmlentities($user_recharge); ?></div><div>今日新增充值 <span class="num2"><?php echo htmlentities($today_user_recharge); ?></span></div><p>昨日新增充值 <span class="num3"><?php echo htmlentities($yes_user_recharge); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-survey"></i></div><div class="layui-col-sm6 layui-col-md2"><div class="store-total-item nowrap" style="background: linear-gradient(-141deg,#ec4b1b,#f39526);"><div>用户提现</div><div><?php echo htmlentities($user_deposit); ?></div><div>今日新增提现 <span class="num2"><?php echo htmlentities($today_user_deposit); ?></span></div><p>昨日新增提现 <span class="num3"><?php echo htmlentities($yes_user_deposit); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-dollar"></i></div><div class="layui-col-sm6 layui-col-md2"><div class="store-total-item nowrap" style="background: linear-gradient(-141deg,#963064,#8a0920);"><div>匹配佣金</div><div><?php echo htmlentities($user_yongjin); ?></div><div>今日新增佣金 <span class="num2"><?php echo htmlentities($today_user_yongjin); ?></span></div><p>昨日新增佣金 <span class="num3"><?php echo htmlentities($yes_user_yongjin); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-survey"></i></div><div class="layui-col-sm6 layui-col-md2"><div class="store-total-item nowrap" style="background: linear-gradient(-141deg,#1bec78,#155623);"><div>利息宝转入</div><div><?php echo htmlentities($user_lixibao); ?></div><div>今日新增利息宝 <span class="num2"><?php echo htmlentities($today_user_lixibao); ?></span></div><p>昨日新增利息宝 <span class="num3"><?php echo htmlentities($yes_user_lixibao); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-dollar"></i></div><div class="layui-col-sm6 layui-col-md2"><div class="store-total-item nowrap" style="background: linear-gradient(-141deg,#ea7575,#abd6c6);"><div>下级返佣</div><div><?php echo htmlentities($user_fanyong); ?></div><div>今日新增佣金 <span class="num2"><?php echo htmlentities($today_user_fanyong); ?></span></div><p>昨日新增佣金 <span class="num3"><?php echo htmlentities($yes_user_fanyong); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-survey"></i></div><div class="layui-col-sm6 layui-col-md2"><div class="store-total-item nowrap" style="background: linear-gradient(-141deg,#2f3331,#565115);"><div>用户总余额</div><div style="font-size: 14px"><?php echo htmlentities($user_yue); ?>(<?php echo htmlentities($user_djyue); ?>)</div><div>今日利息宝转出 <span class="num2"><?php echo htmlentities($today_lxbzc); ?></span></div><p>今日利息宝收益 <span class="num3"><?php echo htmlentities($today_lxbsy); ?></span></p></div><i class="store-total-icon layui-icon layui-icon-dollar"></i></div></div></div><!--<div class="think-box-shadow store-total-container">--><!--    <div class="margin-bottom-15">在线客服系统</div>--><!--    <div class="layui-row layui-col-space15">--><!--        <a target="_blank" href="/customlivechat/"> 客服系统管理后台入口</a><br>--><!--        <a target="_blank" href="/customlivechat/php/app.php?widget-test"> 小部件测试</a><br>--><!--        <a target="_blank" href="/customlivechat/php/app.php?widget-iframe-content"> 客服系统客户端测试</a>--><!--        <p>新增客服系统 , 账号:admin 密码: admin01</p>--><!--<p><button type="button" class="layui-btn layui-btn-danger">互站某*** 连商品详情用的都是我们的图片,请各位知晓,某些站长毫无底线,一点技术都没,怎么帮客户解决问题,唯一客服:674956258</button></p>--><!--    </div>--><!--</div>--><div class="layui-row layui-col-space15"><div class="layui-col-md6"><div class="think-box-shadow"><table class="layui-table" lay-skin="line" lay-even><caption class="text-left margin-bottom-15 font-s14">系统信息</caption><colgroup><col width="30%"></colgroup><tbody><tr><td>当前程序版本</td><td><?php echo sysconf('app_version'); ?></td></tr><tr><td>运行PHP版本</td><td><?php echo htmlentities(PHP_VERSION); ?></td></tr><tr><td>ThinkPHP版本</td><td><?php echo htmlentities($think_ver); ?></td></tr><tr><td>MySQL数据库版本</td><td><?php echo htmlentities($mysql_ver); ?></td></tr><tr><td>服务器操作系统</td><td><?php echo php_uname('s'); ?></td></tr><tr><td>WEB运行环境</td><td><?php echo php_sapi_name(); ?></td></tr><tr><td>上传大小限制</td><td><?php echo ini_get('upload_max_filesize'); ?></td></tr><tr><td>POST大小限制</td><td><?php echo ini_get('post_max_size'); ?></td></tr></tbody></table></div></div><div class="layui-col-md6"><div class="think-box-shadow" id="versionTest" data-version="<?php echo htmlentities($has_version); ?>"><table class="layui-table" lay-skin="line" lay-even><caption class="text-left margin-bottom-15 font-s14">产品团队</caption><colgroup><col width="30%"></colgroup><tbody><tr><td>产品名称</td><td>匹配源码</td></tr><tr><td>产品说明</td><td>本产品只为学习测试交流,请勿要做商业或者用于违法行为,一切后果自负</td></tr><tr><td>请勿点击</td><td><a href="#"><img src="" style="height:18px;width:auto" target="_blank"></a></td></tr><tr><td>产品大小</td><td><a target="_blank" href="">25.5M</a></td></tr><tr><td>数据库</td><td><a target="_blank" href="">mysql</a></td></tr><tr><td>版本</td><td><?php echo config('version'); ?>  　　<a  onclick="return updateVersion()" href="javascript:void(0)">检查更新</a></td></tr></tbody></table></div></div></div><script>    $(function () {
        if ($('#versionTest').data('version')) {
            setTimeout(function () {
                updateVersion();
            }, 1000);
        }
    });



    function updateVersion() {
        //多窗口模式，层叠置顶
        layer.open({
            type: 2 //此处以iframe举例
            , title: '有新的版本更新提示!'
            , area: ['680px', '550px']
            , shade: 0
            ,skin: 'layui-layer-setmybg'
            , maxmin: true
            , content: "<?php echo url('Index/clear'); ?>"+'?'
            , btn: ['查看全部更新记录', '关闭'] //只是为了演示
            , yes: function () {
                window.open('');
            }
            , btn2: function () {
                layer.closeAll();
            }

            , zIndex: layer.zIndex //重点1
            , success: function (layero) {
                layer.setTop(layero); //重点2
            }
        });
        return false;
    }
</script></div></div><script>//    layui.use('element', function(){
//        var element = layui.element;
//
//        element.tabAdd('demo', {
//            title: '选项卡的标题'
//            ,content: '选项卡的内容' //支持传入html
//            ,id: '选项卡标题的lay-id属性值'
//        });
//
//        //获取hash来切换选项卡，假设当前地址的hash为lay-id对应的值
//        var layid = location.hash.replace(/^#test1=/, '');
//        element.tabChange('test1', layid); //假设当前地址为：http://a.com#test1=222，那么选项卡会自动切换到“发送消息”这一项
//
//        //监听Tab切换，以改变地址hash值
//        element.on('tab(test1)', function(){
//            location.hash = ''+ this.getAttribute('lay-id');
//        });
//    });

</script>