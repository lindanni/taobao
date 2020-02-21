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

public class DaiSendServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		request.setCharacterEncoding("utf-8");	
		String userid=(String) session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		BaseDAO dao=new BaseDAO();
		Map<String,Object> data=dao.getAll("a.*,b.*,c.*,d.*","goods a ,store b,orderx c,status d","and a.storeid=b.storeid and d.statusid=c.statusid and c.goodsid=a.goodsid and c.userid="+userid+" and c.statusid=1","c.orderxid");
		List<Map<String,String>> records=(List<Map<String,String>>)data.get("records");
		request.setAttribute("buyed_goods", records);
		System.out.println(records);
		request.getRequestDispatcher("buyed_goods.jsp").forward(request, response); 	
	}
	}
}
