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

public class ShowOrderServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		request.setCharacterEncoding("utf-8");	
		String gouwucheids=(String)request.getParameter("gouwucheids");	
		String[] gouwucheid=gouwucheids.split(",");
		BaseDAO dao=new BaseDAO();
		Map<String,String> record=null;
		List<Map<String,String>> records=new ArrayList<Map<String,String>>();
		for(int i=0;i<gouwucheid.length;i++){
			System.out.println(gouwucheid[i]);
			record=dao.getOneByWhere("a.*,b.*,c.*", "gouwuche a,goods b,store c", "a.goodsid=b.goodsid and b.storeid=c.storeid and a.gouwucheid="+gouwucheid[i]);
			if(record!=null){
				records.add(record);
			}
		}
		session.setAttribute("order_goods", records);
	}
	}
}
