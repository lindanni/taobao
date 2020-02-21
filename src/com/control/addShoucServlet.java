package com.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BaseDAO;

public class addShoucServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		request.setCharacterEncoding("utf-8");
		String goodsid=request.getParameter("goodsid");
		boolean st=false;
		Map<String,String> record=null;
		BaseDAO dao=new BaseDAO();
		record=dao.getOneByWhere("*","shouc","goodsid="+goodsid+" and userid="+userid+"");
		if(record==null){
			st=dao.addOne("shouc","goodsid="+goodsid+", userid="+userid+"");
		}
	    response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(record==null){
		 if(st==true){
			 	out.println("1");
		    }
		}else{
	    	out.println("0");
		} 
		out.flush();
		out.close();
	}
	}
}
