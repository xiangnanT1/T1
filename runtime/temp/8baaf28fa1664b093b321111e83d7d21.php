<?php /*a:2:{s:59:"D:\wed\gongs\fang\dz\application\admin\view\auth\apply.html";i:1575947686;s:53:"D:\wed\gongs\fang\dz\application\admin\view\main.html";i:1583653880;}*/ ?>
<div class="layui-card layui-bg-gray"><link href="/static/plugs/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet"><script src="/static/plugs/ztree/ztree.all.min.js"></script><style>    ul.ztree li {
        white-space: normal !important;
    }

    ul.ztree li span.button.switch {
        margin-right: 5px;
    }

    ul.ztree ul ul li {
        display: inline-block;
        white-space: normal;
    }

    ul.ztree > li {
        padding: 15px 25px 15px 15px;
    }

    ul.ztree > li > ul {
        margin-top: 12px;
        border-top: 1px solid rgba(0, 0, 0, .1);
    }

    ul.ztree > li > ul > li {
        padding: 5px;
    }

    ul.ztree > li > a > span {
        font-weight: 700;
        font-size: 15px;
    }

    ul.ztree .level2 .button.level2 {
        background: 0 0;
    }
</style><style>        .layui-tab-card>.layui-tab-title .layui-this {
            background-color: #fff;
        }
    </style><!--<div class="layui-tab layui-tab-card" lay-allowClose="true" lay-filter="test1">--><!--<ul class="layui-tab-title">--><!--<li lay-id="/admin/users/index" class="layui-this">网站设置</li>--><!--<li lay-id="/admin/deal/order_list">用户基本管理</li>--><!--<li lay-id="222">权限分配</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">全部历史商品管理文字长一点试试</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--<li lay-id="222">订单管理</li>--><!--</ul>--><!--</div>--><?php if(!(empty($title) || (($title instanceof \think\Collection || $title instanceof \think\Paginator ) && $title->isEmpty()))): ?><div class="layui-card-header layui-anim layui-anim-fadein notselect"><span class="layui-icon layui-icon-next font-s10 color-desc margin-right-5"></span><?php echo htmlentities((isset($title) && ($title !== '')?$title:'')); ?><div class="pull-right"><?php if(auth("admin/auth/refresh")): ?><button data-load='<?php echo url("refresh"); ?>' class='layui-btn layui-btn-sm layui-btn-primary'>刷新权限</button><?php endif; ?></div></div><?php endif; ?><div class="layui-card-body layui-anim layui-anim-upbit"><div class="think-box-shadow"><ul id="zTree" class="ztree notselect"></ul><div class="hr-line-dashed"></div><div class="layui-form-item text-center"><button class="layui-btn" data-submit-role type='button'>保存数据</button><button class="layui-btn layui-btn-danger" type='button' onclick="window.history.back()">取消编辑</button></div></div></div><script>    window.RoleAction = new function () {
        this.data = {};
        this.ztree = null;
        this.setting = {
            view: {showLine: false, showIcon: false, dblClickExpand: false},
            check: {enable: true, nocheck: false, chkboxType: {"Y": "ps", "N": "ps"}},
            callback: {
                beforeClick: function (id, node) {
                    node.children.length < 1 ? RoleAction.ztree.checkNode(node, !node.checked, null, true) : RoleAction.ztree.expandNode(node);
                    return false;
                }
            }
        };
        this.renderChildren = function (list, level) {
            var childrens = [];
            for (var i in list) childrens.push({
                open: true, node: list[i].node, name: list[i].title || list[i].node,
                checked: list[i].checked || false, children: this.renderChildren(list[i]._sub_, level + 1)
            });
            return childrens;
        };
        this.getData = function (that) {
            var index = $.msg.loading();
            $.form.load('<?php echo url(); ?>', {id: '<?php echo htmlentities($vo['id']); ?>', action: 'get'}, 'post', function (ret) {
                that.data = that.renderChildren(ret.data, 1);
                return $.msg.close(index), that.showTree(), false;
            });
        };
        this.showTree = function () {
            this.ztree = $.fn.zTree.init($("#zTree"), this.setting, this.data);
            while (true) {
                var nodes = this.ztree.getNodesByFilter(function (node) {
                    return (!node.node && node.children.length < 1);
                });
                if (nodes.length < 1) break;
                for (var i in nodes) this.ztree.removeNode(nodes[i]);
            }
        };
        this.submit = function () {
            var nodes = [], data = this.ztree.getCheckedNodes(true);
            for (var i in data) if (data[i].node) nodes.push(data[i].node);
            $.form.load('<?php echo url(); ?>', {id: '<?php echo htmlentities($vo['id']); ?>', action: 'save', nodes: nodes}, 'post');
        };
        // 刷新数据
        this.getData(this);
        // 提交表单
        $('[data-submit-role]').on('click', function () {
            RoleAction.submit();
        });
    };
</script></div><script>//    layui.use('element', function(){
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