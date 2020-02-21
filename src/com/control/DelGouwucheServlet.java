package com.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BaseDAO;

public class DelGouwucheServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		request.setCharacterEncoding("utf-8");	
		String userid=(String) session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		String gouwucheid=(String) request.getParameter("gouwucheid");
		System.out.println(gouwucheid);
		BaseDAO dao=new BaseDAO();
		boolean status=dao.delete("gouwuche","gouwucheid="+gouwucheid+" and userid="+userid);
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
