<?php /*a:1:{s:58:"D:\wed\gongs\fang\dz\application\admin\view\user\form.html";i:1575947686;}*/ ?>
<form class="layui-form layui-card" action="<?php echo request()->url(); ?>" data-auto="true" method="post" autocomplete="off"><div class="layui-card-body padding-left-40"><div class="layui-form-item"><label class="relative block"><span class="color-green font-w7">登录用户账号</span><span class="color-desc margin-left-5">Username</span><?php if(isset($vo) and isset($vo['username'])): ?><input disabled value='<?php echo htmlentities((isset($vo['username']) && ($vo['username'] !== '')?$vo['username']:"")); ?>' class="layui-input layui-bg-gray"><?php else: ?><input name="username" value='<?php echo htmlentities((isset($vo['username']) && ($vo['username'] !== '')?$vo['username']:"")); ?>' required pattern="^.{4,}$" placeholder="请输入4位及以上字符登录用户账号" class="layui-input"><?php endif; ?></label><p class="help-block">登录用户账号创建后，不允许再次修改。</p></div><div class="layui-form-item"><label class="relative block"><span class="color-green font-w7">用户联系手机</span><span class="color-desc margin-left-5">Phone</span><input type="tel" maxlength="11" autocomplete="off" autofocus name="phone" value='<?php echo htmlentities((isset($vo['phone']) && ($vo['phone'] !== '')?$vo['phone']:"")); ?>' pattern="^1[3-9][0-9]{9}$" placeholder="请输入用户联系手机" class="layui-input"></label><p class="color-desc">可选，用户联系手机号码，需要填写正确的格式</p></div><div class="layui-form-item"><label class="relative block"><span class="color-green font-w7">联系电子邮箱</span><span class="color-desc margin-left-5">Email</span><input name="mail" autocomplete="off" pattern="^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$" value='<?php echo htmlentities((isset($vo['mail']) && ($vo['mail'] !== '')?$vo['mail']:"")); ?>' placeholder="请输入联系电子邮箱" class="layui-input"></label><p class="color-desc">可选，用户联系电子邮箱，需要填写正确的格式</p></div><?php if(!(empty($authorizes) || (($authorizes instanceof \think\Collection || $authorizes instanceof \think\Paginator ) && $authorizes->isEmpty()))): ?><div class="layui-form-item relative"><span class="color-green font-w7">角色访问授权</span><span class="color-desc margin-left-5">Authorization</span><div class="layui-textarea"><?php if(isset($vo['username']) and $vo['username'] == 'admin'): ?><span class="color-desc">超级用户不需要配置权限</span><?php elseif(empty($authorizes)): ?><span class="color-desc">未配置权限</span><?php else: foreach($authorizes as $authorize): ?><label class="think-checkbox layui-unselect"><?php if(in_array($authorize['id'], $vo['authorize'])): ?><input type="checkbox" checked name="authorize[]" value="<?php echo htmlentities($authorize['id']); ?>" lay-ignore><?php echo htmlentities($authorize['title']); else: ?><input type="checkbox" name="authorize[]" value="<?php echo htmlentities($authorize['id']); ?>" lay-ignore><?php echo htmlentities($authorize['title']); ?><?php endif; ?></label><?php endforeach; ?><?php endif; ?></div></div><?php endif; ?><div class="layui-form-item"><label class="relative block"><span class="color-green font-w7">用户身份描述</span><span class="color-desc margin-left-5">Description</span><textarea placeholder="请输入用户身份描述" class="layui-textarea" name="desc"><?php echo htmlentities((isset($vo['desc']) && ($vo['desc'] !== '')?$vo['desc']:"")); ?></textarea></label></div></div><div class="hr-line-dashed"></div><?php if(!(empty($vo['id']) || (($vo['id'] instanceof \think\Collection || $vo['id'] instanceof \think\Paginator ) && $vo['id']->isEmpty()))): ?><input type='hidden' value='<?php echo htmlentities($vo['id']); ?>' name='id'><?php endif; ?><div class="layui-form-item text-center"><button class="layui-btn" type='submit'>保存数据</button><button class="layui-btn layui-btn-danger" type='button' data-confirm="确定要取消编辑吗？" data-close>取消编辑</button></div></form>