<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String username=(String)session.getAttribute("username");
 %>
<% 
	response.setHeader("Cache-Control", "no-cache");  
	response.setHeader("Pragma", "no-cache");  
	response.setDateHeader("Expires", 0);
%>
<!DOCTYPE html>
<html>
<head>
	<title>我的足迹</title>
	<meta charset="utf-8"> 
	<link rel="stylesheet" href="css/shouwei.css">
	<link rel="stylesheet" href="css/myfoot.css">
</head>
<body>
	<div class="header">
		<div class="content">
			<ul class="left">
				<li>
					<div class="china">
						<a href="#" style="color:#6C6C6C">中国大陆</a>
						<span class="xiabiao"></span>
					</div>
					<div class="list_address">
						<ul class="addre">
							<li>全球</li>
							<li>中国大陆</li>
							<li>香港</li>
							<li>台湾</li>
							<li>澳门</li>
							<li>韩国</li>
							<li>马来西亚</li>
							<li>澳大利亚</li>
							<li>新加坡</li>
							<li>新西兰</li>
							<li>加拿大</li>
							<li>美国</li>
							<li>日本</li>
						</ul>
					</div>
				</li>
				<li><a href="#" style="color:#f22e00;"><span class="text_span">亲，请登陆</span><span class="text_span1"><%=username%></span></a></li>
				<li><a href="#">免费注册</a></li>
				<li><a href="#">手机逛淘宝</a></li>
			</ul>
			<ul class="right">
				<li>
					<div class="nav1">
						<span class="daohang"></span>
						<a href="#">网站导航</a>
						<span class="xiabiao" style="margin-left:-4px"></span>
					</div>
					<div class="listsum" style="width:1188px;left:44px">
						<div class="list_wrap">
							<div class="list_n1">
								<h4 style="color:#fc4200">主题市场</h4>
								<ul class="list_nav">
									<li style="width:23%"><a href="#">女装</a></li>
									<li style="width:23%"><a href="#">男装</a></li>
									<li style="width:23%"><a href="#">内衣</a></li>
									<li style="width:23%"><a href="#">鞋靴</a></li>
									<li style="width:23%"><a href="#">箱包</a></li>
									<li style="width:23%"><a href="#">婴童</a></li>
									<li style="width:23%"><a href="#">家电</a></li>
									<li style="width:23%"><a href="#">数码</a></li>
									<li style="width:23%"><a href="#">手机</a></li>
									<li style="width:23%"><a href="#">美妆</a></li>
									<li style="width:23%"><a href="#">珠宝</a></li>
									<li style="width:23%"><a href="#">眼镜</a></li>
									<li style="width:23%"><a href="#">手表</a></li>
									<li style="width:23%"><a href="#">运动</a></li>
									<li style="width:23%"><a href="#">户外</a></li>
									<li style="width:23%"><a href="#">乐器</a></li>
									<li style="width:23%"><a href="#">游戏</a></li>
									<li style="width:23%"><a href="#">动漫</a></li>
									<li style="width:23%"><a href="#">影视</a></li>
									<li style="width:23%"><a href="#">美食</a></li>
									<li style="width:23%"><a href="#">鲜花</a></li>
									<li style="width:23%"><a href="#">宠物</a></li>
									<li style="width:23%"><a href="#">农资</a></li>
									<li style="width:23%"><a href="#">房产</a></li>
									<li style="width:23%"><a href="#">装修</a></li>
									<li style="width:23%"><a href="#">建材</a></li>
									<li style="width:23%"><a href="#">家具</a></li>
									<li style="width:23%"><a href="#">百货</a></li>
									<li style="width:23%"><a href="#">汽车</a></li>
									<li style="width:23%"><a href="#">二手车</a></li>
									<li style="width:23%"><a href="#">办公</a></li>
									<li style="width:23%"><a href="#">制定</a></li>
									<li style="width:23%"><a href="#">教育</a></li>
									<li style="width:23%"><a href="#">卡券</a></li>
									<li style="width:23%"><a href="#">本地</a></li>
								</ul>
							</div>
						</div>
						<div class="list_wrap">
							<div class="list_n2">
							<h4 style="color:#9fb838;">特色市场</h4>
							<ul class="list_nav">
								<li style="width:33%"><a href="#">iFashion</a></li>
								<li style="width:33%"><a href="#">爱逛街</a></li>
								<li style="width:33%"><a href="#">美妆秀</a></li>
								<li style="width:33%"><a href="#">全球购</a></li>
								<li style="width:33%"><a href="#">腔调</a></li>
								<li style="width:33%"><a href="#">淘女郎</a></li>
								<li style="width:33%"><a href="#">星店</a></li>
								<li style="width:33%"><a href="#">极有家</a></li>
								<li style="width:33%"><a href="#">按里拍卖</a></li>
								<li style="width:33%"><a href="#">淘宝众筹</a></li>
								<li style="width:33%"><a href="#">中国质造</a></li>
								<li style="width:33%"><a href="#">飞猪</a></li>
								<li style="width:33%"><a href="#">亲宝贝</a></li>
								<li style="width:33%"><a href="#">闲鱼</a></li>
								<li style="width:33%"><a href="#">农资</a></li>
								<li style="width:33%"><a href="#">天天特价</a></li>
								<li style="width:33%"><a href="#">Outlets</a></li>
								<li style="width:33%"><a href="#">俪人购</a></li>
								<li style="width:33%"><a href="#">聚名平品</a></li>
								<li style="width:33%"><a href="#">淘抢购</a></li>
								<li style="width:33%"><a href="#">全球精选</a></li>
								<li style="width:33%"><a href="#">非常大牌</a></li>
								<li style="width:33%"><a href="#">试用</a></li>
								<li style="width:33%"><a href="#">量贩团</a></li>
								<li style="width:33%"><a href="#">阿里翻译</a></li>
							</ul>
							</div>
						</div>
						<div class="list_wrap">
							<div class="list_n3">
							<h4 style="color:#d75696;">阿里APP</h4>
							<ul class="list_nav">
								<li style="33%"><a href="#">淘宝</a></li>
								<li style="width:33%"><a href="#">天猫</a></li>
								<li style="width:33%"><a href="#">支付宝</a></li>
								<li style="width:33%"><a href="#">聚划算</a></li>
								<li style="width:33%"><a href="#">飞猪</a></li>
								<li style="width:33%"><a href="#">蚂蚁聚宝</a></li>
								<li style="width:33%"><a href="#">旺信</a></li>
								<li style="width:33%"><a href="#">闲鱼</a></li>
								<li style="width:33%"><a href="#">阿里钱盾</a></li>
								<li style="width:33%"><a href="#">钉钉</a></li>
								<li style="width:33%"><a href="#">高德地图</a></li>
								<li style="width:33%"><a href="#">点点虫</a></li>
								<li style="width:33%"><a href="#">虾米音乐</a></li>
								<li style="width:33%"><a href="#">淘票票</a></li>
								<li style="width:33%"><a href="#">菜鸟裹裹</a></li>
								<li style="width:33%"><a href="#">爱逛街</a></li>
								<li style="width:33%"><a href="#">拍卖会</a></li>
								<li style="width:33%"><a href="#">阿里云</a></li>
								<li style="width:33%"><a href="#">网商银行</a></li>
								<li style="width:33%"><a href="#">阿里邮箱</a></li>
								<li style="width:33%"><a href="#">阿里众包</a></li>
							</ul>
							</div>
						</div>
						<div class="list_wrap">
							<div class="list_n4">
							<h4 style="color:#2e9fdb;">精彩推荐集</h4>
							<ul class="list_nav">
								<li style="width:49%"><a href="#">余额宝</a></li>
								<li style="width:49%"><a href="#">大牌捡宝</a></li>
								<li style="width:49%"><a href="#">淘公仔</a></li>
								<li style="width:49%"><a href="#">浏览器</a></li>
								<li style="width:49%"><a href="#">淘宝香港</a></li>
								<li style="width:49%"><a href="#">淘宝台湾</a></li>
								<li style="width:49%"><a href="#">淘宝全球</a></li>
								<li style="width:49%"><a href="#">淘宝东南亚</a></li>
								<li style="width:49%"><a href="#">闺蜜淘货</a></li>
								<li style="width:49%"><a href="#">大众评审</a></li>
								<li style="width:49%"><a href="#">淘工作</a></li>
							</ul>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="customer">
						<a href="#">联系客服</a>
						<span class="xiabiao"></span>
					</div>
					<div class="list_cus">
						<ul class="list_customer">
							<li>
								<a href="#">消费者客服</a>
							</li>
							<li>
								<a href="#">卖家客服</a>
							</li>
						</ul>
					</div>
				</li>
				<li>
					<div class="seller">
						<a href="#">卖家中心</a>
						<span class="xiabiao" ></span>
					</div>
					<div class="list_sel">
						<ul class="list_seller">
							<li><a href="#">免费开店</a></li>
							<li><a href="#">已卖出的宝贝</a></li>
							<li><a href="#">售出中的宝贝</a></li>
							<li><a href="#">卖家服务市场</a></li>
							<li><a href="#">卖家培训中心</a></li>
							<li><a href="#">体检中心</a></li>
							<li><a href="#">问商友</a></li>
						</ul>
					</div>
				</li>
				<li><a href="#">商品分类</a></li>
				<li>
					<div class="shoucang">
						<span class="xing"></span>
						<a href="#">收藏夹</a>
						<span class="xiabiao"></span>
					</div>
					<div class="list_shouc">
						<ul class="list_shoucang">
							<li><a href="#">收藏的宝贝</a></li>
							<li><a href="#">收藏的店铺</a></li>
						</ul>
					</div>
				</li>
				<li>
					<span class="gouwuche"></span>
					<a href="#">购物车</a>
					<span class="num">0</span>
					<span class="xiabiao"></span>
				</li>
				<li>
					<div class="mytaobao">
						<a href="mytaobao.jsp" style="color:#6C6C6C">我的淘宝</a>
						<span class="xiabiao"></span>
					</div>
					<div class="list_mytao">
						<ul class="list_mytaobao">
							<li><a href="#">已买到的宝贝</a></li>
							<li><a href="#">我的足迹</a></li>
						</ul>
					</div>
				</li>	
			</ul>
		</div>
	</div>
	<div class="nav_wrap">
		<div class="nav">
			<div class="logo">
				<img src="myfoot/myfoot_logo.png" alt="">
			</div>
			<div class="search">
				<form action="" id="form1">
					<input type="text" placeholder="请输入要搜索的词">
					<button type="button">搜索</button>
				</form>
			</div>
		</div>
	</div>
	<div class="main">
		<div class="main_head">
			<div class="remove_wrap">
				<div class="remove">
					<div class="remove_btn">
						<div class="img"></div>
						<span>批量删除</span>
					</div>
				</div>
			</div>
			<div class="line"></div>
		</div>
		<div class="items_wrap">
			<div class="items_line"></div>
			<div class="items">
			</div>
		</div>
	</div>
		
	
	</div>
		<div id="bottom">
		<ul class="b">
			<li class="b-6"><a href="#">阿里巴巴集团</a><b>|</b></li>
			<li class="b-3"><a href="#">淘宝网</a>   <b>|</b></li>
			<li class="b-2"><a href="#">天猫</a><b>|</b></li>
			<li class="b-3"><a href="#">聚划算</a><b>|</b></li>
			<li class="b-5"><a href="#">全球速卖通</a><b>|</b></li>
			<li class="b-10"><a href="#">阿里巴巴国际交易市场</a><b>|</b></li>
			<li class="b-8"><a href="#">1688</a><b>|</b></li>
			<li class="b-4"><a href="#">阿里妈妈</a><b>|</b></li>
			<li class="b-2"><a href="#">飞猪</a><b>|</b></li>
			<li class="b-5"><a href="#">阿里云计算</a><b>|</b></li>
			<li  class="b-7"><a href="#">Alios</a><b>|</b></li>
			<li class="b-4"><a href="#">阿里通信</a><b>|</b></li>
			<li class="b-2"><a href="#">一淘</a><b>|</b></li>
			<li class="b-2"><a href="#">万网</a><b>|</b></li>
			<li class="b-2"><a href="#">高德</a><b>|</b></li>
			<li class="b-2"><a href="#">UC</a><b>|</b></li>
			<li class="b-2"><a href="#">友盟</a></li>
			<li class="b-2"><a href="#">虾米</a><b>|</b></li>
			<li class="b-3"><a href="#">大麦网</a><b>|</b></li>
			<li class="b-2"><a href="#">钉钉</a><b>|</b></li>
			<li class="b-3"><a href="#">支付宝</a><b>|</b></li>
			<li class="b-2"><a href="#">优酷</a><b>|</b></li>
			<li class="b-2"><a href="#">土豆</a><b>|</b></li>
			<li class="b-4"><a href="#">阿里健康</a><b>|</b></li>
			<li class="b-4"><a href="#">阿里影业</a><b>|</b></li>
			<li class="b-4"><a href="#">阿里体育</a><b>|</b></li>
			<li class="b-4"><a href="#">网商银行</a><b>|</b></li>
		</ul>
	</div>
	<div id="gy">
		<ul class="g">
			<li><a href="#">关于淘宝</a></li>
			<li><a href="#">合作伙伴</a></li>
			<li><a href="#">营销中心</a></li>
			<li><a href="#">廉政举报</a></li>
			<li><a href="#">联系客服</a></li>
			<li><a href="#">开放平台</a></li>
			<li><a href="#">诚征英才</a></li>
			<li><a href="#">联系我们</a></li>
			<li><a href="#">网站地图</a></li>
			<li><a href="#">法律保护及隐私权政策</a></li>
			<li><a href="#">知识产权</a><b>|</b></li>
			<li>? 2003-现在 Taobao.com 版权所有</li>
		</ul>
	</div>
	<div id="wl">
		<ul class="w">
			<li><a href="#">网络文化经营许可证：浙网文[2016]0268-027号</a></li>
			<li><a href="#">增值电信业务经营许可证：浙B2-2008224</a><b>|</b></li>
			<li>
				<a href="#">	信息网络传播视听许可证：1109364号
				</a>
			</li>
			<li>
				<a href="#">互联网违法和不良信息举报电话：0571-81683755 blxxjb@alibaba-inc.com
				</a>	
			</li>
		</ul>	
	</div>	
	<div id="zg">
		<ul class="z">
			<li><a href="#"><img="g.png"/>浙公网安备 33010002000078号</a><b>|</b></li>
			<li>
				<a href="#">（浙）网械平台备字[2018]第00004号</a>
			</li>
			<li><a href="#"><b>|</b>出版物网络交易平台服务经营备案证：新出发浙备字第002号</a><b>|</b></li>
			
			<li><a href="#">互联网药品信息服务资格证书编号：（浙）-经营性-2018-0010</a></li>
		</ul>	       
	</div>	
	<script src="js/myfoot.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
	$(function(){
			
			var username="<%=username%>";
			if(username.length!=0){
				$(".text_span").css("display","none");
				$(".text_span1").css("color","#6c6c6c");
			}else{
				$(".text_span").css("display","block");
			}
			var records='${myfoot_goods}';
			records=records.replace("[","");
			records=records.replace("]","");
			if(records!==""){
				records=records.split(", {"); 
	 			 var records_obj={}; 
	 			/*  console.log(records); */
				 for(var i=0;i<records.length;i++){
					records[i]=records[i].replace("{","");
					records[i]=records[i].replace("}",""); 
					records[i]=records[i].split(", ");
					/* console.log(records[i]); */
					records_obj["i"+i]={};
					for(var j=0;j<records[i].length;j++){
						var temp=[];
						temp=records[i][j].split("="); 
						records_obj["i"+i][temp[0]]=temp[1]; 
					} 
					/*  console.log(records_obj);  */
				}
			}
			var times='${times}';
			var counts='${counts}';
			times=times.replace("[","");
			times=times.replace("]",""); 
			counts=counts.replace("[","");
			counts=counts.replace("]",""); 
			if(times!==""&&counts!==""){
				times=times.split(", ");
				counts=counts.split(", ");
				console.log(counts);
				var time="";
				var count="";
				var items_content="";
				var time_posit=[0];
				for(var i=0;i<counts.length-1;i++){
					time_posit.push(parseInt(time_posit[i])+parseInt(counts[i]));
				}
				for(var i=0;i<records.length;i++){
					var ix="i"+i; 
					for(var j=0;j<time_posit.length;j++){
						if(time_posit[j]==i){
							time=times[j];
							count=counts[j]+"件宝贝";
							break;
						}else{
							time="";
							count="";
						}
					}
					var item_content="<div class='item_box'><div class='goods_date'><div class='date_wrap'><i>"+time+"</i><em class='goods_sum'>"+count+"</em><del>删除当天</del></div><s class='line'></s></div><div class='img_box'><div class='remove_goods'><input type='hidden' value='"+records_obj[ix]["footmarkid"]+"'></div><a><img src='"+records_obj[ix]["imgurl"]+"'></div><div class='bot'></a><div class='price_box'><span class='new'>￥</span><em class='price_new'>"+records_obj[ix]["pricenew"]+"</em><span class='old'>￥</span><em class='price_old'>"+records_obj[ix]["priceold"]+"</em></div><div class='title'>"+records_obj[ix]["goodsname"]+"</div></div></div>";
					items_content+=item_content;
				}
				items.innerHTML=""+items_content;
				for(var i=0;i<records.length;i++){
					for(var j=0;j<time_posit.length;j++){
						if(time_posit[j]==i){
							var date_wrap=document.getElementsByClassName("date_wrap")[i];
							date_wrap.style.background="#f7f7f7";
							break;
						}
					}
				}
				for(var i=0;i<records.length;i++){
				for(var j=0;j<time_posit.length;j++){
					if(time_posit[j]==i){
						var del=document.getElementsByTagName("del")[i];
						del.style.width="80px";
						del.style.fontSize="12px";
						break;
					}
				}
			}
		}
		$(document).on("mouseenter",".img_box",function(){
			if(flag){
				$(this).find(".remove_goods").css("display","block");
				$(this).find(".remove_goods").on("mouseenter",function(){
					$(this).css("background","url('myfoot/del_red.png') no-repeat");
					$(this).css("backgroundSize","100% 100%");
				});
				$(this).find(".remove_goods").on("mouseleave",function(){
					$(this).css("background","url('myfoot/del_black.png') no-repeat");
					$(this).css("backgroundSize","100% 100%");
				});
			}
		});
		$(document).on("mouseleave",".img_box",function(){
			if(flag){
				$(this).find(".remove_goods").css("display","none");
			}	
		});
		$(".remove_goods").bind("click",function(){
			var itembox=$(this).parent().parent();
			var i_text=itembox.find("i").text();
			var img_box=itembox.find(".img_box");
			var bot=itembox.find(".bot");
			var itembox_next=$(this).parent().parent().next();
			console.log(itembox_next);
			var i_text_next=itembox_next.find("i").text();
			var img_box_next=itembox_next.find(".img_box").clone(true);
			var bot_next=itembox_next.find(".bot");
			var goods_date=itembox.find(".goods_date");
			console.log(goods_date);
			var goods_sum=goods_date.find(".goods_sum");
			var goods_date_qian;
			var dobox=itembox;
			while(dobox.find("i").text()==""){
				dobox=dobox.prev();
			}
			goods_date_qian=dobox;
			qian_goods_sum=goods_date_qian.find(".goods_sum");
			console.log(qian_goods_sum);
			$.ajax({
				type:'POST',
				url:'removeGoodsServlet',
				data:{
					footmarkid:$(this).find("input").val()
				},
				success:function(data){
					if($.trim(data)==1){
						if(parseInt(goods_sum.text())=="1"){
							itembox.remove();
						}
						if(i_text!=""){
							if(i_text_next==""){
								img_box.remove();
							 	img_box_next.insertAfter(goods_date);
							 	console.log(img_box_next);
							 	bot.replaceWith(bot_next);
								itembox_next.remove();
								goods_sum.text(parseInt(goods_sum.text())-1+"件宝贝");
							}
						}else{
							qian_goods_sum.text(parseInt(qian_goods_sum.text())-1+"件宝贝");
							itembox.remove();		
						}
						$.ajax({
							type:'POST',
							url:'showMyfootSaleServlet'
						});
					}
				}
			});
		});
		$("del").bind("click",function(){
			var i_text=$(this).parent().find("i").text();
			var itembox=$(this).parent().parent().parent();
			var goods_sum=$(this).prev();
			var goods_sum_text=parseInt(goods_sum.text());
			$.ajax({
				type:'POST',
				url:'delDayGoodsServlet',
				data:{
					date:i_text
				}
			});
			for(var i=0;i<goods_sum_text-1;i++){
				itembox.next().remove();
			}
			itembox.remove();
		});
		var flag=true;
		$(".remove_btn").bind("click",function(){
			if(flag){
				flag=false;
				$(this).css("background","#999");
			 	$(this).find(".img").css("background","url('myfoot/remove_btn1.png') no-repeat");
			 	$(this).find(".img").css("background-size","100% 100%");
			 	$(this).find("span").css("color","#fff");
			 	$(".item_box").find("del").css("display","block");
			 	$(".item_box").find("del").css("opacity",".8");
			 	$(".item_box").find(".remove_goods").css("display","block");
			 	$(".img_box").css("opacity",".8");
			}else{
				flag=true;
				$(this).css("background","#fff");
			 	$(this).find(".img").css("background","url('myfoot/remove_btn.png') no-repeat");
			 	$(this).find(".img").css("background-size","100% 100%");
			 	$(this).find("span").css("color","#999");
			 	$(".img_box").css("opacity","1");
			 	$(".item_box").find("del").css("display","none");
			 	$(".item_box").find("del").css("opacity","1");
			 	$(".item_box").find(".remove_goods").css("display","none");
			}	
		});
		$(".goods_date").bind("mouseenter",function(){
			if(flag){
				$(this).find("del").css("display","block");
			}
		});
		$(".goods_date").bind("mouseleave",function(){
			if(flag){
				$(this).find("del").css("display","none");
			}
		});
	});
	</script>
</body>
</html>

