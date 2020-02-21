
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
var search_ul=document.getElementsByClassName("search_ul")[0];
var search_ul_li=search_ul.getElementsByTagName("li");
var revise=document.getElementsByClassName("revise");
var reduce=document.getElementsByClassName("reduce");
var add=document.getElementsByClassName("add");
var seller_sum=document.getElementsByClassName("seller_sum");
var sum_price=document.getElementsByClassName("sum_price");
var price_new=document.getElementsByClassName("price_new");
var main_bottom=document.getElementsByClassName("main_bottom")[0];
var dingbu=document.getElementsByClassName("dingbu")[0];
var cart_list=document.getElementsByClassName("cart_list")[0];
var cart_list_li=cart_list.getElementsByTagName("li");
var floater=document.getElementsByClassName("floater")[0];
var shan=document.getElementsByClassName("shan");
var fix_shan_wrap=document.getElementsByClassName("fix_shan_wrap")[0];
var close=document.getElementsByClassName("close");
var tr=document.getElementsByClassName("tr");
var fa=document.getElementsByClassName("fa");
var a=document.getElementsByTagName("a");
var goods_sum=document.getElementsByClassName("goods_sum")[0];
var img_kuang=document.getElementsByClassName("img_kuang");
var z_price=document.getElementsByClassName("z_price")[0];
var x_price=document.getElementsByClassName("x_price")[0];
var jiesuan_x=document.getElementsByClassName("jiesuan_x")[0];
var jiesuan_y=document.getElementsByClassName("jiesuan_y")[0];
var quanxuan=document.getElementsByClassName("quanxuan");
var other_content=document.getElementsByClassName("other_content");
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
search_ul_li[0].addEventListener("mouseenter",function(){
	search_ul_li[1].style.display="block";
	search_ul_li[2].style.display="block";
},false);
search_ul.addEventListener("mouseleave",function(){
	search_ul_li[1].style.display="none";
	search_ul_li[2].style.display="none";
},false);

for(var i=0;i<revise.length;i++){
	revise[i].addEventListener("mouseenter",function(event){
		this.style.background="#fff";
		var xiugai=this.getElementsByClassName("xiugai")[0];
		xiugai.style.display="block";
	},false);
}
for(var i=0;i<revise.length;i++){
	revise[i].addEventListener("mouseleave",function(event){
		var xiugai=this.getElementsByClassName("xiugai")[0];
		xiugai.style.display="none";
	},false);
}
var price;
for(var i=0;i<add.length;i++){
	add[i].addEventListener("click",(function(i){
		return function(){
			seller_sum[i].value=parseInt(seller_sum[i].value)+1;
			// console.log(parseInt(seller_sum[i].getAttribute("value")));
			if(parseInt(seller_sum[i].value)>1){
				reduce[i].style.color="#444";
			}else{
				reduce[i].style.color="#e5e5e5";
			}
			price=Number(price_new[i].innerHTML.substring(1));
			sum_price[i].innerHTML="￥"+price*seller_sum[i].value;
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
			price=Number(price_new[i].innerHTML.substring(1));
			sum_price[i].innerHTML="￥"+price*seller_sum[i].value;
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
			price=Number(price_new[i].innerHTML.substring(1));
			sum_price[i].innerHTML="￥"+price*seller_sum[i].value;
		}
	})(i),false);
}
var wrap=document.getElementsByClassName("wrap")[0];
var height=document.body.clientHeight;
function getStyleValue(node,attr){
	var styleNode;
	if(node.currentStyle==undefined){
		styleNode=getComputedStyle(node,null);
	}else{
		styleNode=node.currentStyle;
	}
	return styleNode[attr];
}
var sum_height=parseInt(document.documentElement.clientHeight);
var body_height=parseInt(document.body.scrollHeight);
var bottom_ul_wrap=document.getElementsByClassName("bottom_ul_wrap")[0];
var bottom_height=parseInt(bottom_ul_wrap.offsetHeight);
window.onresize=function(){
	bottom_height=parseInt(bottom_ul_wrap.offsetHeight);
 	body_height=parseInt(document.body.scrollHeight);
 	sum_height=parseInt(document.documentElement.clientHeight)
}
var time;
window.onscroll=function(){
	if(parseInt(window.scrollY)!=0){
		dingbu.style.display="block";
	}else{
		clearInterval(time);
		dingbu.style.display="none";
	}
	if(parseInt(window.scrollY)+sum_height<=body_height-bottom_height-50){
		main_bottom.style.position="fixed";
		main_bottom.style.left="auto";
		// console.log(document.documentElement.clientHeight-50);
		main_bottom.style.bottom="-50px";
	}else{
		main_bottom.style.position="absolute";
		main_bottom.style.left="0px";
		main_bottom.style.bottom="0px";
	}
}
dingbu.addEventListener("click",function(){
	time=setInterval(function(){
		window.scrollTo(0,parseInt(window.scrollY)-15);
	},10);
},false);

