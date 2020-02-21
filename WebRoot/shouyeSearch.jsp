<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<% 
	List<Map<String,String>> search_records=(List<Map<String,String>>)session.getAttribute("search_records");
	String inputval=(String)session.getAttribute("inputval");
	String username=(String)session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
	<title>淘宝搜索页面</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/shouwei.css">
	<link rel="stylesheet" href="css/shouyeSearch.css">
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
	<div class="content_wrap">
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
										<button type="button">搜索</button>
									</div>
									<div class="search-input">
										<div class="s_ul">
											<ul class="search_ul">
												<li>宝贝&nbsp;<span style="font-size:8px;font-weight:700;color:#ccc;position:absolute;">∨</span></li>
												<li><span class="hr"></span>店铺</li>
											</ul>
										</div>
										<span class="fangdajing" style="position:absolute;left:80px"></span>
										<input type="text" name="search-text" value="<%=inputval%>">
										<span class="zhaoxiangji"></span>
									</div>
								</form>
							</div>
						</div>
					</div>
			</div>
		</div>
		<div class="nav">
			<div class="baby">
				<span>所有宝贝</span>
			</div>
		</div>
		<div class="sale">
			<div class="sale_list">
				<ul class="ul_list"></ul>
			</div>
		</div>
	</div>
	<script src="js/shouyeSearch.js"></script>
	<script type="text/javascript">
		var search_records="<%=search_records%>";
		var sale_li="";
		search_records=search_records.replace("[","");
		search_records=search_records.replace("]","");
		search_records=search_records.split(", {"); 
		var records_obj={}; 
		 for(var i=0;i<search_records.length;i++){
			search_records[i]=search_records[i].replace("{","");
			search_records[i]=search_records[i].replace("}",""); 
			search_records[i]=search_records[i].split(", ");
			records_obj["i"+i]={};
			for(var j=0;j<search_records[i].length;j++){
				var temp=[];
				temp=search_records[i][j].split("="); 
				records_obj["i"+i][temp[0]]=temp[1]; 
			} 
		  }
			for(var i=0;i<search_records.length;i++){
				var ix="i"+i; 
				var saleEvery="<li><a class='sale_img'><img src='"+records_obj[ix]["imgurl"]+"'></a><div class='line_3'><a class='old'><span>￥</span><em>"+parseInt(records_obj[ix]["pricenew"])+"</em></a><a class='salesum'><em>"+records_obj[ix]["salesum"]+"</em>付款</a></div><a class='sale_name'><span>"+records_obj[ix]["goodsname"]+"</span></a><div class='line_2'><img src='images/san.png'><a class='dian_name'>"+records_obj[ix]["storename"]+"</a><a class='shoucang'>收藏<em>"+records_obj[ix]["shoucang"]+"</em></a></div><input type='hidden' value='"+records_obj[ix]["goodsid"]+"'></li>";
				sale_li+=saleEvery;
				ul_list.innerHTML=""+sale_li;
			}
	</script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script>
		$(function(){
			var username="<%=username%>";
			if(username.length!=0){
				$(".text_span").css("display","none");
				$(".text_span1").css("color","#6c6c6c");
			}else{
				$(".text_span").css("display","block");
			}
			var search_ul=$(".search-ul");
			var sh_input=$(".search-input input");
			var btn=$(".search-button button");
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
			search_ul.bind("click",function(event){
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
		});
	</script>
</body>
</html>