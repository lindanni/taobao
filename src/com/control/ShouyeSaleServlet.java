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

public class ShouyeSaleServlet extends HttpServlet {

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
		Map<String,Object> data=dao.getAll("goodsid,goodsname,salesum,priceold,pricenew,shoucang,imgurl","goods","","salesum desc");
		List<Map<String,String>> records=(List<Map<String,String>>)data.get("records");
		request.setAttribute("records", records);
		session.setAttribute("records", records);
		System.out.print("aaa"+records);
        request.getRequestDispatcher("shouye.jsp").forward(request, response);     
	}
	}
}