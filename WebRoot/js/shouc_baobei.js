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
ul_list=document.getElementsByClassName("ul_list")[0];
var img_border=document.getElementsByClassName("img_border");
var tools=document.getElementsByClassName("tools")[0];
var list=document.getElementsByClassName("list")[0];
var quanxuan=document.getElementsByClassName("quanxuan")[0];
var shanchu=document.getElementsByClassName("shanchu")[0];
var kuang=document.getElementsByClassName("kuang");

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
var saleEvery="<li><a class='sale_img'><img src='sale/海外1.jpg'></a><a class='sale_name'><span>Curel/珂润 洗面奶 150ml 氨基酸泡沫洁面乳 敏感肌润浸保湿温和</span></a><div class='line_2'><a>收藏<em>80</em></a></div><div class='line_3'><a class='new'><span>￥</span><em>299</em></a><a class='old'><span>￥</span><em>100</em></a><a class='salesum'>月销<em>+'record.salesum'+</em>笔</a></div></li>";
var sale_li="";
for(var i=0;i<5;i++){
	sale_li+=saleEvery;
	ul_list.innerHTML=""+sale_li;
}
for(var i=0;i<img_border.length;i++){
	img_border[i].addEventListener("mouseenter",function(){
		var in_dian=this.getElementsByClassName("in_dian")[0];
		var remove=this.getElementsByClassName("remove")[0];
		in_dian.style.display="block";
		remove.style.display="block";
	});
	img_border[i].addEventListener("mouseleave",function(){
		var in_dian=this.getElementsByClassName("in_dian")[0];
		var remove=this.getElementsByClassName("remove")[0];
		in_dian.style.display="none";
		remove.style.display="none";
	});
}
var flag_tools=true;
tools.addEventListener("click",function(){
	if(flag_tools){
		flag_tools=false;
		this.innerHTML="取消管理";
		list.style.display="block";
		for(var i=0;i<kuang.length;i++){
			kuang[i].style.display="block";
		}
	}else{
		list.style.display="none";
		this.innerHTML="批量管理";
		for(var i=0;i<kuang.length;i++){
			kuang[i].style.display="none";
		}
		flag_tools=true;
	}
},false);
var right_xuan=document.getElementsByClassName("right_xuan");
var kuang_border=document.getElementsByClassName("kuang_border");
var kuang_xz=document.getElementsByClassName("kuang_xz");
var kuang_bg=document.getElementsByClassName("kuang_bg");
var kuang=document.getElementsByClassName("kuang");
var flag_qx=true;
quanxuan.addEventListener("click",function(){
	if(flag_qx){
		flag_qx=false;
		var i=this.getElementsByTagName("i")[0];
		i.style.backgroundPosition="0 -706px";
		this.style.color="#f40";
		for(var i=0;i<right_xuan.length;i++){
			right_xuan[i].classList.add("xz");
			kuang_border[i].classList.add("xz_border");
			kuang_xz[i].classList.add("xzk");
			kuang_bg[i].classList.add("xz_bg");
			kuang[i].classList.add("xz_kuang");
		}
	}else{
		flag_qx=true;
		var i=this.getElementsByTagName("i")[0];
		i.style.backgroundPosition="0 -184px";
		this.style.color="#6c6c6c";
		for(var i=0;i<right_xuan.length;i++){
			right_xuan[i].classList.remove("xz");
			kuang_border[i].classList.remove("xz_border");
			kuang_xz[i].classList.remove("xzk");
			kuang_bg[i].classList.remove("xz_bg");
			kuang[i].classList.remove("xz_kuang");
		}
	}
});
var flag_kuang=true;
for(var i=0;i<kuang.length;i++){
	kuang[i].addEventListener("click",function(){
		var right_xuan=this.getElementsByClassName("right_xuan")[0];
		var kuang_border=this.getElementsByClassName("kuang_border")[0];
		var kuang_xz=this.getElementsByClassName("kuang_xz")[0];
		var kuang_bg=this.getElementsByClassName("kuang_bg")[0];
		if(flag_kuang){
			flag_kuang=false;
			right_xuan.classList.add("xz");
			kuang_border.classList.add("xz_border");
			kuang_xz.classList.add("xzk");
			kuang_bg.classList.add("xz_bg");
			this.classList.add("xz_kuang");
		}else{
			flag_kuang=true;
			right_xuan.classList.remove("xz");
			kuang_border.classList.remove("xz_border");
			kuang_xz.classList.remove("xzk");
			kuang_bg.classList.remove("xz_bg");
			this.classList.remove("xz_kuang");
		}
	},false);
}