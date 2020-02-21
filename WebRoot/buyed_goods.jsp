<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>已买到的宝贝</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/shouwei.css">
	<link rel="stylesheet" href="css/buyed_goods.css">
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
	
	
	

		<div id="nav">
			<div class="logo_1"><img src="images\1.png"/>
			</div>
			<ul>
				<li>
					<a href="#">
						<span style="color:#fff">首页</span>
					</a>
					<i></i>
				</li>
				<li style="position:relative">
					<a href="#" class="user_kuang">
						<span style="color:#fff;">账户设置</span>
					</a>
					<div class="float_user">
						<i></i>
						<dl>
							<dt>安全设置</dt>
							<dd>
								<p>
									<a href="#">修改登录密码</a>
								</p>
								<p>
									<a href="#">手机绑定</a>
								</p>
								<p>
									<a href="#">密保问题设置</a>
								</p>
								<p>
									<a href="#">其他</a>
								</p>
							</dd>
						</dl>
						<dl>
							<dt>个人资料</dt>
							<dd>
								<p>
									<a href="#">收货地址</a>
								</p>
								<p>
									<a href="#">修改头像、昵称</a>
								</p>
								<p>
									<a href="#">消息提醒设置</a>
								</p>
							</dd>
						</dl>
						<dl>
							<dt>账号绑定</dt>
							<dd>
								<p>
									<a href="#">支付宝绑定</a>
								</p>
								<p>
									<a href="#">微博绑定</a>
								</p>
								<p>
									<a href="#">分享绑定</a>
								</p>
							</dd>
						</dl>
					</div>
				</li>
				<li>
					<a href="#">
						<span style="color:#fff">消息</span>
					</a>
					<i></i>
				</li>
			</ul>
			<div class="check">
				<input type="button" class="but" value="搜索" style="cursor:pointer">
				<input type="text" class="sus" value="">
    	</div>
		</div>
<div class="wrap">
	<div class="section">
		<dl class="section_dl">
			<dt class="fn_all">全部功能</dt>
				<dd>
					<a href="">我的购物车</a>
				</dd>
				<dd>
					<b></b>
					<a href="">已买到的宝贝</a>
					<ul class="dd_ul">
						<li> <a href="#">我的拍卖</a></li>
						<li> <a href="#">机票酒店保险</a></li>
						<li> <a href="#">我的彩票</a></li>
						<li> <a href="#">官方集运</a></li>
					</ul>
				</dd>
				<dd>
					<a href="">购买过的店铺</a>
				</dd>
				<dd>
					<b></b>
					<a href="">我的发票</a>
					<ul class="dd_ul">
						<li><a href="#">开票信息</a></li>
						<li><a href="#">发票管理</a></li>
					</ul>
				</dd>
				<dd>
					<a href="">我的收藏</a>
				</dd>
				<dd>
					<a href="">我的积分</a>
				</dd>
				<dd>
					<a href="">我的优惠信息</a>
				</dd>
				<dd>
					<a href="">评价管理</a>
				</dd>
				<dd>
					<b></b>
					<a href="">退款维权</a>
					<ul class="dd_ul">
						<li><a href="#">退款管理</a></li>
						<li><a href="#">投诉管理</a></li>
						<li><a href="#">举报管理</a></li>
					</ul>
				</dd>
				<dd>
					<a href="">我的足迹</a>
				</dd>
				<dd>
					<a href="">流量钱包</a>
				</dd>
		</dl>	
	</div>
	<div class="main_wrap">
			<div class="main">
				<div class="status_wrap">
					<div class="status">
						<div class="stat xz all_order">
							<span class="st">
								<span class="st_text">所有订单</span>
							</span>
							<span class="line"></span>
						</div>
						<div class="stat wxz dai_send">
							<span class="st">
								<span class="st_text">待发货</span>
							</span>
							<span class="line"></span>
						</div>
						<div class="stat wxz dai_rev">
							<span class="st">
								<span class="st_text">待收货</span>
							</span>
							<span class="line"></span>
						</div>
						<div class="stat wxz dai_back">
							<span class="st">
								<span class="st_text">待退款</span>
							</span>
						</div>
					</div>
				</div>
				<div class="list_nav_wrap">
					<div class="list_nav">
						<ul>
							<li style="width:250px">宝贝</li>
							<li style="width:150px">详情</li>
							<li style="width:120px">单价</li>
							<li style="width:120px">数量</li>
							<li style="width:120px">实付款</li>
							<li style="width:120px">订单状态</li>
							<li style="width:100px">订单操作</li>
						</ul>
					</div>
				</div>
				<div class="content_goods">
				<c:forEach var="r" items="${buyed_goods }">
					<div class="other1">
						<div class="other_top">
							店铺：
							<a href="#">${r.storename}</a>
							<span class="img"></span>
						</div>
						<div class="other_content wxz_bg">
							<ul class="goods_ul">
								<li>
									<span class="img_kuang kuang wxz goods"></span>
								</li>
								<li style="width:240px">
									<div class="deatil">
										<img src="${r.imgurl}"/>
										<div class="goods_name">
											<div class="name">${r.goodsname}</div>
										</div>
									</div>
								</li>
								<li style="width:150px">
									<div class="revise">
										<p>${r.detail}</p>
									</div>
								</li>
								<li style="width:120px">
									<div class="price_wrap">
										<div class="price">
											<em class="price_new">${r.pricenew}</em>
										</div>
									</div>
								</li>
								<li style="width:120px">
									<div class="seller_sum">${r.goods_sum}</div>
								</li>
								<li style="width:120px">
									<div class="small_j">${r.sum_price}</div>
								</li>
								<li style="width:120px">
									<div class="status_order">${r.statusname}</div>
								</li>
								<li style="width:100px">
									<div class="caozuo" style="margin-left:15px">
										<input type="hidden" value="${r.orderxid }">
										<c:if test="${r.statusid eq '3'||r.statusid eq '5'}"><a href="" style="cursor:pointer;display:block;margin-bottom:5px;text-align:left" class="shan">删除</a></c:if>
										<c:if test="${r.statusid eq '2'||r.statusid eq '1'}"><a href="" style="cursor:pointer;display:block;margin-bottom:5px;text-align:left" class="back">退款</a></c:if>
										<c:if test="${r.statusid eq '2'}"><a href="" style="cursor:pointer;display:block;margin-bottom:5px;text-align:left" class="tr_order">确认收货</a></c:if>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</c:forEach>
				</div>
			</div>
		</div>
