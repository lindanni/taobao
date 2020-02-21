<%@ page language="java" import="java.util.*,com.dao.*" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	BaseDAO dao=new BaseDAO();
	boolean status=dao.addOne("user ","username='"+username+"',userpassword='"+password+"'");
	if(status==true){
		out.println("1");
	}else{
		out.println("0");
	}
%>
