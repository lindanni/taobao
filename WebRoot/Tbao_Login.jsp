<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>登录</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/denglu.css">
</head>
<body>
	<div class="page">
		<div class="header">
			<div class="logo_wrap">
				<div class="logo"></div>
			</div>
		</div>
		<div class="content">
			<div class="content_layout">
				<div class="logo_box_wrap">
					<div class="logo_box">
						<div class="logo_title">密码登录</div>
						<form id="form1">
							<div class="error">
								<i></i>
								<p>你输入的密码和账户名不匹配</p>
							</div>
							<div class="username">
								<label for="user"></label>
								<span class="text">会员名/邮箱/手机账号</span>
								<input type="text" name="username_submit" id="user" class="user_kuang">
							</div>
							<div class="password">
								<label for="pass"></label>
								<span><input type="password" id="pass" name="password_submit" class="password_kuang"></span>
							</div>
							<div class="submit-wrap">
								<button type="button" id="sub_btn">登录</button>
							</div>
							<ul>
								<li>
									<a href="#"><span></span>微博登录</a>
									<a href="#"><span></span>支付宝登录</a>
								</li>
							</ul>
							<div class="logo_links">
								<a href="#">忘记密码</a>
								<a href="#">忘记会员名</a>
								<a href="#" class="zhuce_btn">免费注册</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom">
		<div class="bottom_hd">
			<p>
				<a href="#">阿里巴巴集团</a>
				<b>|</b>
				<a href="#">阿里巴巴国际站</a>
				<b>|</b>
				<a href="#">阿里巴巴中国站</a>
				<b>|</b>
				<a href="#">全球速卖通</a>
				<b>|</b>
				<a href="#">淘宝网</a>
				<b>|</b>
				<a href="#">天猫</a>
				<b>|</b>
				<a href="#">聚划算</a>
				<b>|</b>
				<a href="#">一淘</a>
				<b>|</b>
				<a href="#">阿里妈妈</a>
				<b>|</b>
				<a href="#">飞猪</a>
				<b>|</b>
				<a href="#">虾米</a>
				<b>|</b>
				<a href="#">阿里云计算</a>
				<b>|</b>
				<a href="#">云OS</a>
				<b>|</b>
				<a href="#">万网</a>
				<b>|</b>
				<a href="#">支付宝</a>
				<b>|</b>
				<a href="#">来往</a>
			</p>
		</div>
		<div class="bottom_bd">
			<p>
				<a href="#">关于淘宝</a>
				<a href="#">合作伙伴</a>
				<a href="#">营销中心</a>
				<a href="#">廉正举报</a>
				<a href="#">联系客服</a>
				<a href="#">开放平台</a>
				<a href="#">诚征英才</a>
				<a href="#">联系我们</a>
				<a href="#">网站地图</a>
				<a href="#">法律声明及隐私权政策</a>
				<em>© 2018 Taobao.com 版权所有</em>
			</p>
			<p>
				<span>网络文化经营许可证：浙网文[2016]0132-032号</span>
				<b>|</b>
				<span>增值电信业务经营许可证：浙B2-20080224-1</span>
				<b>|</b>
				<span>信息网络传播视听节目许可证：1109364号</span>
			</p>
		</div>
	</div>
	<script src="js/denglu.js"></script>
	<script src="js/jquery.js"></script>
	<script>
		$(function(){
			$("#sub_btn").bind("click",function(){
				var username=$("#user");
				var password=$("#pass");
				$.ajax({
					type:'POST',
					url:'Login_do.jsp',
					data:{
						username:$.trim(username.val()),
						password:$.trim(password.val()),	
					},
					success:function(data){
						if($.trim(data)!="0"){
							$("#user").val("");
							$("#pass").val("");
							if($.trim(data)!="0"&& $.trim(data)!="1"){
								if($.trim(data)=="2"){
									location.href="admin.jsp";
								}else{
									$.ajax({
										type:'POST',
										url:'showSaleServlet',
										data:{
											dian_name:$.trim(data)
										},
										success:function(){
											location.href="sale.jsp";
										}
									});
								}
							}else if($.trim(data)=="1"){
								$.ajax({
									type:'POST',
									url:'shouyeSaleServlet',
									success: function() {
										location.href="shouye.jsp";
									}
								});
							}else if($.trim(data)=="2"){
								location.href="admin.jsp";
							}						
						}else if($.trim(data)=="0"){
							$(".error").css("display","block");
						}
					},
				});
			});	
			$(".zhuce_btn").bind("click",function(){
				window.location.href="zhuce.jsp";
			});
		});
	</script>
</body>
</html>
