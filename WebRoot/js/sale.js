var leftbutton=document.getElementsByClassName("leftbutton")[0];
var rightbutton=document.getElementsByClassName("rightbutton")[0];
var show=document.getElementsByClassName("show")[0];
var list_img=document.getElementsByClassName("list_img")[0];
var buttonnum=document.getElementsByClassName("buttonnum");
var index=1;
var lock=true;
var index1=1;
var lock1=true;
var c_x=document.body.clientWidth;
console.log(c_x);
window.onload=function(){
	list_img.left=-c_x+"px";
	list_img.style.width=c_x*7+"px";
	var list_img_li=list_img.getElementsByTagName("li");
	for(var i=0;i<list_img_li.length;i++){
		list_img_li[i].style.width=c_x+"px";
	}
	var buttons=document.getElementsByClassName("buttons")[0];
	buttons.style.left=c_x/2-35+"px";
};
function getStyleValue(node,attr){
	var styleNode;
	if(node.currentStyle==undefined){
		styleNode=getComputedStyle(node,null);
	}else{
		styleNode=node.currentStyle;
	}
	return styleNode[attr];
}
function animate(node,obj,speed,fn){
	clearInterval(node.num);
	node.num=setInterval(function(){
		var flag=true;
		for(var key in obj){
			var v=parseInt(getStyleValue(node,key));
			if(v!=obj[key]){
				flag=false;
			}
			var step=(obj[key]-v)/20;
			if(step>0){
				step=Math.ceil(step);
			}else{
				step=Math.floor(step);
			}
			var v2=v+step;
			node.style[key]=v2+"px";
		}
		if(flag){
			clearInterval(node.num);
			if(fn!=undefined){
				fn();
			}
		}
	},speed);
}
leftbutton.addEventListener("click",function(){
	if(lock){
		lock=false;
		index--;
		if(index<=0){
			index=5;
			list_img.style.left= -(6*c_x)+"px";
		}
		var targeValue=-(index*c_x);
		for(var i=0;i<buttonnum.length;i++){
			if(buttonnum[i].classList.contains("showcolor")){
				buttonnum[i].classList.remove("showcolor");
			}
			if(i==index-1){
				buttonnum[i].classList.add("showcolor");
			}
		}
		animate(list_img,{left:targeValue},10,function(){
			lock=true;
		});
	}
},false);
rightbutton.addEventListener("click",rightEvent,false);
var flag;
function autoplay(){
	flag=setInterval(function(){
		rightEvent();
	},2000);
}
autoplay();
function rightEvent(){
	if(lock){
		lock=false;
		index++;
		if(index>=6){
			index=1;
			list_img.style.left=0+"px";
		}
		var targeValue=-(index*c_x);
		for(var i=0;i<buttonnum.length;i++){
			if(buttonnum[i].classList.contains("showcolor")){
				buttonnum[i].classList.remove("showcolor");
			}
			if(i==index-1){
				buttonnum[i].classList.add("showcolor");
			}
		}		
		animate(list_img,{left:targeValue},10,function(){
			lock=true;
		});
	}
}