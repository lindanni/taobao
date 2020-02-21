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

public class SaveGoodsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		request.setCharacterEncoding("utf-8");
		String goodsname=request.getParameter("goodsname");
		String priceold=request.getParameter("priceold");
		String pricenew=request.getParameter("pricenew");
		String imgurl=request.getParameter("imgurl");
		String img_list=request.getParameter("img_list");
		String goodsclassid=request.getParameter("goodsclassid");
		String storeid=(String) session.getAttribute("storeid");
		String gclassid=null;
		if(goodsclassid.equals("化妆品")){
			gclassid="1";
		}else if(goodsclassid.equals("衣服")){
			gclassid="2";
		}else if(goodsclassid.equals("鞋子")){
			gclassid="3";
		}
		BaseDAO dao=new BaseDAO();
		boolean status=dao.addOne("goods","goodsname='"+goodsname+"', priceold='"+priceold+"', pricenew='"+pricenew+"', imgurl='"+imgurl+"', img_list='"+img_list+"', shoucang=0, salesum=0, checkstatus=0,goodsclassid="+gclassid+", storeid="+storeid+"");
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
