var china=document.getElementsByClassName("china")[0];
var addre=document.getElementsByClassName("addre")[0];
var mytaobao=document.getElementsByClassName("mytaobao")[0];
var list_mytaobao=document.getElementsByClassName("list_mytaobao")[0];
var shoucang=document.getElementsByClassName("shoucang")[0];
var list_shoucang=document.getElementsByClassName("list_shoucang")[0];
var seller=document.getElementsByClassName("seller")[0];
var list_seller=document.getElementsByClassName("list_seller")[0];
var customer=document.getElementsByClassName("customer")[0];
var list_customer=document.getElementsByClassName("list_customer")[0];
var nav1=document.getElementsByClassName("nav1")[0];
var listsum=document.getElementsByClassName("listsum")[0];
var close=document.getElementsByClassName("close")[0];
var code=document.getElementsByClassName("code")[0];
var leftbutton=document.getElementsByClassName("leftbutton")[0];
var rightbutton=document.getElementsByClassName("rightbutton")[0];
var show=document.getElementsByClassName("show")[0];
var list_img=document.getElementsByClassName("list_img")[0];
var buttonnum=document.getElementsByClassName("buttonnum");
var ig_bottom=document.getElementsByClassName("ig_bottom")[0];
var ig_bottom_img=document.getElementsByClassName("ig_bottom_img")[0];
var leftbut=document.getElementsByClassName("leftbut")[0];
var rightbut=document.getElementsByClassName("rightbut")[0];
var sign=document.getElementsByClassName("sign");
var func_bd=document.getElementsByClassName("func_bd")[0];
var func=document.getElementsByClassName("func")[0];
var but1=document.getElementsByClassName("but1")[0];
var bd_1=document.getElementsByClassName("bd_1")[0];
var bd_2=document.getElementsByClassName("bd_2")[0];
var bd_3=document.getElementsByClassName("bd_3")[0];
var bd1_ul=document.getElementsByClassName("bd1_ul")[0];
var bd1_ul_li=bd1_ul.getElementsByTagName("li");
var form_ul=document.getElementsByClassName("form_ul")[0];
var form2_ul=document.getElementsByClassName("form2_ul")[0];
var bd2_ul=document.getElementsByClassName("bd2_ul")[0];
var bd2_ul_li=bd2_ul.getElementsByTagName("li");
var bd3_ul=document.getElementsByClassName("bd3_ul")[0];
var bd3_ul_li=bd3_ul.getElementsByTagName("li");
var form3_ul=document.getElementsByClassName("form3_ul")[0];
var sign=document.getElementsByClassName("sign");
var toutiao_ul=document.getElementsByClassName("toutiao_ul")[0];
var toutiao_inf=document.getElementsByClassName("toutiao_inf")[0];
var search_ul=document.getElementsByClassName("search_ul")[0];
var search_ul_li=search_ul.getElementsByTagName("li");
var ul_list=document.getElementsByClassName("ul_list")[0];
var toutiao_index=0;
var fix_search=document.getElementsByClassName("fix_search")[0];
var fixedtool=document.getElementsByClassName("fixedtool")[0];
var fixedtool_a=fixedtool.getElementsByTagName("a");
var index=1;
var lock=true;
var index1=1;
var lock1=true;
var search_nav=document.getElementsByClassName("search-nav")[0];

