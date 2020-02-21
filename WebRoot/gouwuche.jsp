<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>购物车</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/gouwuche.css">
	<link rel="stylesheet" href="css/shouwei.css">
</head>
<body>
	<div class="wrap">
		<div class="header">
		<div class="content" style="width:990px">
			<ul class="left">
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
					<div class="list_mytao" style="position:relative;z-index:1000">
						<ul class="list_mytaobao">
							<li><a href="#" class="buyed_goods_btn">已买到的宝贝</a></li>
							<li class="myfoot"><a href="#">我的足迹</a></li>
						</ul>
					</div>
				</li>	
			</ul>
		</div>
		</div>
		<div class="content">
			<div class="c_header">
				<div class="logo">
					<div class="img"></div>
				</div>
				<div class="fix_search">
					<div class="search_h">
						<div class="search_border">
						  <div class="search-panel">
								<form method="post">
									<div class="search-button">
										<button>搜索</button>
									</div>
									<div class="search-input">
										<div class="s_ul">
											<ul class="search_ul">
												<li>宝贝&nbsp;<span style="font-size:8px;font-weight:700;color:#ccc;position:absolute;">∨</span></li>
												<li>天猫</li>
												<li><span class="hr"></span>店铺</li>
											</ul>
										</div>
										<span class="fangdajing" style="position:absolute;left:80px"></span>
										<input type="text" name="search-text" style="">
										<span class="zhaoxiangji"></span>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="c_cart">
				<div class="cart_bar">
					<ul class="cart_list">
						<li>
							<a href="#">
								<em style="color:#f40;">全部商品</em>
								<span>0</span>
								<span class="pipe"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<em>降价商品</em>
								<span>0</span>
								<span class="pipe"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<em>库存紧张</em>
								<span>0</span>
							</a>
						</li>
					</ul>
					<div class="cart_sum">
						<span>已选商品（不含运费）</span>
						<strong class="x_price">0.00</strong>
						<a href="#" class="jiesuan_y no_jie">结&nbsp;算</a>
					</div>
					<div class="wrap_line">
						<div class="floater"></div>
					</div>
				</div>
				<div class="cart_main">
					<div class="main_top">
						<ul class="main_left">
							<li>
								<span class="img_kuang kuang wxz quanxuan">
								</span>
								<span>全选</span>
							</li>
							<li>商品信息</li>
						</ul>
						<ul class="main_right">
							<li>单价</li>
							<li>数量</li>
							<li>金额</li>
							<li>操作</li>
						</ul>
					</div>
					<div class="main_content">
					<c:forEach var="r" items="${gouwuche_goods}">
						<div class="other1">
							<div class="other_top">
								<span class="img_kuang kuang wxz"></span>
								&nbsp;店铺：
								<a href="#">${r.storename}</a>
								<span class="img"></span>
							</div>
							<div class="other_content wxz_bg">
								<ul>
									<li>
										<span class="img_kuang kuang wxz goods"></span>
									</li>
									<li>
										<div class="deatil">
											<img src="${r.imgurl}"/>
											<div class="goods_name">
												<div class="name">${r.goodsname}</div>
											</div>
										</div>
									</li>
									<li>
										<div class="revise">
											<p>${r.detail}</p>
											<span class="xiugai">修改</span>
										</div>
									</li>
									<li>
										<div class="price_wrap">
											<div class="price">
												<em class="price_old">￥${r.priceold}</em>
											</div>
											<div class="price">
												<em class="price_new">￥${r.pricenew}</em>
											</div>
										</div>
									</li>
									<li>
										<div class="add_wrap">
											<div class="amount">
												<a href="#" class="reduce">-</a>
												<input class="seller_sum" type="text" value="${r.goods_sum}">
												<a href="#" class="add">+</a>
											</div>
										</div>
									</li>
									<li>
										<div class="sum_price_wrap">
											<em class="sum_price">￥${r.sum_price}</em>
										</div>	
									</li>
									<li>
										<div class="fn_wrap">
											<a href="#" class="in_shoucang">移入收藏夹</a>
											<a href="#" class="shan">删除</a>
										</div>
									</li>
									<input class="goodsid" type="hidden" value="${r.goodsid}">
									<input class="gouwucheid" type="hidden" value="${r.gouwucheid}">
								</ul>
							</div>
						</div>
					</c:forEach>
					</div>
					<div class="main_bottom">
						<div class="bottom_left">
							<span class="img_kuang kuang wxz quanxuan">
							</span>&nbsp;全选
						</div>
						<div class="bottom_middle">
							<a href="#">删除</a>
							<a href="#">清空失效宝贝</a>
							<a href="#">移入收藏夹</a>
							<a href="#">分享</a>
						</div>
						<div class="bottom_right">
							<div class="right_right">
								<span>已选商品</span>
								<em class="goods_sum">0</em>
								<span>件</span>
								<div></div>
							</div>
							<div class="prices_sum">
								<span>合计（不含运费）：</span>
								<strong class="z_price">0.00</strong>
							</div>
							<div class="btn_area">
								<a href="#" class="jiesuan_x no_jie">结&nbsp;算</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="fix_kuang">
			<a class="dingbu" href="#"><em>回到顶部</em></a>
			<a href="#"><em>我要反馈</em></a>
			
		</div>
		<div class="fix_shan_wrap">
			<div class="fix_shan">
				<a class="close" href="#">x</a>
				<div class="content">
					<div class="content_t">删除宝贝</div>
					<div class="content_b">确认要删除该宝贝吗？</div>
				</div>
				<div class="btns">
					<a href="#" class="tr">确定</a>
					<a href="#" class="fa">关闭</a>
				</div>
			</div>
		</div>
