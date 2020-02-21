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

public class SearchSaleServlet extends HttpServlet {
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
		/*String inputval = new String(request.getParameter("inputval").getBytes("ISO-8859-1"),"UTF-8");
		String inputtext = new String(request.getParameter("inputtext").getBytes("ISO-8859-1"),"UTF-8");*/
		String inputval=request.getParameter("inputval");
		String inputtext=request.getParameter("inputtext");
		System.out.println(inputtext);
		System.out.println(inputval);
		String where="and b.storeid=a.storeid and a.checkstatus=1";
		if(inputtext.equals("宝贝")){
			where+=" and a.goodsname like'%"+inputval+"%'";
			request.setAttribute(inputval, "inputval");
		}else if(inputtext.equals("店铺")){
			where+=" and b.storename like '%"+inputval+"%'";
		}
		BaseDAO dao=new BaseDAO();
		Map<String,Object> data=dao.getAll("a.goodsid,a.goodsname,a.salesum,a.pricenew,a.shoucang,a.imgurl,b.storename","goods a,store b",where,"goodsid");
		List<Map<String,String>> records=(List<Map<String,String>>)data.get("records");
		System.out.print(records.get(0));
		session.setAttribute("search_records",records);
		session.setAttribute("inputval",inputval);
        response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
        if(records!=null){
        	out.println("1");
        }else{
        	out.println("0");
        }
		out.flush();
		out.close();
	}
	}
}