china.addEventListener("mouseenter",function(event){
	addre.style.display="block";
	china.style.background="#fff";
},false);
addre.addEventListener("mouseenter",function(event){
	addre.style.display="block";
	china.style.background="#fff";
},false);
china.addEventListener("mouseleave",function(event){
	addre.style.display="none";
	china.style.background="#f5f5f5";
},false);
addre.addEventListener("mouseleave",function(event){
	addre.style.display="none";
	china.style.background="#f5f5f5";
},false);
mytaobao.addEventListener("mouseenter",function(event){
	list_mytaobao.style.display="block";
	mytaobao.style.background="#fff";
},false);
list_mytaobao.addEventListener("mouseenter",function(event){
	list_mytaobao.style.display="block";
	mytaobao.style.background="#fff";
},false);
mytaobao.addEventListener("mouseleave",function(event){
	list_mytaobao.style.display="none";
	mytaobao.style.background="#f5f5f5";
},false);
list_mytaobao.addEventListener("mouseleave",function(event){
	list_mytaobao.style.display="none";
	mytaobao.style.background="#f5f5f5";
},false);
shoucang.addEventListener("mouseenter",function(event){
	list_shoucang.style.display="block";
	shoucang.style.background="#fff";
},false);
list_shoucang.addEventListener("mouseenter",function(event){
	list_shoucang.style.display="block";
	shoucang.style.background="#fff";
},false);
shoucang.addEventListener("mouseleave",function(event){
	list_shoucang.style.display="none";
	shoucang.style.background="#f5f5f5";
},false);
list_shoucang.addEventListener("mouseleave",function(event){
	list_shoucang.style.display="none";
	shoucang.style.background="#f5f5f5";
},false);
seller.addEventListener("mouseenter",function(event){
	list_seller.style.display="block";
	seller.style.background="#fff";
},false);
list_seller.addEventListener("mouseenter",function(event){
	list_seller.style.display="block";
	seller.style.background="#fff";
},false);
seller.addEventListener("mouseleave",function(event){
	list_seller.style.display="none";
	seller.style.background="#f5f5f5";
},false);
list_seller.addEventListener("mouseleave",function(event){
	list_seller.style.display="none";
	seller.style.background="#f5f5f5";
},false);
customer.addEventListener("mouseenter",function(event){
	list_customer.style.display="block";
	customer.style.background="#fff";
},false);
list_customer.addEventListener("mouseenter",function(event){
	list_customer.style.display="block";
	customer.style.background="#fff";
},false);
customer.addEventListener("mouseleave",function(event){
	list_customer.style.display="none";
	customer.style.background="#f5f5f5";
},false);
list_customer.addEventListener("mouseleave",function(event){
	list_customer.style.display="none";
	customer.style.background="#f5f5f5";
},false);
nav1.addEventListener("mouseenter",function(event){
	listsum.style.display="block";
	nav1.style.background="#fff";
},false);
listsum.addEventListener("mouseenter",function(event){
	listsum.style.display="block";
	nav1.style.background="#fff";
},false);
nav1.addEventListener("mouseleave",function(event){
	listsum.style.display="none";
	nav1.style.background="#f5f5f5";
},false);
listsum.addEventListener("mouseleave",function(event){
	listsum.style.display="none";
	nav1.style.background="#f5f5f5";
},false);
close.addEventListener("click",function(){
	code.style.display="none";
},false);
show.addEventListener("mouseenter",function(){
	leftbutton.style.display="block";
	rightbutton.style.display="block";
	clearInterval(flag);
},false);
show.addEventListener("mouseleave",function(){
	leftbutton.style.display="none";
	rightbutton.style.display="none";
	autoplay();
},false);
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
			list_img.style.left= -(6*520)+"px";
		}
		var targeValue=-(index*520);
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
		var targeValue=-(index*520);
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
ig_bottom.addEventListener("mouseenter",function(){
	leftbut.style.display="block";
	rightbut.style.display="block";
},false);
ig_bottom.addEventListener("mouseleave",function(){
	leftbut.style.display="none";
	rightbut.style.display="none";
},false);
leftbut.addEventListener("click",function(){
	if(lock1){
		lock1=false;
		index1--;
		if(index1<=0){
			index1=6;
			ig_bottom_img.style.left=-(7*520)+"px";
		}
		var targetValue=-(index1*520);
		animate(ig_bottom_img,{left:targetValue},10,function(){
			lock1=true;
		});
	}
},false);
rightbut.addEventListener("click",function(){
	if(lock1){
		lock1=false;
		index1++;
		if(index1>=7){
			index1=1;
			ig_bottom_img.style.left=0+"px";
		}
		var targetValue=-(index1*520);
		animate(ig_bottom_img,{left:targetValue},10,function(){
			lock1=true;
		});
	}
},false);
for(var i=0;i<sign.length;i++){
	sign[i].addEventListener("mouseenter",(function(i){
		return function(){
			func_bd.style.display="block";
			if(i==0){
				bd_1.style.display="block";
				bd_2.style.display="none";
				bd_3.style.display="none";
			}else if(i==1){
				bd_1.style.display="none";
				bd_2.style.display="block";
				bd_3.style.display="none";
			}else if(i==2){
				bd_1.style.display="none";
				bd_2.style.display="none";
				bd_3.style.display="block";				
			}
		}
	})(i),false);
}
but1.addEventListener("click",function(){
	func_bd.style.display="none";
	for(var i=0;i<sign.length;i++){
		sign[i].style.border="none";
	}
},false);
for(var i=0;i<bd1_ul_li.length;i++){
	bd1_ul_li[i].addEventListener("mouseenter",(function(i){
		return function(){
			form_ul.style.left=-(i*288)+"px";
		}
	})(i)
,false);
}
for(var i=0;i<bd2_ul_li.length;i++){
	bd2_ul_li[i].addEventListener("mouseenter",(function(i){
		return function(){
			form2_ul.style.left=-(i*288)+"px";
		}
	})(i)
,false);
}
for(var i=0;i<bd3_ul_li.length;i++){
	bd3_ul_li[i].addEventListener("mouseenter",(function(i){
		return function(){
			form3_ul.style.left=-(i*288)+"px";
		}
	})(i)
,false);
}
for(var i=0;i<sign.length;i++){
	sign[i].addEventListener("mouseenter",(function(i){
		return function(){
			var temp=i;
			if(i==3){
				temp=2;
			}
			sign[temp].style.border="1px solid #f40";
			sign[temp].style.borderBottom="none";
			for(var j=0;j<sign.length;j++){
				if(j!=temp){
					sign[j].style.border="none";
					sign[j].style.borderBottom="1px solid #f40";
				}
			}
		}
	})(i)
,false);
}
var toutiao_set;
toutiao_set=setInterval(function(){
	toutiao_index++;
	if(toutiao_index==3){
		toutiao_index=0;
	}
	toutiao_ul.style.top=-(toutiao_index*76)+"px";
},3000);
search_ul_li[0].addEventListener("mouseenter",function(){
	search_ul_li[1].style.display="block";
	search_ul_li[2].style.display="block";
},false);
search_ul.addEventListener("mouseleave",function(){
	search_ul_li[1].style.display="none";
	search_ul_li[2].style.display="none";
},false);
window.onscroll=function(){
	if(window.scrollY>=100){
		fix_search.style.display="block";
		fix_search.style.zIndex="50";
		fix_search.style.position="fixed";
	}else{
		fix_search.style.display="none";
	}
	if(window.scrollY>=475){
		fixedtool.style.position="fixed";
		fixedtool.style.top=45+"px";
		fixedtool_a[5].style.display="block";
	}else{
		fixedtool.style.position="absolute";
		fixedtool.style.top="475px";
		fixedtool_a[5].style.display="none";
	}
}
for(var i=0;i<fixedtool_a.length;i++){
	if(i!=5){
		fixedtool_a[i].addEventListener("click",function(event){
			return false; 
		},false);
	}
}
search_nav.addEventListener("click",function(event){
	var event=event||window.event;
	var target=event.target||event.srcElement;
	var search_nav_li=this.getElementsByTagName("li");
	for(var i=0;i<search_nav_li.length;i++){
		search_nav_li[i].className="";
	}
	if(target.className==""){
		target.className="show";
	}
},false);