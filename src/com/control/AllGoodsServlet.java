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

public class AllGoodsServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
		if(userid!=null && !userid.equals("")){
			request.setCharacterEncoding("utf-8");	
			BaseDAO dao=new BaseDAO();
			Map<String,Object> data=dao.getAll("a.*,b.goodsclassname","goods a,goodsclass b","and checkstatus=1 and a.goodsclassid=b.goodsclassid","goodsid desc");
			List<Map<String,String>> records=(List<Map<String,String>>)data.get("records");
			session.setAttribute("allgoods", records);
			System.out.println("111"+records);
		}
	}

}
