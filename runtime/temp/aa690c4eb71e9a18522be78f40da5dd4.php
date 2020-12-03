<?php /*a:2:{s:64:"C:\PHP\phpEnv\www\dz\application\index\view\rot_order\index.html";i:1605448427;s:61:"C:\PHP\phpEnv\www\dz\application\index\view\public\floor.html";i:1605270914;}*/ ?>
<!DOCTYPE html><!-- saved from url=(0037)http://qiang6-www.baomiche.com/#/Grab --><html data-dpr="1" style="font-size: 41.4px;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1"><title><?php echo lang($cate['name']); ?></title><link href="/static_new6/css/app.7b22fa66c2af28f12bf32977d4b82694.css" rel="stylesheet"><link rel="stylesheet" href="/static_new/css/public.css"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script><link rel="stylesheet" href="/public/js/layer_mobile/need/layer.css"><script src="/public/js/layer_mobile/layer.js"></script><style type="text/css" title="fading circle style">
        .circle-color-23 > div::before {
            background-color: #ccc;
        }
        .zz{
            position: fixed;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            /* background-color: black; */
            z-index: 1001;
            /* -moz-opacity: 0.95; */
            /* opacity: 0.4; */
            /* filter: alpha(opacity = 95); */
        }
        .zzc{
            margin:  6rem auto;
            width: 6rem;
            height: 5rem;
            background: #fff;
            background: url('/img/tongyong_xtcbg2.486084f1.png') no-repeat;
            background-size: 100% 100%;
        }
        

    </style></head><body style="font-size: 12px;overflow-x: hidden;background-color: rgb(244,244,244);" ><div id="app"><div class="zz" ><div class="zzc"><div style="display: flex;justify-content: space-around;"><div  style="width: 0.7rem;height:0.7rem;background: url('/img/window_pic_02.png') no-repeat;
                background-size: 100% 100%;margin-top: 0.5rem;"></div><div style="width: 1.3rem;height:1.3rem;background: url('/img/window_pic_02.png') no-repeat;
                background-size: 100% 100%;margin-top: -0.2rem;margin-left: 1.2rem;"></div></div><div style="display: flex;justify-content: center; align-items: center;margin-top: 0.4rem;"><?php echo lang('搜索和抓取命令'); ?></div><div style="display: flex;justify-content: center; align-items: center;margin-top: 0.4rem;
            background: url('/img/jiazai.gif') no-repeat;background-size: 100% 100%; width: 10rem;height: 2.2rem;margin-left: -2rem;margin-top: -0.1rem;"></div><div ><div style="width: 4rem;height: 0.3rem;overflow: hidden;border-radius: 0.3rem;margin: 0 auto;
                background: url('/img/shuadan_dt_jdt_1.png') no-repeat; background-size: 100% 100%;"><div id="loading" style="width: 4rem;height: 0.2rem;margin-top: 0.05rem;
                    background: rgb(63,63,63);margin-left: 0rem;"></div></div></div><script>
               var loading = document.getElementById("loading");
               var move = 0; 
               time = setInterval(function () {
                    move >= 4 && clearInterval(time);
                    move += 0.02;
                    loading.style.marginLeft = move + 'rem';
                }, 10)
           </script></div></div><div data-v-4c2dcb20="" style="" class="main"><div data-v-4c2dcb20=""  class="header"><div data-v-4c2dcb20="" class="left_btn"></div><div data-v-4c2dcb20="" style="background: rgb(255,118,74);color: #fff;" class="Maintitle"><h3 data-v-4c2dcb20=""><?php echo lang($cate['name']); ?></h3></div></div><!-- <div data-v-4c2dcb20="" class="cardInfo cardInfo" style="width: 100%;;"><div data-v-4c2dcb20="" data-url="cardInfodiv" class="cardInfoTitle"><?php echo lang('匹配说明'); ?></div><div data-v-4c2dcb20="" class="cardInfoInfo"><?php echo $description; ?></div></div> --><div ><div style="width: 96%;margin:0.2rem 2%;font-size: 0.36rem;font-weight: bold;"><?php echo lang('匹配说明'); ?></div><div style="background: #fff;width: 96%;margin:0.2rem 2%;border-radius: 4px;"><p style="margin: 0.1rem;">1：<?php echo lang('自动匹配5-30分钟，成功可在记录查看。'); ?></p><p style="margin:  0.1rem;">2：<?php echo lang('系统基于LBS技术，通过云端自动匹配。'); ?></p><p style="margin:  0.1rem;">3：<?php echo lang('匹配成功后无法撤换，请在30分钟之内确定提交。'); ?></p></div></div><div style="display: flex;justify-content: center;margin: 0.5rem 0;color: #ff2525;font-weight: bold;"><?php echo lang('佣金：产品价格的'); ?><?php echo htmlentities($cate['bili']*100); ?>%
        </div><div style="display: flex;justify-content: center;"><div style="background: url('/img/index2.png') no-repeat; background-size: 100% 100%;
            width: 4rem;height: 5rem; display: flex;flex-direction: column;"><div style="height: 0.7rem;"><div style="width: 70%;height:100%;display: flex;justify-content: center;align-items: center;color: #fff;font-weight: bold;font-size: 0.35rem;">
                        LV<?php echo htmlentities($cate['level']); ?> &nbsp;  <?php echo lang('等级'); ?></div></div><div style="height: 3.4rem;"></div><div style="height: 0.8rem;display: flex;align-items: center; justify-content: center;flex-direction: column;color: #fff;"><div><?php echo lang($cate['name']); ?></div><div><?php echo lang($cate['cate_info']); ?></div></div></div></div><div data-v-4c2dcb20="" class="postForm" style="margin-top: 0.8rem;"><button style="font-size: 0.35rem;margin-left: 10%; background: rgb(71,101,253);width: 35%;height: 0.8rem;line-height: 0.8rem;" data-v-4c2dcb20="" class="uplevel"  onclick="window.location.href=`/index/ctrl/recharge`"><?php echo lang('马上充值'); ?></button><button data-v-4c2dcb20=""  style="font-size: 0.35rem;margin-left: 10%;width: 35%;height: 0.8rem;line-height: 0.8rem;" class="autoStart" id="autoStart"><?php echo lang('自动匹配'); ?></button></div><style>
            .d{
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                width: 50%;
            }
        </style><div data-v-4c2dcb20="" class="task_hall_todays_victory"><div data-v-4c2dcb20="" class="t407"><?php echo lang('今日战果'); ?></div><div data-v-4c2dcb20="" class="report" style="height:5rem"><div data-v-4c2dcb20="" class="d" style="width: 50%;"><p data-v-4c2dcb20=""><?php echo lang('总资产'); ?></p><?php echo htmlentities($price); ?></div><div data-v-4c2dcb20="" class="d" style="width: 50%;"><p data-v-4c2dcb20=""><?php echo lang('昨日收益'); ?></p><?php echo htmlentities($yes_user_yongjin); ?></div><div data-v-4c2dcb20="" class="d" style="width: 50%;"><p data-v-4c2dcb20=""><?php echo lang('今日收益'); ?></p><?php echo htmlentities($day_deal); ?></div><div data-v-4c2dcb20="" class="d" style="width: 50%;"><p data-v-4c2dcb20=""><?php echo lang('昨日团队总佣金'); ?></p><?php echo htmlentities($today_team_num); ?></div><div data-v-4c2dcb20="" class="d" style="width: 50%;"><p data-v-4c2dcb20=""><?php echo lang('已匹配'); ?></p><?php echo htmlentities($day_d_count); ?></div><div data-v-4c2dcb20="" class="d" style="width: 50%;"><p data-v-4c2dcb20=""><?php echo lang('昨日团队佣金'); ?></p><?php echo htmlentities($yes_team_num); ?></div><div data-v-4c2dcb20="" class="line line1"></div><div data-v-4c2dcb20="" class="line line2"></div></div></div><div data-v-4c2dcb20="" class="task_hall_conatainer" ><div data-v-4c2dcb20="" class="task_hall_sheet"><div data-v-4c2dcb20="" class="task_hall_sheet_box"><div data-v-4c2dcb20="" class="a-t-title"><?php if($cate['level'] == 1): ?><img data-v-eebac136="" src="/upload/QQ1234.png" alt=""><?php else: ?><img data-v-eebac136="" src="<?php echo htmlentities($cate['pic']); ?>" alt=""><?php endif; ?></div><p data-v-4c2dcb20="" class="shop"><?php echo htmlentities($cate['name']); ?></p><input type="hidden" id="level" value="<?php echo htmlentities($cate['level']); ?>"><div data-v-4c2dcb20="" class="task_hall_passageway"><div data-v-4c2dcb20="" class="task_hall_passageway_text"><?php echo htmlentities($cate['cate_info']); if($cate['level'] == 1): ?>
                                免本金
                            <?php else: ?>
                            佣金<?php echo htmlentities($cate['bili']*100); ?>%
                            <?php endif; ?></div></div><?php if($cate['level'] == 1): ?><div data-v-4c2dcb20="" class="task_hall_grab_single" style="background: url(../../static_new6/img/vv.f32ed54.png) no-repeat;    background-size: contain;"><div data-v-4c2dcb20="" class="task_hall_shop"><div data-v-4c2dcb20="" style="width: 100%;; height: 85px; align-items:center; overflow: hidden;"><div data-v-4c2dcb20="" class="box"><div data-v-4c2dcb20="" class="groups animation-ease"
                                         style="height: 2887.5px; transform: translate3d(0px, -2478.38px, 0px);"><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao1.png"></li></ul></div><div data-v-4c2dcb20="" class="groups animation-ease"
                                         style="height: 2887.5px; transform: translate3d(0px, -2478.38px, 0px);"><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul></div><div data-v-4c2dcb20="" class="groups animation-ease"
                                         style="height: 2887.5px; transform: translate3d(0px, -2478.38px, 0px);"><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao1.png"></li></ul></div></div></div></div></div><?php else: ?><div data-v-4c2dcb20="" class="task_hall_grab_single"><div data-v-4c2dcb20="" class="task_hall_shop"><div data-v-4c2dcb20="" style="width: 100%;; height: 85px; align-items:center; overflow: hidden;"><div data-v-4c2dcb20="" class="box"><div data-v-4c2dcb20="" class="groups animation-ease"
                                         style="height: 2887.5px; transform: translate3d(0px, -2478.38px, 0px);"><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20=""
                                                                                           src="/static_new6/img/wenhao.png"></li></ul></div><div data-v-4c2dcb20="" class="groups animation-ease"
                                         style="height: 2887.5px; transform: translate3d(0px, -2478.38px, 0px);"><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul></div><div data-v-4c2dcb20="" class="groups animation-ease"
                                         style="height: 2887.5px; transform: translate3d(0px, -2478.38px, 0px);"><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul><ul data-v-4c2dcb20="" class="group-item"><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li><li data-v-4c2dcb20="" class="prize-item"><img data-v-4c2dcb20="" src="/static_new6/img/wenhao.png"></li></ul></div></div></div></div></div><?php endif; ?><p data-v-4c2dcb20="" class="text">全力匹配中，匹配结果将在下方发放。</p></div></div><div data-v-4c2dcb20="" class="postForm"><button data-v-4c2dcb20="" class="uplevel"  onclick="window.location.href=`/index/ctrl/recharge`">马上充值</button><button data-v-4c2dcb20=""  class="autoStart" id="autoStart">自动匹配</button></div><!-- <div data-v-4c2dcb20="" class="task_hall_todays_victory"><div data-v-4c2dcb20="" class="t407">今日战果</div><div data-v-4c2dcb20="" class="report"><div data-v-4c2dcb20="" class="lf"><p data-v-4c2dcb20="">总资产（元）</p>
                        ￥<?php echo htmlentities($price); ?></div><div data-v-4c2dcb20="" class="red"><p data-v-4c2dcb20="">昨日收益</p>
                        +<?php echo htmlentities($yes_user_yongjin); ?></div><div data-v-4c2dcb20="" class="d"><p data-v-4c2dcb20="">今日收益</p><?php echo htmlentities($day_deal); ?>元
                    </div><div data-v-4c2dcb20="" class="d"><p data-v-4c2dcb20="">昨日团队总佣金</p><?php echo htmlentities($today_team_num); ?>元
                    </div><div data-v-4c2dcb20="" class="d"><p data-v-4c2dcb20="">已匹配</p><?php echo htmlentities($day_d_count); ?>单
                    </div><div data-v-4c2dcb20="" class="d"><p data-v-4c2dcb20="">昨日团队佣金</p><?php echo htmlentities($yes_team_num); ?>元
                    </div><div data-v-4c2dcb20="" class="line line1"></div><div data-v-4c2dcb20="" class="line line2"></div></div></div> --><div data-v-4c2dcb20="" class="Unlock"><span data-v-4c2dcb20="">解锁</span><span data-v-4c2dcb20="">下一等级专属通道获得更高佣金</span></div><div data-v-4c2dcb20="" class="cardInfo cardInfo" style="width: 100%;;"><div data-v-4c2dcb20="" data-url="cardInfodiv" class="cardInfoTitle">匹配说明</div><div data-v-4c2dcb20="" class="cardInfoInfo"><?php echo $description; ?></div></div></div><?php if($is_manual==1): ?><div data-v-4c2dcb20="" class="divOperates" style="" id="orderDetail"><div data-v-4c2dcb20="" class="van-overlay" style="z-index: 1000;padding: 0 10px;display:none ;"><div data-v-4c2dcb20="" class="grabSuccess" style="width: 100%;;"><div data-v-4c2dcb20="" class="title" style="height: 1.586667rem;"><img data-v-4c2dcb20=""
                             src="/upload/66666.png"
                             alt=""></div><div data-v-4c2dcb20="" class="records_tabs_box"><div data-v-4c2dcb20="" class="records_tabs_box_top">开始时间：<span id="otime">2020-03-17T17:11:41</span>
                            任务编号：<span id="oid">202003171711414080</span></div><img data-v-4c2dcb20=""
                             src="/static_new6/img/34B137B3BBF7FCEFA5212DB16DE90E06.png"
                             class="records_tabs_box_img"><div data-v-35ad745e="" class="records_tabs_box_des matching" data-oid="DY2009252051346755"><h1>订单匹配中，请稍候</h1></div></div></div><img data-v-4c2dcb20=""
                     src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAAAP1BMVEVHcEz///////////////////////////////////////////////////////////////////////////////9KjZoYAAAAFXRSTlMAEFN/o8rX6/sxkf9z88Q9XSlotgUhojDzAAABp0lEQVR4AaSSVwKzIBgEkfYBS1vN/a/690oitnlK1Bmq2mPRxjovIYh31uhFXSImjwGf4ll7yR5AqSnr1mJsTedUCwCflzO6EUBsj/yP2K0AYg4TXQC38iOrA6RPdVbAde7SHVC57+sCyZySBUXv+QnYIg+IG5A+6i+LYHgCE2BfH/wNpfMUvWB7L1iI5km0wL6vv2ieRpdxHzRC5wV6gP7XZ4HhJQwK/wlUbLzIhqr+0CGRF4mCP7d6EWReJkMW9RMDxxs4mD8T6LxB/z2FDMdbOGT1HY91vCfOrxxYvdPjI/jvfoS8pxHysGUB7xMVxB+X2HLA43th9OE5YJF+rKBzYA0/CoMfVg7072tYUP5cokHI49+RWLAojUpOChOfrNDKIHFSmPpMMMoic1qY+DSwykFzVpj51HDKo3FWmPls8ErQOCvMfDaICoicFiY+I8LjwOMlPN7EZ8fY4Z5dpAz7/Cp/Lb0OBAAAABiE+VsPYhB/tWPqOe+h9KX1qe6tN1gebQ/Xx/sLxivOS9Zr3ovmq+7L9uv+B8cnz0fXZ9+HZ6ZvxHfkP9pUwubvmZnSAAAAAElFTkSuQmCC"
                     alt="" class="close"></div></div><div data-v-4c2dcb20="" class="divOperate"  id="orderDetail"  style="display:none;"><div data-v-4c2dcb20="" class="van-overlay" style="z-index: 1000;padding: 0 10px;display:none ;"><div data-v-4c2dcb20="" class="grabSuccess" style="width: 100%;;"><div data-v-4c2dcb20="" class="title" style="height: 1.586667rem;"><img data-v-4c2dcb20=""
                             src="/static_new6/img/29140944.png"
                             alt=""></div><div data-v-4c2dcb20="" class="records_tabs_box"><div data-v-4c2dcb20="" class="records_tabs_box_top">开始时间：<span id="otime">2020-03-17T17:11:41</span>
                            任务编号：<span id="oid">202003171711414080</span></div><img data-v-4c2dcb20=""
                             src="/static_new6/img/34B137B3BBF7FCEFA5212DB16DE90E06.png"
                             class="records_tabs_box_img"><div data-v-4c2dcb20="" class="records_tabs_box_des"><div data-v-4c2dcb20="" class="tabs_box_des_img"><img data-v-4c2dcb20="" alt="" id="oimg" src="/static_new6/img/wenhao1.png"></div><div data-v-4c2dcb20="" class="tabs_box_des_r"><p data-v-4c2dcb20="" class="tabs_box_des_r_tit" id="otitle"><!--出口法国实木家具橱柜北欧乡村风大理石台面实木可拆分家具整体--></p><div data-v-4c2dcb20="" class="tabs_box_des_r_pic"><p data-v-4c2dcb20="" id="oprice">¥ ???</p><p data-v-4c2dcb20="" id="onum">x ???</p></div></div></div><div data-v-4c2dcb20="" class="tabs_box_des_r_pic"><p data-v-4c2dcb20="" class="gray">订单总额</p><p data-v-4c2dcb20="" id="ototal">¥ ???</p></div><div data-v-4c2dcb20="" class="tabs_box_des_r_pic"><p data-v-4c2dcb20="" class="gray">佣金</p><p data-v-4c2dcb20="">¥ <span id="yongjin">???</span></p></div><div data-v-4c2dcb20="" class="tabs_box_des_r_pic"><p data-v-4c2dcb20="" class="txt">预计返还</p><p data-v-4c2dcb20="" class="txt1">¥ <span id="yuji">???</span></p></div></div><div data-v-4c2dcb20="" id="sub" class="tabs_btn"><div data-v-4c2dcb20=""  class="tabs_btn1">取消匹配</div><div data-v-4c2dcb20=""  class="tabs_btn2">立即提交</div></div></div><img data-v-4c2dcb20=""
                     src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAAAP1BMVEVHcEz///////////////////////////////////////////////////////////////////////////////9KjZoYAAAAFXRSTlMAEFN/o8rX6/sxkf9z88Q9XSlotgUhojDzAAABp0lEQVR4AaSSVwKzIBgEkfYBS1vN/a/690oitnlK1Bmq2mPRxjovIYh31uhFXSImjwGf4ll7yR5AqSnr1mJsTedUCwCflzO6EUBsj/yP2K0AYg4TXQC38iOrA6RPdVbAde7SHVC57+sCyZySBUXv+QnYIg+IG5A+6i+LYHgCE2BfH/wNpfMUvWB7L1iI5km0wL6vv2ieRpdxHzRC5wV6gP7XZ4HhJQwK/wlUbLzIhqr+0CGRF4mCP7d6EWReJkMW9RMDxxs4mD8T6LxB/z2FDMdbOGT1HY91vCfOrxxYvdPjI/jvfoS8pxHysGUB7xMVxB+X2HLA43th9OE5YJF+rKBzYA0/CoMfVg7072tYUP5cokHI49+RWLAojUpOChOfrNDKIHFSmPpMMMoic1qY+DSwykFzVpj51HDKo3FWmPls8ErQOCvMfDaICoicFiY+I8LjwOMlPN7EZ8fY4Z5dpAz7/Cp/Lb0OBAAAABiE+VsPYhB/tWPqOe+h9KX1qe6tN1gebQ/Xx/sLxivOS9Zr3ovmq+7L9uv+B8cnz0fXZ9+HZ6ZvxHfkP9pUwubvmZnSAAAAAElFTkSuQmCC"
                     alt="" class="close"></div></div><?php else: ?><div data-v-4c2dcb20="" class="" style="" id="orderDetail"><div data-v-4c2dcb20="" class="van-overlay" style="z-index: 1000;padding: 0 10px;display:none ;"><div data-v-4c2dcb20="" class="grabSuccess" style="width: 100%;;"><div data-v-4c2dcb20="" class="title" style="height: 1.586667rem;"><img data-v-4c2dcb20=""
                             src="/static_new6/img/29140944.png"
                             alt=""></div><div data-v-4c2dcb20="" class="records_tabs_box"><div data-v-4c2dcb20="" class="records_tabs_box_top">开始时间：<span id="otime">2020-03-17T17:11:41</span>
                            任务编号：<span id="oid">202003171711414080</span></div><img data-v-4c2dcb20=""
                             src="/static_new6/img/34B137B3BBF7FCEFA5212DB16DE90E06.png"
                             class="records_tabs_box_img"><div data-v-4c2dcb20="" class="records_tabs_box_des"><div data-v-4c2dcb20="" class="tabs_box_des_img"><img data-v-4c2dcb20="" alt="" id="oimg" src="/static_new6/img/wenhao1.png"></div><div data-v-4c2dcb20="" class="tabs_box_des_r"><p data-v-4c2dcb20="" class="tabs_box_des_r_tit" id="otitle"></p><div data-v-4c2dcb20="" class="tabs_box_des_r_pic"><p data-v-4c2dcb20="" id="oprice">¥ 1090</p><p data-v-4c2dcb20="" id="onum">x 1</p></div></div></div><div data-v-4c2dcb20="" class="tabs_box_des_r_pic"><p data-v-4c2dcb20="" class="gray">订单总额</p><p data-v-4c2dcb20="" id="ototal">¥ 1090</p></div><div data-v-4c2dcb20="" class="tabs_box_des_r_pic"><p data-v-4c2dcb20="" class="gray">佣金</p><p data-v-4c2dcb20="">¥ <span id="yongjin">3.27</span></p></div><div data-v-4c2dcb20="" class="tabs_box_des_r_pic"><p data-v-4c2dcb20="" class="txt">预计返还</p><p data-v-4c2dcb20="" class="txt1">¥ <span id="yuji">1093.27</span></p></div></div><div data-v-4c2dcb20="" class="tabs_btn"><div data-v-4c2dcb20="" class="tabs_btn1">取消匹配</div><div data-v-4c2dcb20="" id="sub" class="tabs_btn2">立即提交</div></div></div><img data-v-4c2dcb20=""
                     src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAAAP1BMVEVHcEz///////////////////////////////////////////////////////////////////////////////9KjZoYAAAAFXRSTlMAEFN/o8rX6/sxkf9z88Q9XSlotgUhojDzAAABp0lEQVR4AaSSVwKzIBgEkfYBS1vN/a/690oitnlK1Bmq2mPRxjovIYh31uhFXSImjwGf4ll7yR5AqSnr1mJsTedUCwCflzO6EUBsj/yP2K0AYg4TXQC38iOrA6RPdVbAde7SHVC57+sCyZySBUXv+QnYIg+IG5A+6i+LYHgCE2BfH/wNpfMUvWB7L1iI5km0wL6vv2ieRpdxHzRC5wV6gP7XZ4HhJQwK/wlUbLzIhqr+0CGRF4mCP7d6EWReJkMW9RMDxxs4mD8T6LxB/z2FDMdbOGT1HY91vCfOrxxYvdPjI/jvfoS8pxHysGUB7xMVxB+X2HLA43th9OE5YJF+rKBzYA0/CoMfVg7072tYUP5cokHI49+RWLAojUpOChOfrNDKIHFSmPpMMMoic1qY+DSwykFzVpj51HDKo3FWmPls8ErQOCvMfDaICoicFiY+I8LjwOMlPN7EZ8fY4Z5dpAz7/Cp/Lb0OBAAAABiE+VsPYhB/tWPqOe+h9KX1qe6tN1gebQ/Xx/sLxivOS9Zr3ovmq+7L9uv+B8cnz0fXZ9+HZ6ZvxHfkP9pUwubvmZnSAAAAAElFTkSuQmCC"
                     alt="" class="close"></div></div><?php endif; ?><style>     .floor_div{
            display: flex;
            flex-direction:column;
            justify-content: center;
            align-items: center;
            font-weight: bolder;
            line-height: 0.1rem;

        }
        .floor_div img{
            width: 1rem;
            height: 1rem;
        }
        .floor_div span{
          margin-bottom: 1.1rem;
        }
