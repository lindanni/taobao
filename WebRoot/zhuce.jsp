<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>注册</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/zhuce.css">
	
</head>
<body>
	<div class="page">
		<div class="header">
			<div class="logo"></div>
		</div>
		<div class="content">
			<form action="">
				<div class="user">
					<label for="username">用户名</label>
					<input type="text" id="username" name="username">
					<span>用户名不能为空</span>
				</div>
				<div class="pass">
					<label for="password">密码</label>
					<input type="text" id="password" name="password">
					<span>密码不能为空</span>
				</div>
				<div class="zhuce_kuang">
					<button type="button">注册</button>
				</div>
				<div class="msg">
					<span>注册成功</span>
				</div>
			</form>
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
	<script src="js/jquery.js"></script>
	<script>
		$(function(){
			$("button").bind("click",function(){
				var username=$("#username");
				if($.trim(username.val()).length==0){
					$(".user span").css("display","block");
				}else{
					$(".user span").css("display","none");
				}
				var password=$("#password");
				if($.trim(password.val()).length==0){
					$(".pass span").css("display","block");
				}else{
					$(".pass span").css("display","none");
				}
				$.ajax({
					type:'POST',
					url:'zhuce_do.jsp',
					data:{
						username:$.trim(username.val()),
						password:$.trim(password.val())
					},
					success:function(data){
						if($.trim(data)==1){
							$(".msg span").css("display","block");
						}else{
							$(".msg span").css("display","none");
						}
					}
				});
			});
		});
	</script>
</body>
</html>