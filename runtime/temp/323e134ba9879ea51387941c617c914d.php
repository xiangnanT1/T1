<?php /*a:1:{s:62:"C:\PHP\phpEnv\www\dz\application\index\view\user\register.html";i:1605249762;}*/ ?>
<!DOCTYPE html><!-- saved from url=(0052)http://qiang6-www.baomiche.com/#/Register?code=79053 --><html data-dpr="1" style="font-size: 37.5px;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1"><title><?php echo lang('注册'); ?></title><link href="/static_new6/css/app.7b22fa66c2af28f12bf32977d4b82694.css" rel="stylesheet"><link rel="stylesheet" href="/static_new/css/public.css"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script><style type="text/css" title="fading circle style">
        .circle-color-23 > div::before {
            background-color: #ccc;
        }
        .fa{
            width: 85px!important;
            display: inline-block;
            background: red;
            padding: 3px 5px ;
            border-radius: 5px;
            color: #fff;
        }
        .form-buttom2{
            width: 100%;
            background: #ec0022;
            box-shadow: 0 0 0.013333rem #9b9a9a;
            border-radius: .533333rem;
            height: 1.066667rem;
            font-size: .48rem;
            color: #fff;
            display: block;
            line-height: 40px;
            text-align: center;
        }
        .wxtip {
            background: rgba(0,0,0,0.8);
            text-align: center;
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            z-index: 999999992;
            display: none;
        }

        .imgs {
             background: url('/static_new6/img/gw_live_weixin.png') no-repeat;
             background-size: auto;
             background-size: 100% 110%;
             z-index: 999999;
             min-height: 100%;
             background-size: contain;
             width: 100%;
         }
    </style></head><body style="font-size: 12px;"><div id="app"><div data-v-79134734="" class="main"><div data-v-79134734="" class="header"><div data-v-79134734="" style="color:#fff;font-size: 0.8rem;height: 1.5rem;line-height: 1.5rem;" class="left_btn" onclick="window.history.back(-1)"><
                <!-- <img data-v-79134734=""
                     src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkJENDQwM0ZGMzM4RTExRUE5RUFEOTdFODk1MERGRTU0IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkJENDQwNDAwMzM4RTExRUE5RUFEOTdFODk1MERGRTU0Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QkQ0NDAzRkQzMzhFMTFFQTlFQUQ5N0U4OTUwREZFNTQiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QkQ0NDAzRkUzMzhFMTFFQTlFQUQ5N0U4OTUwREZFNTQiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7AgDVjAAAB7klEQVR42txX20rDQBBNVvFvrD8gPuuDF4yEoLSI1kqL39OHWqVYLKVUQX3xVfwC9We0KPGsTGQMu9tJmlAwMEySnT3nZLM7O+vHcezN81LenK8/AsIwXIOtlkVmwlessQL3BHvGfbME8ibDr0z7BW0EHRVIrrHazl8wGo1e4RqsrVuECMLoslcN4vq5/PQqQIcTuA496sYqOlznJD+A62seRn7uXAUUkIyE7tgnoMLJjSPgGIkQAGMh+Z7+FiLXfU9N5M48wEYiJqAhAUvIh4z80EbuHAEGWIPrEeAXbBeA95bYLbhb2AIjv3Lh+5JUnBLxCdsE8KOB/Aa2KCUXCzCImMC2ExFoW4d7yEqeSYBFxAZsCXZHXoPtg3woxfSz7oYpEe80kXOR5xJgEOHlJZ9lO57MrR6grx/Q13+Q6fsB2qJSBRgm4Q7ZhImolTIHXLlglmWocpIHPBHRfUBtOqYnHQklID9JpeLAlIrpXUAxYhFKQN5h5JFtH2AioiwilIA8WeeRZDummIjtoj3CkguwVEVj6cym2CoT0bGJUELyzCUZ9UlEeDYR6XPBWYq8nrceZCLqLhG/eYBq9RfWdgyAywLL8gv2aiWpjG2TsFUUOY2ExmpNzYTJiYXX7QWfjpYJ/22m7fhfnY6/BRgAYRculwNsxNUAAAAASUVORK5CYII="
                     alt="" class="return"> --></div><div data-v-79134734="" class="Maintitle"><h3 data-v-79134734="" style="background-color: #ff764a;color:#fff;font-size: 0.6rem;height: 1.5rem;line-height: 1.5rem;"><?php echo lang('注册'); ?></h3></div><div data-v-79134734="" class="right_btn"><!-- <div data-v-79134734="" class="t1"><div data-v-79134734="" class="t2"><span data-v-79134734=""><?php echo lang('请点击右上角'); ?></span><span data-v-79134734=""><?php echo lang('在浏览器打开'); ?></span></div></div> --></div></div><div data-v-79134734="" class="box"><form action="" id="forgetpwd-form"><ul data-v-79134734=""><li data-v-c38e8882=""><img data-v-c38e8882="" src="/img/Login_icon_2.png" style="width: 0.8rem;height: 0.6rem" alt="" class="lco"><input style="border-bottom: 2px;" data-v-c38e8882="" type="text" name="user_name"  placeholder="<?php echo lang('输入用户名'); ?>" ></li><li data-v-c38e8882=""><img data-v-c38e8882="" src="/img/Login_icon_1.png" style="width: 0.8rem;height: 0.6rem" alt="" class="lco"><input style="border-bottom: 2px;" data-v-c38e8882="" type="text" name="tel"  placeholder="<?php echo lang('输入电话号码'); ?>" ></li><!-- <li data-v-79134734=""><input data-v-79134734="" type="text" name="tel" placeholder="<?php echo lang('输入电话号码'); ?>"><?php if($codes==1): ?><span data-v-79134734="" class="eye fa get-code"><?php echo lang('发送'); ?></span><?php endif; ?></li> --><?php if($codes==1): ?><li data-v-79134734=""><input data-v-79134734="" type="text" name="verify" placeholder="<?php echo lang('输入短信验证码'); ?>"></li><?php endif; ?><input type="hidden" id="codes" value="{codes}"><li data-v-c38e8882=""><img data-v-c38e8882="" src="/img/Login_icon_3.png"  style="width: 0.8rem;height: 0.6rem" alt="" class="lco"><input style="border-bottom: 2px;" data-v-c38e8882="" id="pwd" type="password" name="pwd" placeholder="<?php echo lang('输入密码'); ?>" value="<?php echo htmlentities((app('cookie')->get('pwd') ?: '')); ?>"><img data-v-c38e8882="" src="/img/show-pwd.png" style="width: 0.8rem;height: 0.8rem;margin-top: -0.2rem" alt="" id="eye" class="eye"><script>
                        $('[id="eye"]').click(function(){
                            var type = $('[id="pwd"]').attr('type');
 
                            if(type){
                                $('[id="eye"]').attr('src','/img/hide-pwd.png')
                                 $('[id="pwd"]').attr('type','');
                            }else{
                                $('[id="eye"]').attr('src','/img/show-pwd.png')
                                $('[id="pwd"]').attr('type','password');

                            }
                        })
                        
                        
                    </script></li><li data-v-c38e8882=""><img data-v-c38e8882="" src="/img/Login_icon_4.png"  style="width: 0.8rem;height: 0.6rem" alt="" class="lco"><input style="border-bottom: 2px;" data-v-c38e8882="" id="pwds" type="password" name="deposit_pwd" placeholder="<?php echo lang('输入交易密码'); ?>" value="<?php echo htmlentities((app('cookie')->get('pwd') ?: '')); ?>"><img data-v-c38e8882="" src="/img/show-pwd.png" style="width: 0.8rem;height: 0.8rem;margin-top: -0.2rem" alt="" id="eyes" class="eye"><script>
                        $('[id="eyes"]').click(function(){
                            var type = $('[id="pwds"]').attr('type');
                            console.log()
                            if(type){
                                $('[id="eyes"]').attr('src','/img/hide-pwd.png')
                                 $('[id="pwds"]').attr('type','');
                            }else{
                                $('[id="eyes"]').attr('src','/img/show-pwd.png')
                                $('[id="pwds"]').attr('type','password');

                            }
                        })
                        
                        
                    </script></li><li data-v-c38e8882=""><img data-v-c38e8882="" src="/img/Login_icon_5.png" style="width: 0.8rem;height: 0.6rem" alt="" class="lco"><input data-v-c38e8882="" style="border-bottom: 2px;" type="text" name="invite_code" value="<?php echo htmlentities($invite_code); ?>" <?php echo $invite_code ? 'readonly':'';  ?> placeholder="<?php echo lang('邀请码'); ?>"></li></ul><div data-v-79134734=""><p data-v-79134734=""><img data-v-79134734=""
                         src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjlGQTQ4Q0U0NkIxMzExRTlCODY5QTQ3ODY5RDM1NTk2IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjlGQTQ4Q0U1NkIxMzExRTlCODY5QTQ3ODY5RDM1NTk2Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6OUZBNDhDRTI2QjEzMTFFOUI4NjlBNDc4NjlEMzU1OTYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6OUZBNDhDRTM2QjEzMTFFOUI4NjlBNDc4NjlEMzU1OTYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz47tGJ6AAAE40lEQVR42sRXa2gcVRQ+596ZfebRPGqzbVOLqD+iwRdaoQpVEEsFRf8ISktKQytqtNjf+VP8WRVMoGjUVCgKgvjDqo3FB/4XSlpbxBcRmxiTbHbdze7Ozr33eO5ks9mazWbzogMzzNzLnPOdc77zuEhEcCMvxz5+60AAxkECwYQcMLwmNQH6BnRYggUpBcUEwF0+yX2gzB4UeDNICPN/BAI0+JTiP64Ioc96jry4fdZkIx5BJoow1SLBKkjMGGhP60XtLNepCW/eORGGd0SDOKYBu9GuhMX8nr3tgkUcEoBED5ORxyThlUxMvOcoPSwJUrVUiJr6Be4DxB9BiEFcUL6gsDJywRqVACE4BF1zEfHmPy3OKAPpdTStDkAgT2C/Ccvv+LVrtXG16lxWqhzo9FwcEgRvrAJAgPYUW3JyPeSyUgR7SgTi8DWWN1TNEwEApIXbMgr7+e3EhrNdY+9MoxyabawCwEhmv8O3lI+y8pObkW42q7Jx0ZtqEE9dF26bYj/vdu1riPH8xKlx62blPDG52NZkw4R/J3o00UFUCoFix2s6vJnKA3dzmJXA1mSTODIbF4shCAvjEjJRNuCyPDJAPcbVnLb6/BJi+lx8YvIobHXjZQAKcQ+z9Pb1KlcszXPp1VjRfLhzUl8WCt5lw5bmOEEne/yxRQAkn1h/fBGinjndnKW321MGojnkS/YRLk09nwkf98yBci9wDN1XdATHiNaY81wnUX91y6R6scgWjiUkFF15xtHwiK0F1bjgS+guA9ACE2IdXZGMuRpC9Ww6CjAVt/LgBOf9oevrdWVNIAaIW8shYPc1rFW572JShWi/SUJmMsfhDIkeBHlqOeVQ7mEYXbEZlTgzbgQ8Z8A8yZ+zlTltN9vT6uC2pPmTfP6IyYdQOh/UmzAVACi3XKfwNX3RNO5/3OTT51qYvVy4xoPqyaRzc+pwx7T+0uUWX9wud5ttzrmAEHVoZnLmygCEoekl6VLylZb4eFRB15aCtiS9agzs551xMHqYB5Mz08380YZxqcSnXNCa60pXLoehIk2VAWgUo1iNhGTnDNyV3Bn64d8I3t2UDUBcYtI9AL55oa3AwsLWAPyEY3pvvbwxbGtIw+UyAEerc7BMFrB3oCigLR12R3zEB1Er9re+tmuGis15gIJ03iIhD9Qi3f8vl0t/LixGFguRQ98rCb9gdSeADKYdvCkXd79h8u0V/Ei2OvBHwnmp4Irjwf5qyjXCDLvyQhlAIglea8ac9iXWrPE89cXQDZ3nSeloNiKO5yNyEFejeH7MA4/0OwWl0uV2bCHNxUTbrztClyKeSdQnaW3lmr01F8n4t5GiiV2ZUjv+ewtAMkozkZzfU/e8taZmRRD2dF9nipVnKyaiVAwgz6Osq/TX/DmwaQOJpI9IwvCSg4ktJMHBRAYHlFeCoCC8vCHzgbXc5ST19EjkL31IcXO6VtrbUaMU9zE5Xl+3xaUZIZ43nzV56mkskDZFPi3xembFgwlRPx82DrKUsTWZPS88Y5D6GufMM/EC5LkFB1vOgutXPBkBnEUy3dxvOSw0SgvCBVZN7oof8xrMgGPU/S6ZQZ4DbYuu2iScOqyx3hqQYN5nGff4vnieAd2BIWzlvGrnPTvb+aDN71yfbDH7VqTNBd0CY1RHkcAbfTz/T4ABAElaLYISR6lSAAAAAElFTkSuQmCC"
                         alt=""><?php echo lang('我已知晓并同意'); ?><span data-v-79134734="">"<?php echo lang('开户协议'); ?>"</span><?php echo lang('各项条约'); ?></p></div><div data-v-79134734=""><button  style="background: linear-gradient(to bottom right, #fd9102,  #de3500 100%);font-size: 0.5rem;"  data-v-79134734="" class="form-buttom "><?php echo lang('注册'); ?></button><!-- <span data-v-79134734="" class="a3 form-buttom2" onclick="window.location.href=`<?php echo config('app_url'); ?>`">已有账号，马上下载</span> --></div></form></div></div></div><div class="wxtip" id="JweixinTip"><div class="imgs"></div></div><script type="application/javascript">
    $(function(){
        var countdown = 60;
        var flag = true;
        var loading = null;
        var codes = $('#codes').val();
        /*检查表单*/
        function check(){
            if(!check_phone()) return false;
            if(codes == 1){
                if($("input[name=verify]").val()==''){
                    $(document).dialog({infoText: '<?php echo lang("请"); ?><?php echo lang("输入短信验证码"); ?>'});
                    return false;
                }
            }

            if($("input[name=pwd]").val()==''){
                $(document).dialog({infoText: '<?php echo lang("请"); ?><?php echo lang("输入密码"); ?>'});
                return false;
            }
            if($("input[name=deposit_pwd]").val()==''||$("input[name=deposit_pwd_re]").val()==''){
                $(document).dialog({infoText: '<?php echo lang("请"); ?><?php echo lang("输入交易密码"); ?>'});
                return false;
            }
            if($("input[name=deposit_pwd]").val()!==$("input[name=deposit_pwd_re]").val()){
                //$(document).dialog({infoText: '两次输入的资金密码不一致'});
                //return false;
            }
            if($("input[name=invite_code]").val()==''){
                $(document).dialog({infoText: '<?php echo lang("请"); ?><?php echo lang("邀请码"); ?>'});
                return false;
            }
            return true;
        }

        /*手机号码验证*/
        function check_phone() {
            if($("input[name=user_name]").val()==''){
                $(document).dialog({infoText: '<?php echo lang("请"); ?><?php echo lang("输入用户名"); ?>'});
                return false;
            }
            var myreg=/^([0-9|A-Z|a-z]|[\u4E00-\u9FA5\uF900-\uFA2D]){2,12}$/;
            if (!myreg.test($("input[name=user_name]").val())) {
                $(document).dialog({infoText: '<?php echo lang("用户名输入错误,要求2-12位字母或数字"); ?>'});
                return false;
            }
            if($("input[name=tel]").val()==''){
                $(document).dialog({infoText: '<?php echo lang("请"); ?><?php echo lang("输入电话号码"); ?>'});
                return false;
            }
            var myreg=/^[1][3,4,5,6,7,8,9][0-9]{9}$/;
            if (!myreg.test($("input[name=tel]").val())) {
                $(document).dialog({infoText: '<?php echo lang("手机号码输入错误"); ?>'});
                return false;
            }
            return true;
        }

        /*验证码倒计时*/
        function time_down(obj){
            if (countdown == 0) {
                flag = true;
                obj.text("<?php echo lang('发送'); ?>");
                countdown = 60;
                return;
            } else {
                flag = false;
                obj.text(countdown+"s") ;
                countdown--;
            }
            setTimeout(function() {time_down(obj)},1000);
        }

        /*获取验证码*/
        $(".get-code").on('click',function(){
            if(check_phone()&&flag){
                $.ajax({
                    url:'/index/send/sendsms',
                    data: {'tel' : $("input[name=tel]").val()},
                    type:'POST',
                    success:function(data){
                        if(data.code==0){
                            $(document).dialog({infoText: data.info});
                            time_down($(".get-code"));
                        }else{
                            $(document).dialog({infoText: data.info});
                        }
                    }
                });
            }
        })

        /*提交*/
        $(".form-buttom").on('click',function(){
            if(check()){
                $.ajax({
                    url:"<?php echo url('do_register'); ?>",
                    data:$("#forgetpwd-form").serialize(),
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
                        loading.close();
                        if(data.code==0){
                            $(document).dialog({infoText: '<?php echo lang("注册成功"); ?>'});
                            setTimeout(function(){
                                location.href = "<?php echo url('user/login'); ?>"
                            },1500);
                        }else{
                            $(document).dialog({infoText: data.info});
                        }
                    }
                });
            }
            return false;
        })
    })
</script><script>
    $(function () {
        var u = navigator.userAgent, app = navigator.appVersion;
        var ua = navigator.userAgent.toLowerCase();
        var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
        var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1; //android终端

        if(ua.match(/MicroMessenger/i)=="micromessenger") {
            alert(1)
            $('#JweixinTip').show();
            document.getElementById('JweixinTip').style.display='block';
        }

    });

</script></body></html>