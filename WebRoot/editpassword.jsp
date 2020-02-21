<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String password=(String)session.getAttribute("password"); %>
<!DOCTYPE html>
<html>
<head>
	<title>注册</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/zhuce.css">
	
</head>
<body>
	<div class="page">
		<div class="header" style="font-size:20px;color:#333;">
			修改密码
		</div>
		<div class="content">
			<form action="">
				<div class="name">
					<label for="oldpassword">原先密码</label>
					<input type="text" id="oldpassword" name="oldpassword"/>
				</div>	
				<div class="new">
					<label for="newpassword">新密码</label>
					<input type="text" id="newpassword" name="newpassword"/>
				</div>
				<div class="old">
					<label for="confirmpassword">确认密码</label>
					<input type="text" id="confirmpassword" name="confirmpassword"/>
				</div>
				<div class="zhuce_kuang">
					<input type="hidden" value="" class="goodsid"/>
					<button type="button" class="savebtn">保存</button>
					<button type="button" class="backbtn">退出</button>
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
	$('.savebtn').on('click',function(){
		if($('#oldpassword').val()==""||$('#oldpassword').val()==null){
			alert("原密码不能为空");
			return;
		}
		if($('#newpassword').val()==""||$('#newpassword').val()==null){
			alert("新密码不能为空");
			return;
		}
		if($('#confirmpassword').val()==""||$('#confirmpassword').val()==null){
			alert("确认密码不 能为空");
			return;
		}
		var password = '<%=password%>';
		if(password!==$('#oldpassword').val()){
			alert("旧密码不正确");
			return;
		}
		if($('#newpassword').val()!==$('#confirmpassword').val()){
			alert("两次密码填写不一样");
			return;
		}
		console.log(password);
		$('.savebtn').on('click',function(){
		
		});
		$.ajax({
			url:'editPasswordServlet',
			type:'POST',
			data:{
				password:$('#confirmpassword').val()
			},
			success:function(data){
				if(data ==1){
					location.href="Tbao_Login.jsp";
				}
			}
		});
	});
	$('.backbtn').on('click',function(){
		location.href="admin.jsp";
	});
});
</script>
</body>
</html>
