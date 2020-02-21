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

public class MSearchOrderServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");  
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		String inputval=request.getParameter("inputval");
		System.out.println(inputval);
		BaseDAO dao=new BaseDAO();
		Map<String,Object> data=dao.getAll("a.*,b.*","orderx a,goods b","and a.goodsid=b.goodsid and b.goodsname like '%"+inputval+"%' and a.userid="+userid+"" ,"a.orderxid");
		List<Map<String,String>> records=(List<Map<String,String>>)data.get("records");
		request.setAttribute("buyed_goods", records);
		request.getRequestDispatcher("buyed_goods.jsp").forward(request, response);
		System.out.println(records);
	}
	}
}
