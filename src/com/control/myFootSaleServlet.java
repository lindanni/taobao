package com.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BaseDAO;

public class myFootSaleServlet extends HttpServlet {
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
		String goodsid=request.getParameter("goodsid");
		String time=request.getParameter("time");
		BaseDAO dao=new BaseDAO();
		int i=0;
		if(goodsid!=""){
			/*Map<String,String> data=dao.getOneByWhere("goodsname,salesum,priceold,pricenew,shoucang,imgurl","goods","goodsid="+goodsid);*/
			dao.addOne("footmark", "userid="+userid+",goodsid="+goodsid+",footmarktime='"+time+"'");
		}
	}
	}
}
