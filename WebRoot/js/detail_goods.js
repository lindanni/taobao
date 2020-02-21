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
var big_img=document.getElementsByClassName("big_img")[0];
var img_list=document.getElementsByClassName("img_list")[0];
var img_list_li=img_list.getElementsByTagName("li");
var bd_tu=document.getElementsByClassName("bd-tu")[0];
var show_kuang=document.getElementsByClassName("show_kuang")[0];
var reduce=document.getElementsByClassName("reduce");
var add=document.getElementsByClassName("add");
var seller_sum=document.getElementsByClassName("seller_sum");
var shouc_goods=document.getElementsByClassName("shouc_goods")[0];
var fix_shouc_wrap=document.getElementsByClassName("fix_shouc_wrap");
var close=document.getElementsByClassName("close");
var a=document.getElementsByTagName("a");

for(var i=0;i<a.length;i++){
	a[i].onclick=function(){
		return false;
	}
}
for(var i=0;i<a.length;i++){
	a[i].addEventListener("click",(function(i){
		return function(event){
			var event=event||window.event;
				if (event.preventDefault) {
					event.preventDefault();
				}else{
					event.returnValue=false;
				}			
		}
	})(i),false);
}
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
for(var i=0;i<img_list_li.length;i++){
	img_list_li[i].addEventListener("mouseenter",function(){
		for(var j=0;j<img_list_li.length;j++){	
			img_list_li[j].classList.remove("show");
		}
		this.classList.add("show");
		var img=this.getElementsByTagName("img")[0];
		var src_text=img.src;
		big_img.src=src_text;
	},false);
}
var bd=bd_tu;
var bd_top=0;
var bd_left=0;
while(bd.offsetParent!=null){
	bd_top+=bd.offsetTop;
	bd_left+=bd.offsetLeft;
	bd=bd.offsetParent;
}
bd_tu.addEventListener("mousemove",function(event){
	var event=window.event||event;
	var move=this.getElementsByClassName("move")[0];
	move.style.display="block";
	show_kuang.style.display="block";
	var move_top=event.clientY+document.documentElement.scrollTop-bd_top;
	var move_left=event.clientX+document.documentElement.scrollLeft-bd_left;
	if(move_top<80){
		move_top=80;
	}
	if(move_top>272){
		move_top=272;
	}
	if(move_left>272){
		move_left=272;
	}
	if(move_left<80){
		move_left=80;
	}
	move.style.top=move_top-80+"px";
	move.style.left=move_left-80+"px";
	show_kuang.style.backgroundImage="url('"+big_img.src+"')";
	console.log(move_top);
	show_kuang.style.backgroundPosition=(-(move_left-80)*1.8)+"px"+" "+(-(move_top-80)*1.8)+"px";
	show_kuang.style.backgroundSize="200% 200%";
	show_kuang.style.backgroundRepeat="no-repeat";
	bd_tu.addEventListener("mouseleave",function(){
		move.style.display="none";
		show_kuang.style.display="none";
	},false);
	show_kuang.addEventListener("mouseenter",function(){
		this.style.display="none";
	},false);
},false);
for(var i=0;i<add.length;i++){
	add[i].addEventListener("click",(function(i){
		return function(){
			seller_sum[i].value=parseInt(seller_sum[i].value)+1;
			 //console.log(parseInt(seller_sum[i].getAttribute("value")));
			 console.log(seller_sum[i].value);
			if(parseInt(seller_sum[i].value)>1){
				reduce[i].style.color="#444";
			}else{
				reduce[i].style.color="#e5e5e5";
			}
		}
	})(i),false);
	reduce[i].addEventListener("click",(function(i){
		return function(){
			if(parseInt(seller_sum[i].value)>1){
				seller_sum[i].value=parseInt(seller_sum[i].value)-1;
				this.style.color="#444";
				if(seller_sum[i].value==1){
					this.style.color="#e5e5e5";	
				}
			}
		}
	})(i),false);
	seller_sum[i].addEventListener("input",(function(i){
		return function(event){
			var event=event||window.event;
			if(event.keyCode==49){
				reduce[i].style.color="#e5e5e5";
			}else{
				reduce[i].style.color="#444";
			}
		}
	})(i),false);
}

shouc_goods.addEventListener("click",function(){
	for(var i=0;i<fix_shouc_wrap.length;i++){
		fix_shouc_wrap[i].style.display="block";
	}
},false);
for(var j=0;j<close.length;j++){
	close[j].addEventListener("click",function(){
		for(var i=0;i<fix_shouc_wrap.length;i++){
			fix_shouc_wrap[i].style.display="none";
		}
	},false);
}

