<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>店铺</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/sale.css">
	<link rel="stylesheet" href="css/shouwei.css">
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
				<li><a href="#" style="color:#f22e00;">欢迎登录</a></li>
				<li><a href="#">消息</a></li>
				<li><a href="#">手机逛淘宝</a></li>
			</ul>
			<ul class="right">
				<li>
					<a href="#" class="sale_fn">店铺功能</a>
				</li>
				<li>
					<div class="mytaobao">
						<a href="#" style="color:#6C6C6C">店铺首页</a>
					</div>
				</li>	
			</ul>
		</div>
	</div>

	


	<div id="top">
		<div class="top-1">
			<div class="top-logo">
				<div class="logo-l"></div>
				<div class="logo-2"><a href="">店铺</a></div>
			</div>
			<!--  搜索-->
			<div class="search">
				<div class="tao"><a href="">淘宝</a></div>
				<div class="search-input"><input  aria-label="请输入搜索文字" >
					<button>搜索</button></div>
			</div>
		</div>
		<!-- 店铺 -->
		<div class="top-2">
			<div class="top-21"> 店铺：</div>
			<div class="top-22"><a href="" class="dian_name">${dian_name}</a></div>
			<div class="top-23">进入店铺</div>
			<div class="top-24">
				<ul></ul>
				<ul></ul>
				<ul></ul>
			</div>
			<div class="jin">
				<span class="jin-1"></span>
				<span class="jin-2"></span>
			</div>
			<div class="miao"> 
			[<span class="miao-1">描述</span>
			<span class="miao-2">4.7</span>
			<span class="miao-1">服务</span>
			<span class="miao-2">4.8</span>
			<span class="miao-1">物流</span>
			<span class="miao-2">4.8</span>]
		</div>
		</div>

	</div>
	<div class="img_big"><img src="" alt=""></div>
	<div class="carousel">
		<div class="show">
			<ul class="list_img">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
			<div class="buttons">
				<span class="buttonnum showcolor" index="1"></span>
				<span class="buttonnum" index="2"></span>
				<span class="buttonnum" index="3"></span>
				<span class="buttonnum" index="4"></span>
				<span class="buttonnum" index="5"></span>
			</div>
			<div class="leftbutton"></div>
			<div class="rightbutton"></div>
		</div>
	</div>
	<div class="big_title">BEST SALES</div>
	<div class="main_wrap">
		<div class="main">
			<ul class="img_list">
				<c:forEach var="r" items="${sale_goods}">
				<li>
					<img src="${r.imgurl}" alt="">
					<div class="title">${r.goodsname}</div>
					<div class="buy_wrap">
						<div class="buy">
							<input class="goodsid" type="hidden" value="${r.goodsid}">
						</div>
					</div>
				</li>
			</c:forEach>
			</ul>
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
			<li>信息网络传播视听许可证：1109364号</li>
			<li>互联网违法和不良信息举报电话：0571-81683755 blxxjb@alibaba-inc.com</li>
		</ul>	
	</div>	
	<div id="zg">
		<ul class="z">
			<li><a href="#"><img="g.png"/>浙公网安备 33010002000078号</a><b>|</b></li>
			<li>（浙）网械平台备字[2018]第00004号</li>
			<li><a href="#"><b>|</b>出版物网络交易平台服务经营备案证：新出发浙备字第002号</a><b>|</b></li>
			
			<li><a href="#">互联网药品信息服务资格证书编号：（浙）-经营性-2018-0010</a></li>
		</ul>	       
	</div>
	<script src="js/sale.js"></script>
	<script src="js/jquery.js"></script>
	<script>
		$(function(){
			$(".buy").bind("click",function(){
				$.ajax({
					type:'POST',
					url:'detailGoodsServlet',
					data:{
						goodsid:$(this).find("input").val()
					},
					success:function(){
						location.href="detail_goods.jsp";
					}
				});
			});
			$(".sale_fn").bind("click",function(){
				var dian_name=$(".dian_name").text();
				console.log(dian_name); 
				$.ajax({
					type:'POST',
					url:'showSaleFnServlet',
					data:{
						dian_name:dian_name
					},
					success:function(){
						location.href="sale_fn.jsp";
					}
				});
			});
		});
	</script>
</body>
</html>
