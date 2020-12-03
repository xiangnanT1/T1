<?php /*a:2:{s:60:"D:\wed\gongs\fang\dz\application\admin\view\config\info.html";i:1601238882;s:53:"D:\wed\gongs\fang\dz\application\admin\view\main.html";i:1583653880;}*/ ?>
<div class="layui-card layui-bg-gray"><style>    .right-btn {
        top: 0;
        right: 0;
        width: 38px;
        height: 38px;
        display: inline-block;
        position: absolute;
        text-align: center;
        line-height: 38px;
    }
</style><script>    window.form.render();
</script><script>    function clearData(){
        $.msg.confirm('确定要清理吗？', function (index) {
            //history.back();
            $.msg.close(index);
            var chk_value =[];
            $('input[name="clear"]:checked').each(function(){
                chk_value.push($(this).val());
            });

            console.log(chk_value)
            console.log(JSON.stringify( chk_value ))
            $.ajax({
                type: 'POST',
                url: "<?php echo url('clear'); ?>",
                data: {
                    'id': 2,
                    'data':JSON.stringify( chk_value ),
                    '_csrf_': "<?php echo systoken('admin/config/clear'); ?>"
                },
                success:function (res) {
                    layer.msg(res.info,{time:2500});
                    //location.reload();
                }
            });



        },function () {
            return false;
        });


    }
