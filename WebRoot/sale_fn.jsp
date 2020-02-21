<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>店铺功能页</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/shouwei.css">
	<link rel="stylesheet" href="css/sale_fn.css">
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
				<li><a href="#" style="color:#f22e00;">亲，请登陆</a></li>
				<li><a href="#">免费注册</a></li>
				<li><a href="#">手机逛淘宝</a></li>
			</ul>
			<ul class="right">
				<li>
					<a href="#">店铺功能</a>
				</li>
				<li>
					<div class="mytaobao">
						<a href="#" style="color:#6C6C6C" class="sale_btn">店铺首页</a>
					</div>
				</li>	
			</ul>
		</div>
	</div>
	<div class="content_wrap">
		<div class="content">
			<div class="logo">
				<img src="images/taobao-logo.png" alt="">
			</div>
			<div class="goods_up_wrap">
				<div class="goods_up" style="padding:10px;background:#f4f4f4">
					<h2>宝贝上传</h2>
					<form action="upImgServlet" id="form1"  name="form1" method="post" enctype="multipart/form-data">
						<table border="0" cellpadding="0" cellspacing="0">
							<tr >
								<td class="title" style="width:80px">商品名称：</td>
								<td>
									<a href="" class="goods_name">
										<input type="text" id="goodsname" name="goodsname">
									</a>	
								</td>
								<td class="title" style="width:80px">商品原价：</td>
								<td>
									<a href="" class="price_old">
										<input type="text" id="priceold" name="priceold">
									</a>
								</td>
								<td class="title" style="width:100px">商品折扣价：</td>
								<td>
									<a href="" class="price_new">
										<input type="text" id="pricenew" name="pricenew">
									</a>
								</td>
								<td class="title" style="width:80px">商品类别：</td>
								<td>
									<select id="goodsclassid" name="goodsclassid" style="border-radius:4px">
										<c:forEach items="${goodsclassname}" var="c">
									        <option value="${c.goodsclassname}" >${c.goodsclassname}</option>
									    </c:forEach>
									</select>   
								</td>
							</tr>
							<tr style="margin-top:30px">
								<td class="title" style="width:80px">商品图片：</td>
								<td style="width:120px">
									<a href="javascript:void(0)" class="imgurl">上传商品图片
										<input type="file" name="imgurl" class="file" id="imgurl">
										<input type="hidden" class="filepath" class="imgurl_l" value="${imgurl}" id="imgurl_save">
									</a>
								</td>
								<td class="title" style="padding-left:0px;width:100px">商品详情图：</td>
								<td colspan="4" style="width:550px">
									<a href="javascript:void(0)" class="detail_img">
										商品详情图1
										<input type="file" id="imgl" name="img1" class="file">
										<input type="hidden"  class="img_list" value="${img1 }" id="img1_save">
									</a>
									<a href="javascript:void(0)" class="detail_img">
										商品详情图2
										<input type="file" id="img2" name="img2" class="file">
										<input type="hidden" class="img_list" value="${img2 }" id="img2_save">
									</a>
								
								
									<a href="javascript:void(0)" class="detail_img">
										商品详情图3
										<input type="file" id="img3" name="img3" class="file">
										<input type="hidden" class="img_list" value="${img3 }" id="img3_save">
									</a>
									<a href="javascript:void(0)" class="detail_img">
										商品详情图4
										<input type="file" id="img4" name="img4" class="file">
										<input type="hidden" class="img_list" value="${img4 }" id="img4_save">
									</a>
								
								
									<a href="javascript:void(0)" class="detail_img">
										商品详情图5
										<input type="file" id="img5" name="img5" class="file">
										<input type="hidden" class="img_list" value="${img5 }" id="img5_save"> 
									</a>
								</td>
							</tr>
							<tr style="margin-top:30px">
								<td style="margin-left:20px; width:210px">
									<img src="${imgurl }" alt="" class="imgx">
								</td>
								<td colspan="4" style="width:600px">
									<img src="${img1 }" alt="" class="imgx">
									<img src="${img2 }" alt="" class="imgx">
									<img src="${img3 }" alt="" class="imgx">
									<img src="${img4 }" alt="" class="imgx">
									<img src="${img5 }" alt="" class="imgx">
									
								</td>
							</tr>
							<tr style="margin-top:30px">
								<td colspan="6">
									<button type="button" class="up_btn" style="width:80px;height:30px;line-height:30px;background:#3c3c3c;color:#fff;font-size:12px;float:left">上传</button>
									<button type="button" class="save_btn" style="width:80px;height:30px;line-height:30px;background:#3c3c3c;color:#fff;font-size:12px;float:left">保存</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="goods_down_wrap">
				<div class="goods_down">
					<div class="main">
						<div class="top">
							<h2>商品下架</h2>
							<div class="nav">
								<ul>
									<li>店铺宝贝</li>
									<li>商品价格</li>
									<li>收藏量</li>
									<li>销量</li>
									<li>操作</li>
								</ul>
							</div>
						</div>
						<div class="middle">
						<c:forEach var="r" items="${down_goods}">
							<div class="other1">
								<div class="other_content wxz_bg">
									<ul class="goods_ul">
										<li>
											<span class="img_kuang kuang wxz goods"></span>
										</li>
										<li>
											<div class="deatil">
												<img src="${r.imgurl}"/>
												<div class="goods_name">
													<div class="name">${r.goodsname }</div>
												</div>
											</div>
										</li>
										<li>
											<div class="revise">
												<p>${r.pricenew }</p>
											</div>
										</li>
										<li>
											<div class="price_wrap">
												<div class="price">
													<em class="price_new">${r.shoucang }</em>
												</div>
											</div>
										</li>
										<li>
											<div class="seller_sum">${sale_sum}</div>
										</li>
										<li>
											<div class="down_goods">下架
												<input type="hidden" value="${r.goodsid }">
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
			<div class="order_send_wrap">
				<div class="order_send">
					<div class="main">
						<div class="top">
							<h2>订单发货</h2>
							<div class="nav">
								<ul>
									<li>店铺宝贝</li>
									<li>商品属性</li>
									<li style="width:120px">单价</li>
									<li style="width:120px">数量</li>
									<li style="width:120px">买家昵称</li>
									<li style="width:120px">操作</li>
								</ul>
							</div>
						</div>
						<div class="middle">
						<c:forEach var="r" items="${order_send}">
							<div class="other1">
								<div class="other_content wxz_bg">
									<ul class="goods_ul">
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
											<div >${r.username}</div>
										</li>
										<li style="width:120px">
											<div class="order_send_btn">发货
												<input type="hidden" value="${r.orderxid }">
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
			<div class="order_back_wrap">
				<div class="order_back">
					<div class="main">
						<div class="top">
							<h2>订单退款</h2>
							<div class="nav">
								<ul>
									<li>店铺宝贝</li>
									<li>商品属性</li>
									<li style="width:120px">单价</li>
									<li style="width:120px">数量</li>
									<li style="width:120px">买家昵称</li>
									<li style="width:120px">操作</li>
								</ul>
							</div>
						</div>
						<div class="middle">
						<c:forEach var="r" items="${order_back}">
							<div class="other1">
								<div class="other_content wxz_bg">
									<ul class="goods_ul">
										<li>
											<span class="img_kuang kuang wxz goods"></span>
										</li>
										<li>
											<div class="deatil">
												<img src="${r.imgurl }"/>
												<div class="goods_name">
													<div class="name">${r.goodsname}</div>
												</div>
											</div>
										</li>
										<li>
											<div class="revise">
												<p>${r.detail }</p>
											</div>
										</li>
										<li style="width:120px">
											<div class="price_wrap">
												<div class="price">
													<em class="price_new">${r.pricenew }</em>
												</div>
											</div>
										</li>
										<li style="width:120px">
											<div class="seller_sum">${r.goods_sum }</div>
										</li>
										<li style="width:120px">
											<div>${r.username }</div>
										</li>
										<li style="width:120px">
											<div class="back_mon">退款
												<input type="hidden" value="${r.orderxid }">
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
		</div>
	</div>
	<div id="bottom" style="margin-top:50px">
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
	<script type="text/javascript" src="js/sale_fn.js"></script>
	<script src="js/jquery.js"></script>	
	<script>
		$(function(){
			$(".down_goods").bind("click",function(){
				var goodsid=$(this).find("input").val();
				var other=$(this).parent().parent().parent().parent();
				$.ajax({
					type:'POST',
					url:'delGoodsServlet',
					data:{
						goodsid:goodsid
					},
					success:function(data){
						if($.trim(data)=="1"){
							other.remove();
						}
					}
				});
			});
			$(".order_send_btn").bind("click",function(){
				var orderxid=$(this).find("input").val();
				var other=$(this).parent().parent().parent().parent();
				$.ajax({
					type:'POST',
					url:'orderSendServlet',
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
			$(".back_mon").bind("click",function(){
				var orderxid=$(this).find("input").val();
				var other=$(this).parent().parent().parent().parent();
				$.ajax({
					type:'POST',
					url:'orderBackServlet',
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
			  $(".up_btn").bind("click",function(){
			  	var flags=true;
			  	$(".file").each(function(){
			  		if($(this).val()==null||$(this).val()==""){
			  			flags=false;
			  		}
			  	});
			  	if(flags){
			  		$("#form1").submit();
			  	}else{
			  		alert("请上传完一张商品图，和五张完整的详细图！！");
			  	}
			  });
			   $(".save_btn").bind("click",function(){
			   		if($("#goodsname").val()==""||$("#goodsname").val()==null){
			   			alert("商品名为空");
			   			return;
			   		}
			   		if($("#priceold").val()==""||$("#priceold").val()==null){
			   			alert("商品原价为空");
			   			return;
			   		}
			   		if($("#pricenew").val()==""||$("#pricenew").val()==null){
			   			alert("商品折扣价为空");
			   			return;
			   		}
			   		if($("#imgurl_save").val()==""||$("#imgurl_save").val()==null){
			   			alert("商品图片为空,请先上传商品");
			   			return;
			   		}
			   		if($("#img1_save").val()==""||$("#img1_save").val()==null){
			   			alert("商品详情图1为空,请先上传商品");
			   			return;
			   		}
			   		if($("#img2_save").val()==""||$("#img2_save").val()==null){
			   			alert("商品详情图2为空,请先上传商品");
			   			return;
			   		}
			   		if($("#img3_save").val()==""||$("#img3_save").val()==null){
			   			alert("商品详情图3为空,请先上传商品");
			   			return;
			   		}
			   		if($("#img4_save").val()==""||$("#img4_save").val()==null){
			   			alert("商品详情图4为空,请先上传商品");
			   			return;
			   		}
			   		if($("#img5_save").val()==""||$("#img5_save").val()==null){
			   			alert("商品详情图5为空,请先上传商品");
			   			return;
			   		}
			   		var img_list="";
			   		$(".img_list").each(function(){
			   			img_list+=$(this).val()+" ";
			   		});
			   		$.ajax({
			   			type:'POST',
			   			url:'saveGoodsServlet',
			   			data:{
			   				goodsname:$("#goodsname").val(),
			   				priceold:$("#priceold").val(),
			   				pricenew:$("#pricenew").val(),
			   				imgurl:$("#imgurl_save").val(),
			   				img_list:img_list,
			   				goodsclassid:$("#goodsclassid").val()
			   			},
			   			success:function(data){
			   				if($.trim(data)=="1"){
			   					alert("商品保存上传成功！！");
			   				}	
			   			}
			   		});
			   });	
			   var dian_name='${storenamel}';
			   $(".sale_btn").bind("click",function(){
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
	      });
	</script>	
</body>
</html>
