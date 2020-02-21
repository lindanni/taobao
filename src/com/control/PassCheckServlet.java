package com.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BaseDAO;

public class PassCheckServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
		if(userid!=null && !userid.equals("")){
			request.setCharacterEncoding("utf-8");
		    String goodsid=request.getParameter("goodsid");
		    BaseDAO dao=new BaseDAO();
		    boolean status=dao.updateOne("goods","checkstatus=1 where goodsid="+goodsid);
		    response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
		    if(status==true){
		    	out.println("1");
		    }else{
		    	out.println("0");
		    }
			out.flush();
			out.close();
		}
	}

}
