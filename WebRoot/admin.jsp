<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
                    <a class="cate checkorder" href="javascript:void(0);">订单审查</a>
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
    </div>
</section>
<div class="modal fade" id="addModal">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                <h4 class="modal-title">添加分类</h4>
            </div>
            <div class="modal-body">
                <form action="#" id="form">
                    <div class="form-group">
                        <input name="categoryName" type="text" class="form-control" placeholder="请输入一级分类名称">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" class="btn btn-primary" form="form">确定</button>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="nprogress/nprogress.js"></script>
<script src="js/admin.js"></script> 
<script>
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
</script>
</body>
</html>
