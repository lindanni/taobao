<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>后台管理系统-一级分类</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <link rel="stylesheet" href="nprogress/nprogress.css"/>
</head>
<body>
<!--侧边栏-->
<aside class="ad_aside">
    <!--商标-->
    <div class="brand"><a href="index.html">ITCAST</a></div>
    <!--用户-->
    <div class="user">
        <img src="images/default.png" alt=""/>
        <span>超级管理员</span>
    </div>
    <!--菜单-->
    <div class="menu">
        <ul>
            <li>
            	<a href="javascript:;"><span class="glyphicon glyphicon-user"></span> 用户管理</a>
            	<div class="child">
                    <a class="cate editpassword" href="editpassword.jsp">修改密码</a>
                    <a class="cate userlist" href="javascript:void(0);">用户列表</a>
                </div>
            </li>
            <li>
                <a href="javascript:;"><span class="glyphicon glyphicon-list"></span> 商品管理</a>
                <div class="child">
                    <a class="cate checkgoods" href="javascript:void(0);">商品审查</a>
                    <a class="cate goodslist" href="javascript:void(0);">商品列表</a>
                </div>
            </li>
            <li>
                <a href="javascript:;"><span class="glyphicon glyphicon-list"></span> 订单管理</a>
                <div class="child">
                    <a class="cate checkorder now" href="javascript:void(0);">订单审查</a>
                    <a class="cate orderlist" href="javascript:void(0);">订单列表</a>
                </div>
            </li>
        </ul>
    </div>
</aside>
<!--内容-->
<section class="ad_section">
    <!--顶部导航-->
    <nav class="ad_nav">
        <a data-menu href="javascript:;"><span class="glyphicon glyphicon-align-justify"></span></a>
        <a data-logout href="javascript:;"><span class="glyphicon glyphicon-log-out"></span></a>
    </nav>
    <div class="container-fluid">
        <!--路径导航-->
        <ol class="breadcrumb">
            <li><a href="#">管理系统</a></li>
        </ol>
        <div class="ad_content">
            <table class="table table-bordered table-hover">
                <thead>
	                <tr>
	                    <th width="10%">订单编号</th>
	                    <th width="10%">商品名字</th>
	                    <th width="10%">商品类型</th>
	                    <th width="10%">订单总价</th>
	                    <th width="10%">店铺名字</th>
	                    <th width="10%">买家用户名</th>
	                    <th width="10%">商品详情</th>
	                    <th width="10%">商品个数</th>  
	                    <th width="10%">操作</th>  
	                </tr>
                </thead>
                <tbody>
                	<c:forEach var="r" items="${ordercheck}">
                		<tr>
                			<td>${r.orderxid}</td>
                			<td>${r.goodsname}</td>
                			<td>${r.goodsclassname}</td>
                			<td>${r.sum_price}</td>
                			<td>${r.storename}</td>
                			<td>${r.username}</td>
                			<td>${r.detail}</td>
                			<td>${r.goods_sum}</td>
                			<td>
                				<button type="button" class="btn btn-default passbtn">通过</button>
                				<button type="button" class="btn btn-default nopassbtn">不通过</button>
                				<input type="hidden" value="${r.orderxid}" class="orderxid"/>
                			</td>
                		</tr>
                	</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="alert alert-success alert-dismissibleshow message passinfo" style="opacity:0%">
    	<strong>商品已通过审核！</strong>
    </div>
    <div class="alert alert-danger alert-dismissible message nopassinfo" style="opacity:0%">
    	<strong>审核不通过，商品已删除！</strong>
    </div>
</section>
<script src="js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="nprogress/nprogress.js"></script>
<script src="js/admin.js"></script> 
<script>
	$(function(){
		$('.passbtn').on('click',function(){
			var value = $(this).parent().find('.orderxid').val();
			console.log(value);
			$.ajax({
				type:'POST',
				url:'passOrderServlet',
				data:{
					orderxid: value
				},
				success:function(data){
					if($.trim(data)==1){
						$('.passinfo').css('opacity','100%');
						setInterval(function(){
							$('.passinfo').css('opacity','0%');
							$('.orderxid').each(function(){
								if($(this).val() == value){
									$(this).parent().parent().remove();
								}
							});			
						},1000);
					}
				}
			})
		});
		$('.nopassbtn').on('click',function(){
		 	var value = $(this).parent().find('.orderxid').val();
		 	
			$.ajax({
				type: 'POST',
				url: 'mDelOrderServlet',
				data:{
					orderxid: value
				},
				success:function(data){
					if($.trim(data)==1){
						$('.nopassinfo').css('opacity','100%');
						setInterval(function(){
							$('.nopassinfo').css('opacity','0%');
							$('.orderxid').each(function(){
								if($(this).val() == value){
									$(this).parent().parent().remove();
								}
							});	
						},1000);
						
					}
				}
			})
		});
		$('.checkgoods').on('click',function(){
		$.ajax({
			url:'showCheckGoodsServlet',
			type:'POST',
			success:function(){
				location.href = "goodscheck.jsp"; 
			}
		});
	});
	$('.goodslist').on('click',function(){
		$.ajax({
			url:'allGoodsServlet',
			type:'POST',
			success:function(){
				location.href = "goodslist.jsp"; 
			}
		});
	});
	$('.userlist').on('click',function(){
		$.ajax({
			url:'userListServlet',
			type:'POST',
			success:function(data){
				location.href="userlist.jsp";
			}
		});
	});
	$('.orderlist').on('click',function(){
		$.ajax({
			type:'POST',
			url:'orderListServlet',
			success:function(){
				location.href="orderlist.jsp";
			}
		});
	});
	$('.checkorder').on('click',function(){
		$.ajax({
			type:'POST',
			url:'orderCheckServlet',
			success:function(){
				location.href="ordercheck.jsp";
			}
		});
	});
	});
</script>
</body>
</html>
