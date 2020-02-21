<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<% 
String username=(String)session.getAttribute("username");
String userid=(String)session.getAttribute("userid");
List<Map<String,String>> records=(List<Map<String,String>>)session.getAttribute("records");
%>
<% 
    response.setHeader("Pragma", "No-cache"); 
    response.setHeader("Cache-Control", "No-cache"); 
    response.setDateHeader("Expires", 0); 
%> 
<!DOCTYPE html>
<html>
<head>
	<title>淘宝练习</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/shouwei.css">
	<link rel="stylesheet" type="text/css" href="css/shouye.css">
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
				<li><a href="fenlei.jsp">商品分类</a></li>
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
	<div class="cup">
		<div class="cup-wrap">
			<div class="logo">
				<a href="http://www.taobao.com">
					<span class="logo-text">淘宝网</span>
				</a>
			</div>
			<div class="search">
				<div class="search-wrap">
					<div class="search-bd">
						<div class="search-tab">
							<ul class="search-nav">
								<li class="show">宝贝</li>
								<li>天猫</li>
								<li>店铺</li>
							</ul>
						</div>
						<div class="search-panel">
							<form method="post">
								<div class="search-button">
									<button type="button">搜索</button>
								</div>
								<div class="search-input">
									<span class="fangdajing"></span>
									<input type="text" name="search-text">
									<span class="zhaoxiangji"></span>
								</div>
							</form>
						</div>
					</div>
					<div class="search-fn">
						<ul class="search-code">
							<li>新款连衣裙</li>
							<li>四件套</li>
							<li style="color:#F40">潮流T恤</li>
							<li>时尚女鞋</li>
							<li>短裤</li>
							<li>半身裙</li>
							<li>男士外套</li>
							<li>墙纸</li>
							<li>行车记录仪</li>
							<li>新款男鞋</li>
							<li>耳机</li>
							<li>时尚女包</li>
							<li>沙发</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="code">
				<div class="code-wrap">
					<a class="code-kuang" href="#">
						<span class="code-text">手机淘宝</span>
						<div class="code-img">
							<img src="images/taobao-code.png" alt="">
						</div>
					</a>
					<div class="code-close">
						<span class="close">x</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="nav">
		<div class="nav-wrap">
			<h2>主题市场</h2>
			<ul class="nav-hd">
				<li class="nav-pa">天猫</li>
				<li class="nav-pa">聚划算</li>
				<li class="nav-pa">天猫超市</li>
			</ul>
			<ul class="nav-bd">
				<li>|</li>
				<li class="nav-pa">淘抢购</li>
				<li class="nav-pa">电器城</li>
				<li class="nav-pa">司法拍卖</li>
				<li class="nav-pa">中国质造</li>
				<li class="nav-pa">兴农扶贫</li>
			</ul>
			<ul class="nav-bd last">
				<li>|</li>
				<li class="nav-pa">飞猪旅行</li>
				<li class="nav-pa">智能生活</li>
				<li class="nav-pa">苏宁易购</li>
				<li class="nav-pa">云栖大会</li>
			</ul>
		</div>
	</div>
	<div class="main">
		<div class="service">
			<div class="service-wrap">
				<ul class="service-ul">
					<li>
						<a href="#">女装</a> /
						<a href="#">男装</a> /
						<a href="#">内衣</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">鞋靴</a> /
						<a href="#">箱包</a> /
						<a href="#">配件</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">童装玩具</a> /
						<a href="#">孕产</a> /
						<a href="#">用品</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">家电</a> /
						<a href="#">数码</a> /
						<a href="#">手机</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">美妆</a> /
						<a href="#">洗护</a> /
						<a href="#">保健品</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">珠宝</a> /
						<a href="#">眼镜</a> /
						<a href="#">手表</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">运动</a> /
						<a href="#">户外</a> /
						<a href="#">乐器</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">游戏</a> /
						<a href="#">动漫</a> /
						<a href="#">影视</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">美食</a> /
						<a href="#">生鲜</a> /
						<a href="#">零食</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">鲜花</a> /
						<a href="#">宠物</a> /
						<a href="#">农资</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">房产</a> /
						<a href="#">装修</a> /
						<a href="#">建材</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">家具</a> /
						<a href="#">家饰</a> /
						<a href="#">家纺</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">汽车</a> /
						<a href="#">二手车</a> /
						<a href="#">用品</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">办公</a> /
						<a href="#">DIY</a> /
						<a href="#">五金电子</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">百货</a> /
						<a href="#">餐厨</a> /
						<a href="#">家庭保健</a>
						<span class="youjiantou"></span>
					</li>
					<li>
						<a href="#">学习</a> /
						<a href="#">卡券</a> /
						<a href="#">本地服务</a>
						<span class="youjiantou"></span>
					</li>
				</ul>
			</div>
		</div>
		<div class="img">
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
			<div class="ig">
				<div class="ig_top">
					<div class="mao"></div>
					<span class="ig_top_text">理想生活上天猫</span>
					<span class="ig_top_num">1/6</span>
				</div>
				<ul class="select">
					<li class="sel"></li>
					<li class="sel"></li>
					<li class="sel"></li>
					<li class="sel"></li>
					<li class="sel"></li>
					<li class="sel"></li>
				</ul>
				<div class="ig_bottom">
					<ul class="ig_bottom_img">
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<div class="leftbut"></div>
					<div class="rightbut"></div>
				</div>
			</div>
		</div>
		<div class="middle">
			<div class="middle_top"></div>
			<h5>今日热卖</h5>
			<div class="middle_bottom"></div>
		</div>
		<div class="main-right">
			<div class="member">
				<div class="member-bd"></div>
				<div class="member-fn">
					<div class="member-fnwrap">
						<a href="#" style="width:92px;">登陆</a>
						<a href="#">注册</a>
						<a href="#">开店</a>
					</div>
				</div>
			</div>
			<a  href="#" class="inform">网上有害信息举报专区</a>
			<div class="message">
					<ul class="message-nav">
						<li>公告</li>
						<li>规则</li>
						<li>安全</li>
						<li>论坛</li>
						<li>公益</li>
					</ul>
				<div class="message-bd">
					<ul class="message-bdul">
						<li style="color:#f40">四重曝光互动新玩法！</li>
						<li style="color:#f40">卖家如何设置公益宝贝</li>
						<li>项目如何入驻公益宝贝</li>
						<li>公益宝贝卖家捐赠票据</li>
					</ul>
				</div>
			</div>
			<div class="func">
				<ul class="func_nav">
					<li class="sign">
						<span class="fn1"></span>
						<p>充话费</p>
					</li>
					<li class="sign">
						<span class="fn1"></span>
						<p>旅行</p>
					</li>
					<li class="sign">
						<span class="fn1"></span>
						<p>车险</p>
					</li>
					<li class="sign"><span class="fn1"></span>
						<p>游戏</p>
					</li>
					<li>
						<span class="fn"></span>
						<p>彩票</p>
					</li>
					<li>
						<span class="fn"></span>
						<p>电影</p>
					</li>
					<li>
						<span class="fn"></span>
						<p>酒店</p>
					</li>
					<li><span class="fn"></span>
						<p>理财</p>
					</li>
					<li>
						<span class="fn"></span>
						<p>找服务</p>
					</li>
					<li>
						<span class="fn"></span>
						<p>演出</p>
					</li>
					<li>
						<span class="fn"></span>
						<p>水电煤</p>
					</li>
					<li><span class="fn"></span>
						<p>火车票</p>
					</li>
				</ul>
				<div class="func_bd">
					<div class="bd_1">
						<ul class="bd1_ul">
							<li>充话费</li>
							<li>充流量</li>
							<li>充固话</li>
							<li>充宽带</li>
						</ul>
						<ul class="form_ul">
							<li>
								<form action="" class="form1">
									<div class="input_border">
										<input type="text" class="text" placeholder="请输入手机号码">
									</div>
									<div class="input_border">
										<input type="text" class="text" placeholder="50元">
									</div>
									<span class="form1_text1">售价￥<span class="form1_text2">49-49.8</span></span>
									<div class="form1_but">立即充值</div>
								</form>
							</li>
							<li>
								<form action="" class="form1_1">
									<div class="input_border">
										<input type="text" class="text" placeholder="请输入手机号码">
									</div>
									<div class="input_border">
										<input type="text" class="text" placeholder="全国流量">
									</div>
									<div class="input_border">
										<input type="text" class="text">
									</div>
									<span class="detail">&nbsp; 详情</span>
									<span class="form1_text1">售价￥<span class="form1_text2">49-49.8</span></span>
									<div class="form1_but">立即充值</div>
								</form>				
							</li>
							<li>
								<form action="" class="form1_2">
									<input type="radio" name="" id="b_type1">
									<label for="b_type1">电信</label>
									<input type="radio" name"" id="b_type2">
									<label for="b_type2">联通</label>
									<div class="input_border">
										<input type="text" class="text" placeholder="区号 - 号码(不支持小灵通)">
									</div>
									<div class="input_border">
										<input type="text" class="text" placeholder="50元">
									</div>
									<div class="form1_but" style="display:inline-block;margin-top:10px">立即充值</div>
									<span style="display:inline-block;" class="form1_text1">售价￥<span class="form1_text2">49-49.8</span></span>
								</form>
							</li>
							<li>
								<form action="" class="form1_3">
									<div class="input_border">
										<input type="text" class="text" placeholder="运营商/城市">
									</div>
									<div class="input_border">
										<input type="text" class="text" placeholder="请输入带宽账号">
									</div>
									<div class="input_border">
										<input type="text" class="text" placeholder="50元">
									</div>
									<div class="form1_but" style="display:inline-block;margin-top:10px">立即充值</div>
									<span style="display:inline-block;" class="form1_text1">售价￥<span class="form1_text2">49-49.8</span></span>
								</form>
							</li>
						</ul>				
					</div>
					<div class="bd_2">
						<ul class="bd2_ul">
							<li>国内机票</li>
							<li>国际机票</li>
							<li>酒店客栈</li>
							<li>度假门票</li>
							<li>火车票</li>
						</ul>
						<ul class="form2_ul">
							<li>
								<form action="" class="form2">
									<input type="radio" name="wen" class="radio" id="ne_type1" checked="checked"> 
									<label for="ne_type1" style="background:#fff">单程</label>
									<input type="radio" class="radio" name="wen" id="ne_type2"> 
									<label for="ne_type2" style="background:#fff">往返</label>
									<span class="form2_text1">港澳台请选择国际机票</span>
									<div class="form2_inputborder" style="margin-right:20px;margin-left:10px">
										<label for="j_type1">出发</label>
										<input id="j_type1" type="text" placeholder="城市">
									</div>
									<div class="form2_inputborder">
										<label for="j_type2">到达</label>
										<input id="j_type2" type="text" placeholder="城市">
									</div>
									<div class="form2_inputborder" style="margin-left:10px;margin-top:0px">
										<label for="j_type3">出发</label>
										<input id="j_type3" type="text" placeholder="日期">
									</div>
									<div class="form2_but">查找</div>
								</form>
							</li>
							<li>
								<form action="" class="form2">
									<input type="radio" name="wen" class="radio" id="ne_type1" checked="checked"> 
									<label for="ne_type1" style="background:#fff">单程</label>
									<input type="radio" class="radio" name="wen" id="ne_type2"> 
									<label for="ne_type2" style="background:#fff">往返</label>
									<span class="form2_text1"></span>
									<div class="form2_inputborder" style="margin-right:20px;margin-left:10px">
										<label for="j_type1">出发</label>
										<input id="j_type1" type="text" placeholder="城市">
									</div>
									<div class="form2_inputborder">
										<label for="j_type2">到达</label>
										<input id="j_type2" type="text" placeholder="城市">
									</div>
									<div class="form2_inputborder" style="margin-left:10px;margin-top:0px">
										<label for="j_type3">出发</label>
										<input id="j_type3" type="text" placeholder="日期">
									</div>
									<div class="form2_but">查找</div>
								</form>
							</li>
							<li>
								<form action="" class="form2">
									<input type="radio" name="wen" class="radio" id="ne_type1" checked="checked"> 
									<label for="ne_type1" style="background:#fff;width:80px">国内/港澳台</label>
									<input type="radio" class="radio" name="wen" id="ne_type2"> 
									<label for="ne_type2" style="background:#fff">海外</label>
									<span class="form2_text1"></span>
									<div class="form2_inputborder" style="margin-right:20px;margin-left:10px">
										<label for="j_type1">出发</label>
										<input id="j_type1" type="text" placeholder="城市">
									</div>
									<div class="form2_inputborder">
										<label for="j_type2">到达</label>
										<input id="j_type2" type="text" placeholder="城市">
									</div>
									<div class="form2_inputborder" style="margin-left:10px;margin-top:0px">
										<label for="j_type3">出发</label>
										<input id="j_type3" type="text" placeholder="日期">
									</div>
									<div class="form2_inputborder" style="margin-left:20px;margin-top:0">
										<label for="j_type2">离店</label>
										<input id="j_type2" type="text" placeholder="2018-10-22">
									</div>
									<div class="form2_but">搜索</div>
									<span class="form2_text3">五星级酒店低价住</span>
								</form>
							</li>
							<li>
								<form action="" class="form2">
									<input type="radio" name="wen" class="radio" id="ne_type1" checked="checked"> 
									<label for="ne_type1" style="background:#fff;" checked="checked">度假</label>
									<input type="radio" class="radio" name="wen" id="ne_type2"> 
									<label for="ne_type2" style="background:#fff">门票</label>
									<span class="form2_text1"></span>
									<div class="form2_inputborder" style="margin-right:20px;margin-left:10px">
										<label for="j_type1">出发</label>
										<input id="j_type1" type="text" placeholder="城市">
									</div>
									<div class="form2_inputborder">
										<label for="j_type2">到达</label>
										<input id="j_type2" type="text" placeholder="城市/景点">
									</div>
									<div class="form2_but" style="margin-top:40px">搜索</div>
									<span class="form2_text3" style="right:25px;top:72px">看这里，机票团购价，旅行更划算</span>
								</form>
							</li>
							<li>
								<form action="" class="form2">
									<div class="form2_inputborder" style="margin-right:20px;margin-left:10px;">
										<label for="j_type1">出发</label>
										<input id="j_type1" type="text" placeholder="城市">
									</div>
									<div class="form2_inputborder">
										<label for="j_type2">到达</label>
										<input id="j_type2" type="text" placeholder="城市">
									</div>
									<div class="form2_inputborder" style="margin-left:10px;margin-top:0px">
										<label for="j_type3">出发</label>
										<input id="j_type3" type="text" placeholder="日期">
									</div>
									<div class="form2_but" style="position:absolute;">查找</div>
								</form>
							</li>
						</ul>

					</div>
					<div class="bd_3">
						<ul class="bd3_ul">
							<li>车险</li>
							<li>意外险</li>
							<li>健康险</li>
							<li>旅行险</li>
							<li>财产险</li>
						</ul>
						<ul class="form3_ul">
							<li>
								<form action="" class="form3">
									<div class="form3_inputborder">
										<label for="a_type1">热门城市</label>
										<input type="text" id="a_type1" placeholder="请选择城市">
									</div>	
									<div class="form3_inputborder">
										<label for="a_type2">保险公司</label>
										<input type="text" id="a_type2" placeholder="人保车险">
									</div>
									<div class="form3_but1">立刻报价</div>
									<div class="form3_but2">快速续保</div>
									<span class="form3_text1">车险活动</span>
								</form>
							</li>
							<li>
								<form action="" class="form3">
									<div class="form3_inputborder">
										<label for="a_type1">保险类型</label>
										<input type="text" id="a_type1" placeholder="航空意外">
									</div>	
									<div class="form3_inputborder">
										<label for="a_type2">保险期间</label>
										<input type="text" id="a_type2" placeholder="一年以内">
									</div>
									<div class="form3_but1" style="width:100px">查看合适的保险</div>
								</form>
							</li>
							<li>
								<form action="" class="form3">
									<div class="form3_inputborder">
										<label for="a_type1">保险类型</label>
										<input type="text" id="a_type1" placeholder="重大疾病">
									</div>	
									<div class="form3_inputborder">
										<label for="a_type2">特色保障</label>
										<input type="text" id="a_type2" placeholder="可保证续保">
									</div>
									<div class="form3_but1" style="width:100px">查看合适的保险</div>
									<span class="form3_text3">最全人寿险</span>
								</form>
							</li>
							<li>
								<form action="" class="form3">
									<div class="form3_inputborder">
										<label for="a_type1">出现地区</label>
										<input type="text" id="a_type1" placeholder="境内">
									</div>	
									<div class="form3_inputborder">
										<label for="a_type2">出行天数</label>
										<input type="text" id="a_type2" placeholder="7天及以下">
									</div>
									<div class="form3_but1" style="width:100px">查看合适的保险</div>
								</form>
							</li>
							<li>
								<form action="" class="form3">
									<div class="form3_inputborder">
										<label for="a_type1">特色保障</label>
										<input type="text" id="a_type1" placeholder="水管爆裂">
									</div>
									<div class="form3_but1" style="width:100px">查看合适的保险</div>
								</form>
							</li>
						</ul>
						
					</div>
					<span class="but1">×</span>
				</div>
			</div>
			<div class="app">
				<h3>阿里APP <span class="more">更多 ></span></h3>
				<ul class="app_ul">
					<li>
						<img src="images/app1.jpg" alt="">
					</li>
					<li>
						<img src="images/app2.jpg" alt="">
					</li>
					<li>
						<img src="images/app3.jpg" alt="">
					</li>
					<li>
						<img src="images/app4.jpg" alt="">
					</li>
					<li>
						<img src="images/app5.jpg" alt="">
					</li>
					<li>
						<img src="images/app6.jpg" alt="">
					</li>
					<li>
						<img src="images/app7.jpg" alt="">
					</li>
					<li>
						<img src="images/app8.jpg" alt="">
					</li>
					<li>
						<img src="images/app9.jpg" alt="">
					</li>
					<li>
						<img src="images/app10.jpg" alt="">
					</li>
				</ul>
			</div>
		</div>
		<div class="toutiao_wrap">
			<div class="toutiao">
				<div class="toutiao_list">
					<div class="toutiao_img"></div>
					<div class="toutiao_inf">
						<ul class="toutiao_ul">
							<li>
								<img src="images/toutiao1.jpg" alt="">
								<h4>最小摩托骑手3岁半 40度高温学摩托</h4>
								<p>北京的夏天骄阳似火，室外地表温度逾60度。朝阳区壹号库的汽车艺术园区内，7、8名小摩托车手在教练的陪同下，全副武装练习。</p>
							</li>
							<li>
								<img src="images/toutiao2.jpg" alt="">
								<h4>汽车开上床 天猫美家“最牛”标准长这样</h4>
								<p>天猫美家发布优品品质标准</p>
							</li>
							<li>
								<img src="images/toutiao3.jpg" alt="">
								<h4>60岁阿姨相亲靠购物车脱单，开心就好</h4>
								<p>现场60岁阿姨和54岁大叔通过彼此购物车清单，了解到对方喜欢游泳和健身便走到了一起。直言他健身我游泳有共同爱好就好，谢霆锋和王菲相差十多岁都没关系，做朋友又不是为了钱为了房，两个人志同道合、开心就好。</p>
							</li>
						</ul>
						<span class="more">更多 ></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="fix_search">
		<div class="search_h">
			<div class="search_img"></div>
			<div class="search_border">
			  <div class="search-panel">
					<form method="post">
						<div class="search-button">
							<button >搜索</button>
						</div>
						<div class="search-input" style="overflow: visible;">
							<div class="s_ul">
								<ul class="search_ul">
									<li style="background:url('images/xiabiao.png') no-repeat;background-position:60px 9px">宝贝</li>
									<li>天猫</li>
									<li><span class="hr"></span>店铺</li>
								</ul>
							</div>
							<span class="fangdajing" style="position:absolute;left:80px"></span>
							<input type="text" name="search-text" style="text-indent:3em">
							<span class="zhaoxiangji"></span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
		<div class="clearfix_wrap">
		<div class="clearfix">
			<h3>
				<img src="images/sh.png" alt="">
				<span>发现属于你的生活方式</span>
			</h3>
			<ul class="live_ul">
				<li>
					<a href="#">
						<div class="wrap_img">
							<img src="images/sh1.jpg" alt="">
						</div>
						<div class="right">
							<h4>就是爱乐人</h4>
							<p>我就是爱音乐</p>
							<p>
								<img src="images/love.png" alt="">
								人气6656
							</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="wrap_img">
							<img src="images/sh2.jpg" alt="">
						</div>
						<div class="right">
							<h4>月子女王</h4>
							<p>对自己好一点</p>
							<p>
								<img src="images/love.png" alt="">
								人气13879
							</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="wrap_img">
							<img src="images/sh3.jpg" alt="">
						</div>
						<div class="right">
							<h4>灵魂冲浪手</h4>
							<p>冲上去浪起来</p>
							<p>
								<img src="images/love.png" alt="">
								人气278
							</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="wrap_img">
							<img src="images/sh4.jpg" alt="">
						</div>
						<div class="right">
							<h4>宝宝营养师</h4>
							<p>养娃必备知识</p>
							<p>
								<img src="images/love.png" alt="">
								人气2929
							</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="wrap_img">
							<img src="images/sh5.jpg" alt="">
						</div>
						<div class="right">
							<h4>家有小学生</h4>
							<p>别人家的孩子</p>
							<p>
								<img src="images/love.png" alt="">
								人气13088
							</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="wrap_img">
							<img src="images/sh6.jpg" alt="">
						</div>
						<div class="right">
							<h4>清洁收纳控</h4>
							<p>吹毛求疵没错</p>
							<p>
								<img src="images/love.png" alt="">
								人气10154
							</p>
						</div>
					</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="sale">
		<h3>热卖单品</h3>
		<div class="sale_list">
			<ul class="ul_list"></ul>
		</div>
	</div>
	<div class="helper_top">END</div>
	<div class="helper">
		<div class="mod_wrap">
			<div class="mod">
				<h4>
					<span class="img"></span>
					<span>消费者保障</span>
				</h4>
				<ul>
					<li>保障范围</li>
					<li>退货退款流程</li>
					<li>服务中心</li>
					<li>更多特色服务</li>
				</ul>
			</div>
		</div>
		<div class="mod_wrap">
			<div class="mod">
				<h4>
					<span class="img"></span>
					<span>新手上路</span>
				</h4>
				<ul>
					<li>新手专区</li>
					<li>消费警示</li>
					<li>交易安全</li>
					<li>24小时在线帮助</li>
					<li>免费开店</li>
				</ul>
			</div>
		</div>
		<div class="mod_wrap">
			<div class="mod">
				<h4>
					<span class="img"></span>
					<span>付款方式</span>
				</h4>
				<ul>
					<li>快捷支付</li>
					<li>信用卡</li>
					<li>余额宝</li>
					<li>蚂蚁花呗</li>
					<li>货到付款</li>
				</ul>
			</div>			
		</div>
		<div class="mod_wrap">
			<div class="mod">
				<h4>
					<span class="img"></span>
					<span>淘宝特色</span>
				</h4>
				<ul>
					<li>手机淘宝</li>
					<li>旺旺/旺信</li>
					<li>大众评审</li>
				</ul>	
			</div>		
		</div>
	</div>
	<div class="fixedtool">
		<a href="javascript:void(0)">爱逛<br>好货</a>
		<a href="javascript:void(0)">好店<br>直播</a>
		<a href="javascript:void(0)">品质<br>特色</a>
		<a href="javascript:void(0)">实惠<br>热卖</a>
		<a href="javascript:void(0)">猜你<br>喜欢</a>
		<a href="#">∧<br>顶部</a>
		<a href="javascript:void(0)">反馈</a>
		<a href="javascript:void(0)#">暴恐<br>举报</a>
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
	<script type="text/javascript" src="js/shouye.js"></script>
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
			var records="<%=records%>";
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
				/*  console.log(records_obj);  */
			}
			var sale_li="";
			for(var i=0;i<5;i++){
				var ix="i"+i; 
				var saleEvery="<li><a class='sale_img'><img src='"+records_obj[ix]["imgurl"]+"'></a><a class='sale_name'><span>"+records_obj[ix]["goodsname"]+"</span></a><div class='line_2'><a>收藏<em>"+records_obj[ix]["shoucang"]+"</em></a></div><div class='line_3'><a class='new'><span>￥</span><em>"+parseInt(records_obj[ix]["pricenew"])+"</em></a><a class='old'><span>￥</span><em>"+parseInt(records_obj[ix]["priceold"])+"</em></a><a class='salesum'>月销<em>"+records_obj[ix]["salesum"]+"</em>笔</a></div><input type='hidden' value='"+records_obj[ix]["goodsid"]+"'></li>";
				sale_li+=saleEvery;
				ul_list.innerHTML=""+sale_li;
			}
			var search_nav=$(".search-nav");
			var sh_input=$(".search-input input");
			var btn=$(".search-button button");
			console.log(btn);
			var inputtext="宝贝";
			btn.bind("click",function(){
				$.ajax({
					type:'POST',
					url:'searchSaleServlet',
					data:{
						inputval:$.trim(sh_input.val()),
						inputtext:inputtext
					},
					success:function(data){
						if($.trim(data)=="1"){
							location.href="shouyeSearch.jsp";
						}
					}
				});
			});
			search_nav.bind("click",function(event){
				var event=event||window.event;
				var target=event.target||event.srcElement;
				inputtext=target.innerHTML;
				btn.bind("click",function(){
					$.ajax({
						type:'POST',
						url:'searchSaleServlet',
						data:{
							inputval:$.trim(sh_input.val()),
							inputtext:inputtext
						},
						success:function(data){
							if($.trim(data)=="1"){
								location.href="shouyeSearch.jsp";
							}
						}
					});
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
			var ul_list_li=ul_list.getElementsByTagName("li");
			var goodsid="";
			var time="";
			var today=new Date();
			for(var i=0;i<ul_list_li.length;i++){
				ul_list_li[i].addEventListener("click",function(){
					var month=today.getMonth()+1;
					var date=today.getDate();
					time=""+month+"."+date;
					goodsid=this.getElementsByTagName("input")[0].value;
					$.ajax({
 					type:'POST',
 					url:'myFootSaleServlet',
 					data:{
 						goodsid:goodsid,
 						time:time
 					}
 				});
				},false);
			}
			for(var i=0;i<ul_list_li.length;i++){
				ul_list_li[i].addEventListener("click",function(){
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
				},false);
			}
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
			var userid='<%=userid%>';
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
