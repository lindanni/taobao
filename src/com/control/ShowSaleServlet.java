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

public class ShowSaleServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		request.setCharacterEncoding("utf-8");	
		String dian_name=(String) request.getParameter("dian_name");
		System.out.println(dian_name);
		BaseDAO dao=new BaseDAO();
		Map<String,Object> data=dao.getAll("a.*,b.*","goods a ,store b","and b.storename='"+dian_name+"' and a.storeid=b.storeid and a.checkstatus=1","a.goodsid");
		List<Map<String,String>> records=(List<Map<String,String>>)data.get("records");
		session.setAttribute("sale_goods", records);
		session.setAttribute("dian_name", dian_name);
	}
	}
}
