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

public class ShowSaleFnServlet extends HttpServlet {
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
		session.setAttribute("down_goods", records);
		Map<String,Object> data1=dao.getAll("a.*,b.*,c.*,d.*","goods a ,store b,orderx c,user d","and b.storename='"+dian_name+"' and a.storeid=b.storeid and c.goodsid=a.goodsid and d.userid=c.userid and c.statusid=1","c.orderxid");
		List<Map<String,String>> records1=(List<Map<String,String>>)data1.get("records");
		session.setAttribute("order_send", records1);
		Map<String,Object> data2=dao.getAll("a.*,b.*,c.*,d.*","goods a ,store b,orderx c,user d","and b.storename='"+dian_name+"' and a.storeid=b.storeid and c.goodsid=a.goodsid and d.userid=c.userid and c.statusid=4","c.orderxid");
		List<Map<String,String>> records2=(List<Map<String,String>>)data2.get("records");
		session.setAttribute("order_back", records2);
		Map<String,Object> data3=dao.getAll("*","goodsclass","","goodsclassid");
		List<Map<String,String>> records3=(List<Map<String,String>>)data3.get("records");
		session.setAttribute("goodsclassname", records3);
	}
	}
}
