package com.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BaseDAO;

public class ShoucSearchServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		request.setCharacterEncoding("utf-8");  
		String input_text=request.getParameter("input_text");
		System.out.println(input_text);
		BaseDAO dao=new BaseDAO();
		String where="and b.goodsid=a.goodsid";
		where+=" and a.goodsname like'%"+input_text+"%'";
		Map<String,Object> data=dao.getAll("a.goodsname,a.pricenew,a.priceold,a.imgurl,b.shoucid","goods a,shouc b",where,"shoucid");
		List<Map<String,String>> records=(List<Map<String,String>>)data.get("records");
		request.setAttribute("shouc_search",records);
		request.setAttribute("input_text",input_text);
		request.getRequestDispatcher("shouc_baobei.jsp").forward(request, response);	 
		
	}
	}
}
