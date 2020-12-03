<?php /*a:2:{s:60:"D:\wed\gongs\fang\dz\application\admin\view\users\level.html";i:1601716506;s:53:"D:\wed\gongs\fang\dz\application\admin\view\main.html";i:1583653880;}*/ ?>
<div class="layui-card layui-bg-gray"><style>        .layui-tab-card>.layui-tab-title .layui-this {
            background-color: #fff;
        }
    </style><!--<div class="layui-tab layui-tab-card" lay-allowClose="true" lay-filter="test1">--><!--<ul class="layui-tab-title">--><!--<li lay-id="/admin/users/index" class="layui-this">网站设置</li>--><!--<li lay-id="/admin/deal/order_list">用户基本管理</li>--><!--<li lay-id="222">权限分配</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--</ul>--><!--</div>--><?php if(!(empty($title) || (($title instanceof \think\Collection || $title instanceof \think\Paginator ) && $title->isEmpty()))): ?><div class="layui-card-header layui-anim layui-anim-fadein notselect"><span class="layui-icon layui-icon-next font-s10 color-desc margin-right-5"></span><?php echo htmlentities((isset($title) && ($title !== '')?$title:'')); ?><div class="pull-right"><?php if(auth("add_users")): ?><!--<button data-modal='<?php echo url("add_users"); ?>' data-title="添加等级" class='layui-btn'>添加等级</button>--><?php endif; ?></div></div><?php endif; ?><div class="layui-card-body layui-anim layui-anim-upbit"><div class="think-box-shadow"><table class="layui-table margin-top-15" lay-filter="tab" lay-skin="line"><?php if(!(empty($list) || (($list instanceof \think\Collection || $list instanceof \think\Paginator ) && $list->isEmpty()))): ?><thead><tr><th lay-data="{field:'id',width:80}" class='text-left nowrap'>ID</th><th lay-data="{field:'name',width:80}" class='text-left nowrap'>名称</th><th lay-data="{field:'pic',width:80}" class='text-left nowrap'>图标</th><th lay-data="{field:'num',width:80}" class='text-left nowrap'>升级条件（累计充值）</th><th lay-data="{field:'bili',width:80}" class='text-left nowrap'>佣金比例</th><th lay-data="{field:'num_min',width:120}" class='text-left nowrap'>最小余额</th><th lay-data="{field:'order_num',width:80}" class='text-left nowrap'>接单次数</th><th lay-data="{field:'tiktok_num',width:80}" class='text-left nowrap'>抖音接单次数</th><th lay-data="{field:'tixian_ci',width:80}" class='text-left nowrap'>提现次数</th><th lay-data="{field:'tixian_min',width:110}" class='text-left nowrap'>提现最小金额</th><th lay-data="{field:'tixian_max',width:110}" class='text-left nowrap'>提现最大金额</th><th lay-data="{field:'addtime',width:200}" class='text-left nowrap'>注册时间</th><th lay-data="{field:'edit',width:280,fixed: 'right'}" class='text-left nowrap'>操作</th></tr></thead><?php endif; ?><tbody><?php foreach($list as $key=>$vo): ?><tr><td class='text-left nowrap'><?php echo htmlentities($vo['id']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['name']); ?></td><td class='text-left nowrap'><img src="<?php echo htmlentities($vo['pic']); ?>" alt="" style="width: 100%"></td><td class='text-left nowrap'><?php echo htmlentities($vo['num']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['bili']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['num_min']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['order_num']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['tiktok_num']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['tixian_ci']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['tixian_min']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['tixian_max']); ?></td><td class='text-left nowrap'><?php echo htmlentities(format_datetime($vo['addtime'])); ?></td><td class='text-left nowrap'><a data-dbclick class="layui-btn layui-btn-xs" data-title="会员等级" data-modal='<?php echo url("admin/users/edit_users_level"); ?>?id=<?php echo htmlentities($vo['id']); ?>'>编辑</a><a class="layui-btn layui-btn-xs layui-btn" onClick="del_user(<?php echo htmlentities($vo['id']); ?>)" style='background:red;'>删除</a></td></tr><?php endforeach; ?></tbody></table><script>        function del_user(id){
            layer.confirm("确认要删除吗，删除后不能恢复",{ title: "删除确认" },function(index){
                $.ajax({
                    type: 'POST',
                    url: "<?php echo url('delete_user'); ?>",
                    data: {
                        'id': id,
                        '_csrf_': "<?php echo systoken('admin/users/delete_user'); ?>"
                    },
                    success:function (res) {
                        layer.msg(res.info,{time:2500});
                        location.reload();
                    }
                });
            },function(){});
        }
    </script><script>        var table = layui.table;
        //转换静态表格
        var limit = Number('<?php echo htmlentities(app('request')->get('limit')); ?>');
        if(limit==0) limit=20;
        table.init('tab', {
            cellMinWidth:120,
            skin: 'line,row',
            size: 'lg',
            limit: limit
        });
    </script><?php if(empty($list) || (($list instanceof \think\Collection || $list instanceof \think\Paginator ) && $list->isEmpty())): ?><span class="notdata">没有记录哦</span><?php else: ?><?php echo (isset($pagehtml) && ($pagehtml !== '')?$pagehtml:''); ?><?php endif; ?></div></div></div><script>//    layui.use('element', function(){
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