// console.log(sum_height);
setInterval(function(){
		// console.log(body_height); 
	// console.log(document.documentElement.clientHeight);
	if(parseInt(window.scrollY)+sum_height<=body_height-bottom_height-50){
		// console.log(window.scrollY);
		// console.log(parseInt(document.body.scrollHeight)-400);
		if(document.documentElement.clientHeight<=sum_height){
			main_bottom.style.position="fixed";
			main_bottom.style.left="auto";
			main_bottom.style.bottom="-50px";
		}
	}else{
		main_bottom.style.position="absolute";
		main_bottom.style.left="0px";
		main_bottom.style.bottom="0px";
	}
},10);
for(var i=0;i<cart_list_li.length;i++){
	cart_list_li[i].addEventListener("mouseenter",(function(i){
		return function(){
			floater.style.left=(132*i-1)+"px";
		}
	})(i),false);
}
for(var i=0;i<shan.length;i++){
	shan[i].addEventListener("click",function(){
		fix_shan_wrap.style.display="block";
	},false);
}
for(var i=0;i<close.length;i++){
	close[i].addEventListener("click",function(){
		fix_shan_wrap.style.display="none";
	},false);
}
for(var i=0;i<tr.length;i++){
	tr[i].addEventListener("click",function(){
		fix_shan_wrap.style.display="none";
	},false);
}
for(var i=0;i<fa.length;i++){
	fa[i].addEventListener("click",function(){
		fix_shan_wrap.style.display="none";
	},false);
}
for(var i=0;i<img_kuang.length;i++){
	img_kuang[i].addEventListener("click",function(){
		if(this.classList.contains("wxz")){
			this.classList.add("xz");
			this.classList.remove("wxz");
		}else{
			this.classList.add("wxz");
			this.classList.remove("xz");
		}
	},false);
}
var sum;
var price_su;
var flag_qx=true;
for(var i=0;i<img_kuang.length;i++){
	img_kuang[i].addEventListener("click",function(){ 
		if(this.classList.contains("quanxuan")){
			if(flag_qx){
				flag_qx=false;
				for(var j=0;j<img_kuang.length;j++){
					img_kuang[j].classList.add("xz");
				}
			}else{
				flag_qx=true;
				for(var j=0;j<img_kuang.length;j++){
					img_kuang[j].classList.remove("xz");
				}
			}
		}
		sum=0;
		price_su=0;
		for(var j=0;j<img_kuang.length;j++){
			if(img_kuang[j].classList.contains("goods")){
				if(img_kuang[j].classList.contains("xz")){		
					sum++;
					var this_ul=img_kuang[j].parentNode.parentNode;
					var text=this_ul.getElementsByClassName("sum_price")[0];
					var text_s=text.innerHTML.substring(1);
					price_su+=Number(text_s);
					var this_content=img_kuang[j].parentNode.parentNode.parentNode;
					this_content.classList.add("xz_bg");
					this_content.classList.remove("wxz_bg");
				}else{
					var this_content=img_kuang[j].parentNode.parentNode.parentNode;
					this_content.classList.add("wxz_bg");
					this_content.classList.remove("xz_bg");
				}
			}
		}
		goods_sum.innerHTML=sum;
		z_price.innerHTML=price_su;
		x_price.innerHTML=price_su;
		jiesuan_y.classList.add("jie");
		jiesuan_y.classList.remove("no_jie");
		jiesuan_x.classList.add("jie");
		jiesuan_x.classList.remove("no_jie");
		if(sum==0){
			jiesuan_y.classList.add("no_jie");
			jiesuan_y.classList.remove("jie");
			jiesuan_x.classList.add("no_jie");
			jiesuan_x.classList.remove("jie");
		}
	},false);
}