</style><div data-v-8755e8fe="" data-v-eebac136="" class="footer" style="background:#fff;height: 1.5rem;border-top: solid 1px #999;"><ul data-v-8755e8fe=""><li onclick="window.location.href='<?php echo url('index/home'); ?>'" data-v-8755e8fe="" class="floor_div"><img class="floor_img" src="/img/shuadan_dt_btn_1.png"><span ><?php echo lang('首页'); ?></span></li><li onclick="window.location.href='<?php echo url('order/index'); ?>'" data-v-8755e8fe="" class="floor_div"><img class="floor_img" src="/img/shuadan_dt_btn_2.png"><span ><?php echo lang('记录'); ?></span></li><li onclick="window.location.href='<?php echo url('rot_order/index'); ?>'" data-v-8755e8fe="" class="floor_div"><img class="floor_img" src="/img/shuadan_dt_btn_3.png"><span ><?php echo lang('任务'); ?></span></li><li onclick="window.location.href='<?php echo url('support/index'); ?>'" data-v-8755e8fe="" class="floor_div"><img class="floor_img" src="/img/shuadan_dt_btn_4.png"><span ><?php echo lang('客服'); ?></span></li><li onclick="window.location.href='<?php echo url('my/index'); ?>'" data-v-8755e8fe="" class="floor_div"><img class="floor_img" src="/img/shuadan_dt_btn_5.png"><span ><?php echo lang('我的'); ?></span></li></ul></div></div></div><script type="text/javascript" src="/static_new6/js/manifest.3ad1d5771e9b13dbdad2.js"></script><span style="display: none;"><audio id="audio" src="/static_new/img/hongbao.mp3" controls="controls"></audio></span><script>
       //接收服务器信息
   
    var ws =  new WebSocket("ws://127.0.0.1:8282");

    ws.onmessage = function(e){
        var str = e.data;
        str = str.substring(1,str.length-1)
          if(str.substring(0, 2) == 'UB'){
                $(".divOperates").css("display", "none")
              $(".divOperate").css("display", "block")
              qdSuccess(str)
              
          }
    }
    var cid = "<?php echo htmlentities((app('request')->get('type') ?: 1)); ?>";
    var oid = '';
    var add_id = '';
    var countdown = 5,tt1 = 2478;
    var audio = document.getElementById("audio");
    var level = $('#level').val();
    var that = this;
    $(function () {

        $('#autoStart').click(function () {

            if ( $('#autoStart').text() == '自动匹配' ){
                countdown=1;
                $('#autoStart').text('匹配中');
                
                start()
            }

        })
    });

    function palySong(wi) {
        audio.load();
        stopSong();
        audio.play();
        if (wi == 0) {
            audio.pause();
        }
    }

    function stopSong() {
        audio.pause();
    }


    function qdSuccess(oid)
    {
       
        $('#orderDetail .van-overlay').show();
        $.ajax({
            url: "/index/order/order_info",
            type: "POST",
            dataType: "JSON",
            data: { id: oid },
            success: function(res) {
                // console.log(res)
                var data = res.data;
                // console.log(data.level);
                if (res.code == 0 && that.level == 0) {
    
                    $('#otime').html(data.addtime)
                    $('#oid').html(data.oid)
                    $('#otitle').html(data.goods_name)
                    $('#oimg').attr('src',data.goods_pic)
                    $('#oprice').html(data.goods_price)
                    $('#onum').html(data.goods_count)
                    $('#ototal').html('¥ '+data.num)
                    $('#yongjin').html(''+data.commission)
                    var yuji = ( data.commission * 1 +  data.num * 1 );
                    yuji = yuji.toFixed(2);
                    $('#yuji').html(yuji)
                    check = 1;
                }
                else{
                    location.href="/index/order/order2"
                }
            },
            error: function(err) { console.log(err) }
        })
    }

    function start() {
        // console.log(countdown)
        if (countdown <= 0) {
            //$('#orderDetail .van-overlay').show();
//------------------------------------------------------------------
            loading = $(document).dialog({
                type: 'notice',
                infoIcon: '/static_new/img/loading.gif',
                infoText: '正在加载中',
                autoClose: 0
            });
            $.ajax({
                url: "<?php echo url('submit_order'); ?>" + '?cid='+cid+'&m=' + Math.random(),
                timeout: 5000,
                type: 'POST',

                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    $('#autoStart').text('自动匹配');
                    loading.close();
                    $(document).dialog({infoText: "网络不稳定,请您在信号较好的地方再试!", autoClose: 2000});
                },
                success: function (data) {
                    console.log(data);
                    $('#autoStart').text('自动匹配');
                    if (data.code == 3) {
                        loading.close();
                        $(document).dialog({infoText: data.info, autoClose: 2000});
                        location.href ="/index/my/bind_bank";
                    } else if (data.code == 1) {
                        loading.close();
                        $(document).dialog({infoText: data.info, autoClose: 2000});
                        //nextclick();
                    } else if (data.code == 0) {
                        loading.close();
                        palySong(1);
                        sessionStorage.setItem('oid', data.oid);
                        $(document).dialog({infoText: data.info});
                        qdSuccess(data.oid);
                         $("#divOperate").css("display", "none")
                          ws.send(1);
                        oid = data.oid;
                        add_id = data.add_id;
                     
                    } else {
                        loading.close();
                        if (data.info) {
                            $(document).dialog({infoText: data.info, autoClose: 2000});
                        } else {
                            $(document).dialog({infoText: "网络不太稳定,请您在信号较好的地方再试!", autoClose: 2000});
                        }
                    }
                }
            });

//------------------------------------------------------------------

            tt1 = 2478 * -1;
            $('.animation-ease').eq(0).css('transform','translate3d(0px, '+tt1+'px, 0px)');
            $('.animation-ease').eq(1).css('transform','translate3d(0px, '+tt1+'px, 0px)');
            $('.animation-ease').eq(2).css('transform','translate3d(0px, '+tt1+'px, 0px)');
        }else{
            tt1 = sum(1,2000) * -1;
            $('.animation-ease').eq(0).css('transform','translate3d(0px, '+tt1+'px, 0px)')
            tt2 = sum(1,2000) * -1;
            $('.animation-ease').eq(1).css('transform','translate3d(0px, '+tt2+'px, 0px)')
            tt3 = sum(1,2000) * -1;
            $('.animation-ease').eq(2).css('transform','translate3d(0px, '+tt3+'px, 0px)')

            countdown--;
            setTimeout(function () {
                start()
            }, 1000);
        }

    }

    function sum (m,n){
        var num = Math.floor(Math.random()*(m - n) + n);
        return num;
    }

    $('.tabs_btn1').click(function () {
        $('#orderDetail .van-overlay').hide();
       
    });

    $('.close').click(function () {
       
                $('#orderDetail .van-overlay').hide();
                //window.location.href="<?php echo url('user/logout'); ?>";
   
        
    });

    var zhujiTime = "<?php echo config('deal_zhuji_time'); ?>";
    var shopTime = "<?php echo config('deal_shop_time'); ?>";

    zhujiTime = zhujiTime *1000;
    shopTime = shopTime *1000;
    //提交
    $('.tabs_btn2').click(function () {
        //--------------------------------
        var i = 0;
        layer.open({
            type: 2
            , content: '订单提交中',
            time: zhujiTime,
            shadeClose: false,
        });

        //--------------------------------
        var i = 0;
        layer.open({
            type: 2
            , content: '订单提交中',
            time: zhujiTime,
            shadeClose: false,
        });
        var timer = setInterval(function() {
            i++;
            if (i == 1) {
                layer.open({
                    type: 2
                    , content: '远程主机正在分配',
                    time: zhujiTime,
                    shadeClose: false,
                })
            } else if (i == 2) {
                layer.open({
                    type: 2
                    , content: '等待商家系统响应',
                    time: shopTime,
                    shadeClose: false,
                })
                var ajaxT = setTimeout(function(){
                    $.ajax({
                        url: "/index/order/do_order",
                        type: "POST",
                        dataType: "JSON",
                        data: { oid:oid, add_id:add_id },
                        success: function(res) {
                            layer.closeAll();
                            console.log(res)
                            if (res.code == 0) {
                                $(document).dialog({
                                    infoText: "订单提交成功!,",
                                    autoClose: 2000
                                });
                                clearInterval(timer);
                                var linkTime = setTimeout(function() {
                                    location.reload()
                                }, 1800);
                            }else {
                                $(document).dialog({
                                    infoText: res.info,
                                    autoClose: 2000
                                });
                            }
                            sumbit = true;
                        },
                        error: function(err) {
                            layer.closeAll();
                            console.log(err); sumbit = true;
                        }
                    })
                },shopTime)
            }
        }, zhujiTime)


    });


</script></body></html>