</div>
<div id="bottom" style="margin-top:80px">
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
	<script src="js/buyed_goods.js"></script>
	<script src="js/jquery.js"></script>
	<script>
		$(function(){
			var username='${username}';
			if(username.length!=0){
				$(".text_span").css("display","none");
				$(".text_span1").css("color","#6c6c6c");
			}else{
				$(".text_span").css("display","block");
			}
			$(".dai_send").bind("click",function(){
				$.ajax({
					type:'POST',
					url:'daiSendServlet',
					success:function(data){
						$("body").html(data);
						$(".stat").removeClass("xz");
						$(".stat").addClass("wxz");
						$(".stat").eq("1").addClass("xz");
						$(".sus").css("display","none");
						$(".but").css("display","none");
					}
				});
			});
			$(".dai_rev").bind("click",function(){
				$.ajax({
					type:'POST',
					url:'daiRevServlet',
					success:function(data){
						$("body").html(data);
						$(".stat").removeClass("xz");
						$(".stat").addClass("wxz");
						$(".stat").eq("2").addClass("xz");
						$(".sus").css("display","none");
						$(".but").css("display","none");
					}
				});
			});
			$(".dai_back").bind("click",function(){
				$.ajax({
					type:'POST',
					url:'daiBackServlet',
					success:function(data){
						$("body").html(data);
						$(".stat").removeClass("xz");
						$(".stat").addClass("wxz");
						$(".stat").eq("3").addClass("xz");
						$(".sus").css("display","none");
						$(".but").css("display","none");
					}
				});
			});
			$(".all_order").bind("click",function(){
				$.ajax({
					type:'POST',
					url:'allOrderServlet',
					success:function(data){
						$("body").html(data);
						$(".stat").removeClass("xz");
						$(".stat").addClass("wxz");
						$(".stat").eq("0").addClass("xz");
						$(".sus").css("display","block");
						$(".but").css("display","block");
					}
				});
			});
			$(".back").bind("click",function(){
				var orderxid=$(this).parent().find("input").val();
				var status_order=$(this).parent().parent().parent().find(".status_order");
				var this_a=$(this);
				$.ajax({
					type:'POST',
					url:'mBackOrderServlet',
					data:{
						orderxid:orderxid
					},
					success:function(data){
						if($.trim(data)=="1"){
							status_order.text("待退款");
							this_a.text("退款成功");
							setTimeout(function(){
								this_a.remove();
							},1500);
						}	
					}
				});
			});
			$(".tr_order").bind("click",function(){
				var orderxid=$(this).parent().find("input").val();
				var status_order=$(this).parent().parent().parent().find(".status_order");
				var this_a=$(this);
				$.ajax({
					type:'POST',
					url:'mTrOrderServlet',
					data:{
						orderxid:orderxid
					},
					success:function(data){
						if($.trim(data)=="1"){
							status_order.text("已买");
							this_a.text("收货成功");
							setTimeout(function(){
								this_a.remove();
							},1500);
						}	
					}
				});
			});
			$(".shan").bind("click",function(){
				var orderxid=$(this).parent().find("input").val();
				var other=$(this).parent().parent().parent().parent().parent();
				$.ajax({
					type:'POST',
					url:'mDelOrderServlet',
					data:{
						orderxid:orderxid
					},
					success:function(data){
						if($.trim(data)=="1"){
							other.remove();
						}	
					}
				});
			});
			$(".but").bind("click",function(){
				var inputval=$(this).parent().find(".sus").val();
				$.ajax({
					type:'POST',
					url:'mSearchOrderServlet',
					data:{
						inputval:inputval
					},
					success:function(data){
						$("body").html(data);
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
