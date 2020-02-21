<%@ page language="java" import="java.util.*,com.dao.*" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	System.out.println(username);
	System.out.println(password);
	BaseDAO dao=new BaseDAO();
	Map<String,String> record=null;
	if(dao.getOneByWhere("a.*,b.*,c.*","user a,role b,store c","a.username='"+username+"' and a.userpassword='"+password+"' and a.storeid=c.storeid and a.roleid=b.roleid")!=null){
		record=dao.getOneByWhere("a.*,b.*,c.*","user a,role b,store c","a.username='"+username+"' and a.userpassword='"+password+"' and a.storeid=c.storeid and a.roleid=b.roleid");
		session.setAttribute("username",record.get("username"));
		session.setAttribute("userid",record.get("userid"));
		session.setAttribute("password",record.get("userpassword"));
		if(record.get("roleid").equals("2")){
			session.setAttribute("storenamel",record.get("storename"));
			session.setAttribute("storeid",record.get("storeid"));
		}
	}
	if(record!=null){
		if(record.get("roleid").equals("1")){
			out.println("1");
			System.out.println("1");
		}else if(record.get("roleid").equals("2")){
			out.println(record.get("storename"));
		}else if(record.get("roleid").equals("3")){
			out.println("2");
		}
	}else{
		out.println("0");
		System.out.println("0");
	}
%>
