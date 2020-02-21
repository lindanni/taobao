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

public class AddOrderServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		request.setCharacterEncoding("utf-8");
		String gouwucheids=request.getParameter("gouwucheids");
		String[] gouwucheid=gouwucheids.split(",");
		Map<String,String> record=null;
		BaseDAO dao=new BaseDAO();
		for(int i=0;i<gouwucheid.length;i++){
			record=dao.getOneByWhere("*","gouwuche","gouwucheid="+gouwucheid[i]+"");
			if(record!=null){
				System.out.println(record.get("detail"));
				String detail = new String(record.get("detail").getBytes("utf-8"), "utf-8");
				dao.addOne("orderx","goodsid="+record.get("goodsid")+", userid="+userid+", goods_sum="+record.get("goods_sum")+", detail='"+detail+"', sum_price='"+record.get("sum_price")+"', statusid=6");
				dao.delete("gouwuche", "gouwucheid="+gouwucheid[i]);
			}
		}
		}
	}

}