</script><style>        .layui-tab-card>.layui-tab-title .layui-this {
            background-color: #fff;
        }
    </style><!--<div class="layui-tab layui-tab-card" lay-allowClose="true" lay-filter="test1">--><!--<ul class="layui-tab-title">--><!--<li lay-id="/admin/users/index" class="layui-this">网站设置</li>--><!--<li lay-id="/admin/deal/order_list">用户基本管理</li>--><!--<li lay-id="222">权限分配</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--</ul>--><!--</div>--><?php if(!(empty($title) || (($title instanceof \think\Collection || $title instanceof \think\Paginator ) && $title->isEmpty()))): ?><div class="layui-card-header layui-anim layui-anim-fadein notselect"><span class="layui-icon layui-icon-next font-s10 color-desc margin-right-5"></span><?php echo htmlentities((isset($title) && ($title !== '')?$title:'')); ?><div class="pull-right"></div></div><?php endif; ?><div class="layui-card-body layui-anim layui-anim-upbit"><?php if(auth('config')): ?><div class="think-box-shadow margin-bottom-15"><span class="color-green font-w7 text-middle">数据清理：</span><div class="layui-form layui-card" ><div class="layui-card-body"><div class="layui-form-item" pane=""><label class="layui-form-label">显示选项</label><div class="layui-input-block" id="clear"><input type="checkbox" name="clear" value="1" lay-skin="primary" title="用户" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>用户</span><i class="layui-icon layui-icon-ok"></i></div><input type="checkbox" name="clear" value="2" lay-skin="primary" title="交易" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>交易</span><i class="layui-icon layui-icon-ok"></i></div><input type="checkbox" name="clear" value="3" lay-skin="primary" title="财务记录" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>财务记录</span><i class="layui-icon layui-icon-ok"></i></div><input type="checkbox" name="clear" value="4" lay-skin="primary" title="充值" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>充值</span><i class="layui-icon layui-icon-ok"></i></div><input type="checkbox" name="clear" value="5" lay-skin="primary" title="提现" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>提现</span><i class="layui-icon layui-icon-ok"></i></div><input type="checkbox" name="clear" value="6" lay-skin="primary" title="银行卡" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>银行卡</span><i class="layui-icon layui-icon-ok"></i></div><input type="checkbox" name="clear" value="7" lay-skin="primary" title="地址" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>地址</span><i class="layui-icon layui-icon-ok"></i></div><input type="checkbox" name="clear" value="8" lay-skin="primary" title="利息宝" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>利息宝</span><i class="layui-icon layui-icon-ok"></i></div><input type="checkbox" name="clear" value="9" lay-skin="primary" title="抖音审核" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>抖音审核</span><i class="layui-icon layui-icon-ok"></i></div><input type="checkbox" name="clear" value="10" lay-skin="primary" title="抖音任务" ><div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="primary"><span>抖音任务</span><i class="layui-icon layui-icon-ok"></i></div></div></div></div></div><a class="layui-btn layui-btn-sm" onclick="clearData()" >确定清理</a></div><?php endif; if(auth('config')): ?><div class="think-box-shadow margin-bottom-15"><span class="color-green font-w7 text-middle">系统参数配置：</span><a class="layui-btn layui-btn-sm" data-modal="<?php echo url('config'); ?>">修改系统配置</a></div><?php endif; ?><div class="think-box-shadow margin-bottom-15"><span class="color-green font-w7 text-middle">文件存储引擎：</span><?php foreach(['local'=>'本地服务器存储','qiniu'=>'七牛云对象存储','oss'=>'阿里云OSS存储'] as $k=>$v): if(sysconf('storage_type') == $k): if(auth('file')): ?><a data-modal="<?php echo url('file'); ?>?type=<?php echo htmlentities($k); ?>" class="layui-btn layui-btn-sm"><?php echo htmlentities($v); ?></a><?php else: ?><a class="layui-btn layui-btn-sm"><?php echo htmlentities($v); ?></a><?php endif; elseif(auth('file')): ?><a data-modal="<?php echo url('file'); ?>?type=<?php echo htmlentities($k); ?>" class="layui-btn layui-btn-sm layui-btn-primary"><?php echo htmlentities($v); ?></a><?php endif; ?><?php endforeach; ?><a data-modal="<?php echo url('storage_sms'); ?>" class="layui-btn layui-btn-sm layui-btn-primary">短信开关</a></div><div class="think-box-shadow padding-40"><div class="layui-form-item"><span class="color-green font-w7">网站名称 Website</span><label class="relative block"><input readonly value="<?php echo sysconf('site_name'); ?>" class="layui-input layui-bg-gray"><a data-copy="<?php echo sysconf('site_name'); ?>" class="fa fa-copy right-btn"></a></label><p class="help-block">网站名称及网站图标，将显示在浏览器的标签上</p></div><div class="layui-form-item"><span class="color-green font-w7">网站名称 Website</span><label class="relative block"><input readonly value="<?php echo sysconf('site_name'); ?>" class="layui-input layui-bg-gray"><a data-copy="<?php echo sysconf('site_name'); ?>" class="fa fa-copy right-btn"></a></label><p class="help-block">网站名称及网站图标，将显示在浏览器的标签上</p></div><div class="layui-form-item"><span class="color-green font-w7">管理程序名称 Name</span><label class="relative block"><input readonly placeholder="请输入程序名称" value="<?php echo sysconf('app_name'); ?>" class="layui-input layui-bg-gray"><a data-copy="<?php echo sysconf('app_name'); ?>" class="fa fa-copy right-btn"></a></label><p class="help-block">管理程序名称，将显示在后台左上角标题</p></div><div class="layui-form-item"><span class="color-green font-w7">管理程序版本 Version</span><label class="relative block"><input readonly value="<?php echo sysconf('app_version'); ?>" class="layui-input layui-bg-gray"><a data-copy="<?php echo sysconf('app_version'); ?>" class="fa fa-copy right-btn"></a></label><p class="help-block">管理程序版本，将显示在后台左上角标题</p></div><div class="layui-form-item"><span class="color-green font-w7">网站备案号 Miitbeian</span><label class="relative block"><input readonly value="<?php echo sysconf('miitbeian'); ?>" class="layui-input layui-bg-gray"><a data-copy="<?php echo sysconf('miitbeian'); ?>" class="fa fa-copy right-btn"></a></label><p class="help-block">网站备案号，可以在<a target="_blank" href="http://beian.miit.gov.cn">备案管理中心</a>查询获取，将显示在登录页面下面</p></div><div class="layui-form-item"><span class="color-green font-w7">网站版权信息 Copyright</span><label class="relative block"><input readonly value="<?php echo sysconf('site_copy'); ?>" class="layui-input layui-bg-gray"><a data-copy="<?php echo sysconf('site_copy'); ?>" class="fa fa-copy right-btn"></a></label><p class="help-block">网站版权信息，在后台登录页面显示版本信息并链接到备案到信息备案管理系统</p></div></div></div></div><script>//    layui.use('element', function(){
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