<?php /*a:2:{s:66:"D:\wed\gongs\fang\dz\application\admin\view\deal\lixibao_list.html";i:1583119610;s:53:"D:\wed\gongs\fang\dz\application\admin\view\main.html";i:1583653880;}*/ ?>
<div class="layui-card layui-bg-gray"><style>        .layui-tab-card>.layui-tab-title .layui-this {
            background-color: #fff;
        }
    </style><!--<div class="layui-tab layui-tab-card" lay-allowClose="true" lay-filter="test1">--><!--<ul class="layui-tab-title">--><!--<li lay-id="/admin/users/index" class="layui-this">网站设置</li>--><!--<li lay-id="/admin/deal/order_list">用户基本管理</li>--><!--<li lay-id="222">权限分配</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--</ul>--><!--</div>--><?php if(!(empty($title) || (($title instanceof \think\Collection || $title instanceof \think\Paginator ) && $title->isEmpty()))): ?><div class="layui-card-header layui-anim layui-anim-fadein notselect"><span class="layui-icon layui-icon-next font-s10 color-desc margin-right-5"></span><?php echo htmlentities((isset($title) && ($title !== '')?$title:'')); ?><div class="pull-right"><?php if(auth("add_lixibao")): ?><button data-open='<?php echo url("add_lixibao"); ?>' data-title="添加选项" class='layui-btn'>添加选项</button><?php endif; ?></div></div><?php endif; ?><div class="layui-card-body layui-anim layui-anim-upbit"><div class="think-box-shadow"><fieldset><legend>条件搜索</legend><form class="layui-form layui-form-pane form-search" action="<?php echo request()->url(); ?>" onsubmit="return false" method="get" autocomplete="off"><div class="layui-form-item layui-inline"><label class="layui-form-label">发起时间</label><div class="layui-input-inline"><input data-date-range name="addtime" value="<?php echo htmlentities((app('request')->get('addtime') ?: '')); ?>" placeholder="请选择发起时间" class="layui-input"></div></div><div class="layui-form-item layui-inline"><button class="layui-btn layui-btn-primary"><i class="layui-icon">&#xe615;</i> 搜 索</button></div></form></fieldset><script>form.render()</script><table class="layui-table margin-top-15" lay-skin="line"><?php if(!(empty($list) || (($list instanceof \think\Collection || $list instanceof \think\Paginator ) && $list->isEmpty()))): ?><thead><tr><th class='list-table-check-td think-checkbox'><input data-auto-none data-check-target='.list-check-box' type='checkbox'></th><th class='text-left nowrap'>编号</th><th class='text-left nowrap'>产品名称</th><th class='text-left nowrap'>期限</th><th class='text-left nowrap'>利率</th><th class='text-left nowrap'>手续费</th><th class='text-left nowrap'>最低限制金额</th><th class='text-left nowrap'>最高限制金额</th><th class='text-left nowrap'>状态</th><th class='text-left nowrap'>提交时间</th><th class='text-left nowrap'>操作</th></tr></thead><?php endif; ?><tbody><?php foreach($list as $key=>$vo): ?><tr><td class='list-table-check-td think-checkbox'><input class="list-check-box" value='<?php echo htmlentities($vo['id']); ?>' type='checkbox'></td><td class='text-left nowrap'><?php echo htmlentities($vo['id']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['name']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['day']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['bili']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['shouxu']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['min_num']); ?></td><td class='text-left nowrap'><?php echo htmlentities($vo['max_num']); ?></td><td class='text-left nowrap'><?php switch($vo['status']): case "1": ?>启用<?php break; case "0": ?>未启用<?php break; ?><?php endswitch; ?></td><td class='text-left nowrap'><?php echo htmlentities(format_datetime($vo['addtime'])); ?></td><td class='text-left nowrap'><?php if($vo['status'] == 1): ?><a class="layui-btn layui-btn-warm layui-btn-xs" data-action="<?php echo url('lxb_forbid'); ?>" data-value="id#<?php echo htmlentities($vo['id']); ?>;status#0" data-csrf="<?php echo systoken('admin/deal/lxb_forbid'); ?>">禁 用</a><?php elseif($vo['status'] == 0): ?><a class="layui-btn layui-btn-warm layui-btn-xs" data-action="<?php echo url('lxb_resume'); ?>" data-value="id#<?php echo htmlentities($vo['id']); ?>;status#1" data-csrf="<?php echo systoken('admin/deal/lxb_resume'); ?>">启 用</a><?php endif; if(auth("edit_lixibao")): ?><a class="layui-btn layui-btn-xs layui-btn" data-open="<?php echo url('edit_lixibao',['id'=>$vo['id']]); ?>" data-value="id#<?php echo htmlentities($vo['id']); ?>" style='background:green;'>编辑</a><?php endif; if(auth("del_lixibao")): ?><a class="layui-btn layui-btn-xs layui-btn" style='background:red;' onClick="del_goods(<?php echo htmlentities($vo['id']); ?>)">删除</a><?php endif; ?></td></tr><?php endforeach; ?></tbody></table><?php if(empty($list) || (($list instanceof \think\Collection || $list instanceof \think\Paginator ) && $list->isEmpty())): ?><span class="notdata">没有记录哦</span><?php else: ?><?php echo (isset($pagehtml) && ($pagehtml !== '')?$pagehtml:''); ?><?php endif; ?><script>
        var test = "<?php echo htmlentities((app('request')->get('type') ?: '0')); ?>";
        $("#selectList").find("option[value="+test+"]").prop("selected",true);

        form.render()



    </script><script>
        function del_goods(id){
            layer.confirm("确认要删除吗，删除后不能恢复",{ title: "删除确认" },function(index){
                $.ajax({
                    type: 'POST',
                    url: "<?php echo url('del_lixibao'); ?>",
                    data: {
                        'id': id,
                        '_csrf_': "<?php echo systoken('admin/deal/del_lixibao'); ?>"
                    },
                    success:function (res) {
                        layer.msg(res.info,{time:2500});
                        location.reload();
                    }
                });
            },function(){});
        }
    </script></div></div></div><script>//    layui.use('element', function(){
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