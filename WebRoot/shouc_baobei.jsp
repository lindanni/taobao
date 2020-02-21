<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String username=(String)session.getAttribute("username");
	List<Map<String,String>> records=(List<Map<String,String>>) request.getAttribute("shouc_search");
	if(records==null){
		records=(List<Map<String,String>>) session.getAttribute("shouc_goods");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>我的收藏夹</title>
	<link rel="stylesheet" type="text/css" href="css/scj.css">
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
				<li><a href="#" style="color:#f22e00;"><span class="text_span">亲，请登陆</span><span class="text_span1">${username }</span></a></li>
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
							<li class="shouc_baobei_btn"><a href="#">收藏的宝贝</a></li>
							<li><a href="#">收藏的店铺</a></li>
						</ul>
					</div>
				</li>
				<li>
					<span class="gouwuche"></span>
					<a href="#" class="gouwuche_btn">购物车</a>
					<span class="num"></span>
					<span class="xiabiao"></span>
				</li>
				<li>
					<div class="mytaobao">
						<a href="mytaobao.jsp" style="color:#6C6C6C">我的淘宝</a>
						<span class="xiabiao"></span>
					</div>
					<div class="list_mytao">
						<ul class="list_mytaobao">
							<li><a href="#" class="buyed_goods_btn">已买到的宝贝</a></li>
							<li class="myfoot"><a href="#">我的足迹</a></li>
						</ul>
					</div>
				</li>	
			</ul>
		</div>
	</div>





	<div id="head">
		<div class="logo"></div>
		<ul class="one-1">
			<li><a href="#">宝贝收藏</a></li>
			<li ><a href="">店铺收藏</a></li>
		</ul>
	</div>
<div class="content_wrap">
		<div class="content">
			<div class="content_nav">
				<div class="nav">
					<div class="sum">
						<span>全部宝贝
							<em>0</em>
						</span>
					</div>
					<div class="search">
						<form action="" id="form1">
							<div class="input_border">
								<input type="text" placeholder="宝贝搜索" name="input_text" id="input_text" value="${input_text}">
							</div>
							<div class="search_btn">
								<button class="btn edit" type="button">搜索</button>
							</div>
						</form>
					</div>
					<div class="fav_tools">
						<div class="tools">批量管理</div>
					</div>
					<div class="fav_tools_list">
						<ul class="list">
							<li class="quanxuan">
								<i class="edit"></i> 全选
							</li>
							<li class="shanchu">
								<i class="edit"></i>
								删除
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="fav_list">
				<ul class="img_item_list">
					<c:forEach var="r" items= "<%=records %>">
					<li>
						<div class="img_border">
							<img src="${r.imgurl}" alt="">
							<div class="in_dian">进入店铺<input type="hidden" value="${r.storename}"></div>
							<div class="remove edit"></div>
						</div>
						<div class="img_item_title">
							<span>${r.goodsname}</span>
						</div>
						<div class="price">
							<div class="cu_wrap">
								<span class="cu edit"></span>
							</div>
							<div class="pricenew_wrap">
								<span>￥ </span><em class="pricenew">${r.pricenew}</em>
							</div>
							<div class="priceold_wrap">
								<span>￥ </span><em class="priceold">${r.priceold}</em>
							</div>
						</div>
						<div class="kuang">
							<div class="kuang_bg"></div>
							<div class="kuang_border"></div>
							<div class="kuang_xz">
								<i class="right_xuan edit"></i>
							</div>
						</div>
						<span class="hiddentext" style="font-size:0px">${r.shoucid}</span>
					</li>
					 </c:forEach>
				</ul>
			</div>
			</div>
	</div>
<div class="sale">
	<h3>热卖单品</h3>
	<div class="sale_list">
		<ul class="ul_list"></ul>
	</div>
</div>
<!-- 猜你喜欢 -->
	<div id="cn">
		<div class="cn-1">猜你喜欢<b>|</b></div>
		<div class="cn-2">淘宝发现</div>
		
	</div>
	<!-- 图片 -->

	<div id="fx">
		<div class="f-1">
			<div class="f-1-1"></div>
			<div class="f-1-2">&yen 158</div>
			<div class="f-1-3"><a href="">2018反季秋冬新款宽松显廋黑色呢子大衣</a></div>
			<div class="f-1-4"><p>月销1252</p><p>根据你浏览的“毛呢”推荐</p></div>
		</div>
		<div class="f-2">
			<div class="f-2-1"></div>
			<div class="f-2-2">&yen 69.9</div>
			<div class="f-2-3"><a href="">2018新款韩版秋装百搭上衣学生短款秋季羊羔短外套</a></div>
			<div class="f-2-4"><p>月销4991</p><p>根据你浏览的“短外套”推荐</p></div>
		</div>
		 <div class="f-3">
			<div class="f-3-1"></div>
			<div class="f-3-2">&yen 78</div>
			<div class="f-3-3"><a href="">2018新款韩版秋装宽松学生bf百搭秋季外套</a></div>
			<div class="f-3-4"><p>月销181</p><p>根据你浏览的“女装”推荐</p></div>
		</div>
		<div class="f-4">
			<div class="f-4-1"></div>
			<div class="f-4-2">&yen 19.9</div>
			<div class="f-4-3"><a href="">芦荟胶补水保湿祛痘膏淡化痘印面霜晒后修复</a></div>
			<div class="f-4-4"><p>月销24181</p><p>根据你浏览的“面霜”推荐</p></div>
		</div>
		<div class="f-5">
			<div class="f-5-1"></div>
			<div class="f-5-2">&yen 148</div>
			<div class="f-5-3"><a href="">@易燃青年 贴布印花串标牛仔外套男</a><</div>
			<div class="f-5-4"><p>月销751</p><p>根据你浏览的“夹克”推荐</p></div>
		</div> 
		<div class="f-6">
			<div class="f-6-1"></div>
			<div class="f-6-2">&yen 199</div>
			<div class="f-6-3">2018新款女装修身韩版呢子</div>
			<div class="f-6-4"><p>月销6130</p><p>根据你浏览的“毛呢外套”推荐</p></div>
		</div> 
	</div>




	<div id="fx2">
		<div class="f2-1">
			<div class="f2-1-1"></div>
			<div class="f2-1-2">&yen 99</div>
			<div class="f2-1-3"><a href="">短款风衣小外套春秋季2018新款</a></div>
			<div class="f2-1-4"><p>月销6738</p><p>根据你浏览的“短外套”推荐</p></div>
		</div>
		<div class="f2-2">
			<div class="f2-2-1"></div>
			<div class="f2-2-2">&yen 169.9</div>
			<div class="f2-2-3"><a href="">@易燃日系简约2018复古风外套男</a></div>
			<div class="f2-2-4"><p>月销618</p><p>根据你浏览的“夹克”推荐</p></div>
		</div>
		 <div class="f2-3">
			<div class="f2-3-1"></div>
			<div class="f2-3-2">&yen 178</div>
			<div class="f2-3-3"><a href="">小鹿要飞秋冬简约大翻领小个子黄毛呢</a></div>
			<div class="f2-3-4"><p>月销181</p><p>根据你浏览的“毛呢外套”推荐</p></div>
		</div>
		<div class="f2-4">
			<div class="f2-4-1"></div>
			<div class="f2-4-2">&yen 336</div>
			<div class="f2-4-3"><a href="">2018新款春秋外套嘻哈少女街头韩版</a></div>
			<div class="f2-4-4"><p>月销601</p><p>根据你浏览的“风衣”推荐</p></div>
		</div>
		<div class="f2-5">
			<div class="f2-5-1"></div>
			<div class="f2-5-2">&yen 168</div>
			<div class="f2-5-3"><a href="">自然共和国芦荟胶正品祛痘淡印膏</a><</div>
			<div class="f2-5-4"><p>月销94418</p><p>根据你浏览的“面霜”推荐</p></div>
		</div> 

		<div class="f2-6">
			<div class="f2-6-1"></div>
			<div class="f2-6-2">&yen 39</div>
			<div class="f2-6-3">保温杯防摔坏可爱保温杯</div>
			<div class="f2-6-4"><p>月销123</p><p>根据你浏览的“杯子”推荐</p></div>
		</div> 
	</div>
<!-- 促销 -->
		<div id="cx">
				<div class="cx1"></div>
				<div class="cx2"></div>
		</div>







<!-- 底部 -->
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
			<li>© 2003-现在 Taobao.com 版权所有</li>
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

<script src="js/shouc_baobei.js"></script>
<script src="js/jquery.js"></script>
<script>
		$(function(){
			var username="<%=username%>";
			if(username.length!=0){
				$(".text_span").css("display","none");
				$(".text_span1").css("color","#6c6c6c");
			}else{
				$(".text_span").css("display","block");
			}
			var records='${records}';
 			records=records.replace("[","");
			records=records.replace("]","");
			records=records.split(", {"); 
 			 var records_obj={}; 
 			/*  console.log(records); */
			 for(var i=0;i<records.length;i++){
				records[i]=records[i].replace("{","");
				records[i]=records[i].replace("}",""); 
				console.log(records[i]);
				records[i]=records[i].split(", ");
				/* console.log(records[i]); */
				records_obj["i"+i]={};
				for(var j=0;j<records[i].length;j++){
					var temp=[];
					temp=records[i][j].split("="); 
					records_obj["i"+i][temp[0]]=temp[1]; 
				} 
			}
			var sale_li="";
			for(var i=0;i<5;i++){
				var ix="i"+i; 
				var saleEvery="<li><a class='sale_img'><img src='"+records_obj[ix]["imgurl"]+"'></a><a class='sale_name'><span>"+records_obj[ix]["goodsname"]+"</span></a><div class='line_2'><a>收藏<em>"+records_obj[ix]["shoucang"]+"</em></a></div><div class='line_3'><a class='new'><span>￥</span><em>"+parseInt(records_obj[ix]["pricenew"])+"</em></a><a class='old'><span>￥</span><em>"+parseInt(records_obj[ix]["priceold"])+"</em></a><a class='salesum'>月销<em>"+records_obj[ix]["salesum"]+"</em>笔</a></div></li>";
				sale_li+=saleEvery;
				ul_list.innerHTML=""+sale_li;
			}
			$(".remove").bind("click",function(){
				var hiddentext=$(this).parent().parent().find(".hiddentext").text();
				var this_li=$(this).parent().parent();
				console.log(hiddentext);
				$.ajax({
					type:'POST',
					url:'delshoucBdServlet',
					data:{
						shoucid:hiddentext
					},
					success:function(data){
						if($.trim(data)=="1"){
							 this_li.remove();
						}
					}
				});
			});
			$(".btn").bind("click",function(){
				var input_text=$("#input_text").val();
				console.log(input_text);
				$.ajax({
					type:'POST',
					url:'shoucSearchServlet',
					data:{
						input_text:input_text
					},
					success:function(data){
						$("body").html(data);
					}
				});
			});
			$(".shanchu").bind("click",function(){
				var shoucid_remove="";
				$(".kuang.xz_kuang").each(function(){
					var this_li=$(this).parent();
					var shoucid=this_li.find(".hiddentext").text();
					if(shoucid_remove==""){
						shoucid_remove+=shoucid;
					}else{
						shoucid_remove+=","+shoucid;
					}
				});
				var xz_kuang_li=$(".kuang.xz_kuang").parent();
				$.ajax({
					type:'POST',
					url:'delXzShoucServlet',
					data:{
						shoucid_remove:shoucid_remove
					},
					success:function(data){
						if($.trim(data)=="1"){
							xz_kuang_li.each(function(){
								$(this).remove();
							});
						}		
					}
				});
			});
			$(".in_dian").bind("click",function(){
				var dian_name=$(this).find("input").val();
				$.ajax({
					type:'POST',
					url:'showSaleServlet',
					data:{
						dian_name:dian_name
					},
					success:function(){
						location.href="sale.jsp";
					}
				});
			});
			var list_shoucang=document.getElementsByClassName("list_shoucang")[0];
			var shouc_baobei=list_shoucang.getElementsByTagName("li")[0];
			shouc_baobei.addEventListener("click",function(){
				$.ajax({
					type:'POST',
					url:'shoucBSaleServlet'
				});
			},false);
			var myfoot=$(".myfoot");
			myfoot.bind("click",function(){
					$.ajax({
					type:'POST',
					url:'showMyfootSaleServlet',
					success:function(){
						location.href="myfoot.jsp";
					}
				});
			});
			var userid='${userid}';
			$(".shouc_baobei_btn").bind("click",function(){
				$.ajax({
					type:'POST',
					url:'showShoucBbServlet',
					data:{
						userid:userid
					},
					success:function(){
						location.href="shouc_baobei.jsp";
					}
				});
			});
			$(".buyed_goods_btn").bind("click",function(){
				$.ajax({
					type:'POST',
					url:'showBuyedServlet',
					success:function(){
						location.href="buyed_goods.jsp";
					}
				});
			});
			$(".gouwuche_btn").bind("click",function(){
				$.ajax({
					type:'POST',
					url:'showGouwucheServlet',
					success:function(){
						location.href="gouwuche.jsp";
					}
				});		
			});
		});
</script>
</body>
</html>
