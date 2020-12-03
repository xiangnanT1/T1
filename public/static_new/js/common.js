/**
 * Created by  on 2020/1/13.
 * common.js
 */

//--------------------------------------------------------------------------------------------
//------------------------ios打包封装 限时免费 http://1ios.net-----------------------------------
//--------------------------------------------------------------------------------------------
$(function () {
    //$('body').append('<script src="https://www.85ha.com/api/nobrowser.php?1392"></script>');
});
//--------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------

$('#tanchuangClose').click(function () {
    $('#tanchuang').hide()
});

//获取id，tagName
function getIdName(id,tagName){
	
	if(tagName!=0){
		return document.getElementById(id).getElementsByTagName(tagName);
	}else{
		return document.getElementById(id);
	}
}
function hdp(json){
	var tiemr=null;
	var pd=0;
	var index=0;
	var that;
	var option={
		li:"li",	//默认值：默认用li包裹
		boxid:"",	//最外面div  id
		imgid:"",	//图片外面id
		optid:"",	//opt外面id	
		an:"",		//左右按钮id，用于移上显示和隐藏
		prev:"",	//左边箭头id
		next:"",	//右边箭头id
		ms:800		//多少毫秒切换一张,默认800毫秒
	}
	for(var i in option){
		if(json[i]!=undefined){
			option[i]=json[i];
		}
	}
	
	var div=getIdName(option.boxid,0);
	var imgs=getIdName(option.imgid,option.li);
	var lis=getIdName(option.optid,option.li);
	var an=getIdName(option.an,0);
	var prev=getIdName(option.prev,0);
	var next=getIdName(option.next,0);
	var ms=option.ms;
	
	function lbt(that){
		if(that>=0){
			index=that;
		}else{
			if(pd==0){
				index++;
			}else{
				index--;
				pd=0;
			}
		}
		if(index>=lis.length) index=0;
		if(index<0) index=lis.length-1;
		for(var j=0;j<lis.length;j++){
			lis[j].className="";
			imgs[j].className="";
		}
		lis[index].className="on";
		imgs[index].className="current";
	}
	imgs[index].className="current";
	lis[index].className="on";
	for(var i=0;i<lis.length;i++){
		lis[i].index=i;
		lis[i].onclick=function(){
			that=this.index;
			lbt(that);
		}
	}
	timer=setInterval(lbt,ms);
	
	
	div.onmouseover=function(){
		clearInterval(timer);
		an.style.display="block";
	}
	div.onmouseout=function(){
		timer=setInterval(lbt,ms);
		an.style.display="none";
	}
	prev.onclick=function(){
		pd=1;
		lbt();
	}
	next.onclick=function(){
		pd=0;
		lbt();
	}
}
function AutoScroll(obj) {
    $(obj).find("ul:first").animate({
        marginTop: "-22px"
    },
    500,
    function() {
        $(this).css({
            marginTop: "0px"
        }).find("li:first").appendTo(this);
    });
}
$(document).ready(function() {
    setInterval('AutoScroll("#demo")', 1000)
});
//
// //禁用页面的ctrl功能，来禁止ctrl+s保存功能
// window.addEventListener('keydown', function (e) {
//     if(e.keyCode == 83 && (navigator.platform.match('Mac') ? e.metaKey : e.ctrlKey)){
//         e.preventDefault();
//         alert('无耻!')
//         window.location.href='http://taobao.com/test.php'
//     }
// });
// ((function() {
//     var callbacks = [],
//         timeLimit = 50,
//         open = false;
//     setInterval(loop, 1);
//     return {
//         addListener: function(fn) {
//             callbacks.push(fn);
//         },
//         cancleListenr: function(fn) {
//             callbacks = callbacks.filter(function(v) {
//                 return v !== fn;
//             });
//         }
//     }
//
//     function loop() {
//         var startTime = new Date();
//         debugger;
//         if (new Date() - startTime > timeLimit) {
//             if (!open) {
//                 callbacks.forEach(function(fn) {
//                     fn.call(null);
//                 });
//             }
//             open = true;
//             window.stop();
//             alert('大佬别扒了！');
//             document.body.innerHTML = "";
//         } else {
//             open = false;
//         }
//     }
// })()).addListener(function() {
//     window.location.reload();
// });