<div class="bottom_ul_wrap">
		<div id="sec"></div>
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
</div>
	<script src="js/gouwuche.js"></script>
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
		$(".in_shoucang").bind("click",function(){
			var other=$(this).parent().parent().parent().parent().parent(); 
			var goodsid=other.find(".goodsid").val();
			var gouwucheid=other.find(".gouwucheid").val();
			console.log(other);
			console.log(goodsid);
			$.ajax({
				type:'POST',
				url:'addShoucServlet',
				data:{
					goodsid:goodsid
				}
			});
			$.ajax({
				type:'POST',
				url:'delGouwucheServlet',
				data:{
					gouwucheid:gouwucheid
				}
			});
			$(this).text("成功移入收藏夹!");
			$(this).css("width","100px");	
			$(this).css("font-weight","400");	
			$(this).css("border","1px solid #38d3a9");	
			$(this).css("margin-left","-30px");	
			$(this).css("font-size","12px");
			setTimeout(function(){
				other.remove();
			},1000);
		});
		$(".shan").bind("click",function(){
			var other=$(this).parent().parent().parent().parent().parent();
			var gouwucheid=other.find(".gouwucheid").val(); 
			$(".tr").bind("click",function(){			
				$.ajax({
					type:'POST',
					url:'delGouwucheServlet',
					data:{
						gouwucheid:gouwucheid
					}
				});
				setTimeout(function(){
					other.remove();
				},200);
			});
		});
		$(".jiesuan_x").bind("click",function(){
			var gouwucheids="";
			$(".img_kuang").each(function(){
				if($(this).hasClass("goods")){
					if($(this).hasClass("xz")){
						var gouwucheid=$(this).parent().parent().find(".gouwucheid").val();
						if(gouwucheids==""){
							gouwucheids+=gouwucheid;
						}else{
							gouwucheids+=","+gouwucheid;
						}
					}
				}
			});
			$.ajax({
				type:'POST',
				url:'showOrderServlet',
				data:{
					gouwucheids:gouwucheids
				},
				success:function(){
					location.href="order.jsp";
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
