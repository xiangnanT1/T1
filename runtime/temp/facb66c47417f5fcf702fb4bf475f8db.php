<?php /*a:1:{s:59:"D:\wed\gongs\fang\dz\application\index\view\user\login.html";i:1605268347;}*/ ?>
<!DOCTYPE html><html data-dpr="1" style="font-size: 37.5px;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1"><title><?php echo lang('登录'); ?></title><link href="/static_new6/css/app.7b22fa66c2af28f12bf32977d4b82694.css" rel="stylesheet"><link rel="stylesheet" href="/static_new/css/public.css"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script><style type="text/css" title="fading circle style">
        .circle-color-23 > div::before {
            background-color: #ccc;
        }

    </style></head><body style="font-size: 12px;"><div id="app"><div data-v-c38e8882="" class="main" style="background: url('/img/cc1f14a675aa2a856a7a86129dae7dc.png');background-repeat: no-repeat;background-size: 100% auto;"><div data-v-c38e8882="" class="box"><ul data-v-c38e8882="" style="margin-top: 3rem"><li data-v-c38e8882="" style="border-bottom:none"><div style="float:right;"><select class="lang"><option value="zh-cn" <?php if($lang=='zh-cn'): ?>selected<?php endif; ?> >中文</option><option value="en-us" <?php if($lang=='en-us'): ?>selected<?php endif; ?>>English</option></select></div></li><li data-v-c38e8882="" style="background-color: rgb(244,244,244);"><img data-v-c38e8882="" src="/img/Login_icon_1.png" style="width: 0.8rem;height: 0.6rem" alt="" class="lco"><input style="border-bottom: 2px;background-color: rgb(244,244,244);" data-v-c38e8882="" type="text" name="tel"  placeholder="<?php echo lang('输入电话号码'); ?>" value="<?php echo htmlentities((app('cookie')->get('tel') ?: '')); ?>"></li><li data-v-c38e8882=""><img data-v-c38e8882="" src="/img/Login_icon_3.png"  style="width: 0.8rem;height: 0.6rem" alt="" class="lco"><input style="border-bottom: 2px;background-color: rgb(244,244,244);" data-v-c38e8882="" id="pwd" type="password" name="pwd" placeholder="<?php echo lang('输入密码'); ?>" value="<?php echo htmlentities((app('cookie')->get('pwd') ?: '')); ?>"><img data-v-c38e8882="" src="/img/show-pwd.png" style="width: 0.8rem;height: 0.8rem;margin-top: -0.2rem" alt="" id="eye" class="eye"><script>
                        $('[id="eye"]').click(function(){
                            var type = $('[id="pwd"]').attr('type');
                            console.log()
                            if(type){
                                $('[id="eye"]').attr('src','/img/hide-pwd.png')
                                 $('[id="pwd"]').attr('type','');
                            }else{
                                $('[id="eye"]').attr('src','/img/show-pwd.png')
                                $('[id="pwd"]').attr('type','password');

                            }
                        })
                        
                        
                    </script></li><li data-v-c38e8882="" style="display: none;"><img data-v-c38e8882="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAXCAYAAAARIY8tAAACsklEQVRIibVVS08TURT+pjNtoQHqBggmBSMmgEFxw4aoBIkLX0FNDHGhgDsVjKgbY2IwujL4C3ShC03EFTEuqCsUbfG54OEKE5AWWzogpZ22M5053k4hQrxT6oMvucm9d86c75xzv3uuQAzYRNg20/mfEeg6Fu/1Q75xHRSL/T8CSqWQfP0K3zvOQI9EYCsqRqirA4rXC1pe3pBA4J2BHgxCnZlB6v0oksPDECsqUHyqHY7GRgg2G9SxMUSfPEb66xQK9u5DYVMTRI8Hdk9lfgTBo4chMWPnrnq4Wg9CqvRAcDgBUVyJQIfBMjPm5xF/6YX6+RM0FtDW5y84JeAg0HaM9HicmBMiXeeZZGEYZCSTZCgKsbJxTSRu4ViEgt1ujtwFFiA4neY0vbDINeEeslReDkOWc/qOPRvAMhsZsAwgiHy9cHfF7dXmQVshHZjF0oP7cNbUmGs9HIbEhJA3gb2qCsrbN+ZcCwSQHBlZ933+2lVsudwLe22duVYnJiBV78ifwFG3E9rUlDnPXKqF/rtI+H3mOnSuC46aWrgOtDJlOVYIxuCsr+enyxVHIkGBI4eyc1WlxOioqazwpW4KnjxBaVleZz93up3S4RBXRVyCDCJ9N0kZGsqSaBol/H6abWkmpvd1dsnxcQpdOG8pZ0sCxe+jcE/3rw1Gok1Pm9pfC/nObYoNDlq5IcteVNCwB6SmWLt4l92QJHa7Pab2V5H+xtrJ5ARcLS1WbvhnsIrExw8UZPW1QrjnIsW9Q7lcWGdgZrG7AUVtxxG50vvbN/lWH6SqbSjc35zLBb/ZrYURjSI28BSpL5Nwn+2E4HIh+ughBLcb7o5OiGVl/0aQgf5jESmfDwpr3dA0OFl7drHIxdLSjX7NjyCDzMNjLC2BqQi2khLYWCb5IG+Cv8WmP/o/AeVjj8bEawqWAAAAAElFTkSuQmCC" alt="" class="lco"><input data-v-c38e8882="" type="text" placeholder="<?php echo lang('输入短信验证码'); ?>"><img data-v-c38e8882="" src="data:image/png;base64,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" alt="" class="code"></li></ul><div data-v-c38e8882="" class="col-xs-4" style="margin-left: 0.5rem; padding: 0px;"><div data-v-c38e8882=""><input style="margin-right: 0.2rem;" data-v-c38e8882="" id="KeepPWD" value="1" type="checkbox" name="jizhu" checked><span data-v-c38e8882="" class=""><?php echo lang('记住密码'); ?></span></div></div><div data-v-c38e8882=""><button data-v-c38e8882="" style="background: linear-gradient(to bottom right, #fd9102,  #de3500 100%);font-size: 0.5rem;" class="login"><?php echo lang('登录'); ?></button></div><div data-v-c38e8882="" class="c" style="display: flex;justify-content: center; color: #fb6400;font-weight: bold;"><div style="display: flex;align-items: center;flex-direction: row-reverse;"  data-v-c38e8882="" class="col-xs-4" onclick="window.location.href=`/index/user/register`"><?php echo lang('注册'); ?>&nbsp;
                </div><div style="display: flex;align-items: center;justify-content: center;">|</div><div style="display: flex;align-items: center;width:40%;" data-v-c38e8882="" class="col-xs-4" onclick="window.location.href=`/index/user/forget`" style="padding: 0px;">                    &nbsp;<?php echo lang('找回密码'); ?></div></div></div></div></div><script src="/static_new6/css/cityjson"></script><script type="text/javascript" src="/static_new6/js/manifest.3ad1d5771e9b13dbdad2.js"></script><!--<script type="text/javascript" src="/static_new6/js/vendor.832c1df07e64f8264dc6.js"></script>--><!--<script type="text/javascript" src="/static_new6/js/app.1ef0c51eb4b45b9f8d06.js"></script>--><div class="mint-indicator" style="display: none;"><div class="mint-indicator-wrapper" style="padding: 20px;"><span class="mint-indicator-spin"><div class="mint-spinner-fading-circle circle-color-23" style="width: 32px; height: 32px;"><div class="mint-spinner-fading-circle-circle is-circle2"></div><div class="mint-spinner-fading-circle-circle is-circle3"></div><div class="mint-spinner-fading-circle-circle is-circle4"></div><div class="mint-spinner-fading-circle-circle is-circle5"></div><div class="mint-spinner-fading-circle-circle is-circle6"></div><div class="mint-spinner-fading-circle-circle is-circle7"></div><div class="mint-spinner-fading-circle-circle is-circle8"></div><div class="mint-spinner-fading-circle-circle is-circle9"></div><div class="mint-spinner-fading-circle-circle is-circle10"></div><div class="mint-spinner-fading-circle-circle is-circle11"></div><div class="mint-spinner-fading-circle-circle is-circle12"></div><div class="mint-spinner-fading-circle-circle is-circle13"></div></div></span><span class="mint-indicator-text"style=""><?php echo lang('加载中'); ?>...</span></div><div class="mint-indicator-mask"></div></div></body><script type="application/javascript">
    /*语言切换*/
    $(".lang").change(function(){
        var lang = $(".lang").val();
        $.ajax({
            url:"/index/cutLangss/cutlangs",
            data:{lang:lang},
            type:'POST',
            dataType:'json',
            success:function(data){
                console.log(data);
                if(data.code==1){
                    window.location.reload();
                }else{

                }
            },
            error:function (data) {
                loading.close();
            }
        });
    });


    $(function(){
        /*检查表单*/
        function check(){
            if($("input[name=tel]").val()==''||$("input[name=pwd]").val()==''){
                $(document).dialog({infoText: "<?php echo lang('请'); ?><?php echo lang('输入电话号码'); ?>"});
                return false;
            }
            return true;
        }

        /*监听账号input*/
        $("input[name=tel]").bind("input propertychange", function () {
            if ($(this).val() !== '') {
                $('.icon-delete').show();

            }else{
                $('.icon-delete').hide();
            }
        });

        /*点击删除icon*/
        $(".icon-delete").on('click',function(){
            $("input[name=tel]").val('');
            $('.icon-delete').hide();
        })

        // /*显示or隐藏密码*/
        // $(".icon-eye").on('click',function(){
        //     var type = $("input[name=pwd]").attr("type");
        //     if(type == 'pwd'){
        //         $("input[name=pwd]").attr('type','text');
        //         console.log($(this))
        //         $(this).attr('scr','/img/show-pwd.png')
        //         return;
        //     }
        //     $("input[name=pwd]").attr('type','pwd');
        //     $(this).attr('scr','/img/hide-pwd.png')
        // });

        /*点击登录*/
        $(".login").on('click',function(){

            if(check()){
                var loading = null;
                var tel   = $("input[name=tel]").val();
                var pwd   = $("input[name=pwd]").val();
                var jizhu = $("input[name=jizhu]").val();
                $.ajax({
                    url:"<?php echo url('do_login'); ?>",
                    data:{tel:tel,pwd:pwd,jizhu:jizhu},
                    type:'POST',
                    beforeSend:function(){
                        loading = $(document).dialog({
                            type : 'notice',
                            infoIcon: '/static_new/img/loading.gif',
                            infoText: '<?php echo lang("加载中"); ?>',
                            autoClose: 0
                        });
                    },
                    success:function(data){

                        if(data.code==0){
                            $(document).dialog({infoText: data.info});
                            setTimeout(function(){
                                location.href="<?php echo url('index/home'); ?>"
                            },2000);
                        }else{
                            loading.close();
                            if(data.info){
                                $(document).dialog({infoText: data.info});
                            }else{
                                $(document).dialog({infoText: " <?php echo lang('网络不太稳定,请您在信号较好的地方再试!'); ?>",autoClose:2000});
                            }
                        }
                    },
                    error:function (data) {
                        loading.close();
                    }
                });
            }
        })
    })
</script></html>