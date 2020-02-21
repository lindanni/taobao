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

public class AddGouwucheServlet extends HttpServlet {
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
		String detail=request.getParameter("detail");
		String seller_sum=request.getParameter("seller_sum");
		System.out.println(seller_sum);
		String size=request.getParameter("size");
		String price_new=request.getParameter("price_new");
		Float sum_price=Float.parseFloat(price_new)*Float.parseFloat(seller_sum);
		String sum_price_s=Float.toString(sum_price);
		boolean st=false;
		Map<String,String> record=null;
		Map<String,String> gouwuche_s=null;
		BaseDAO dao=new BaseDAO();	
		gouwuche_s=dao.getOneByWhere("a.*,b.*","goods a,store b","goodsid="+goodsid+" and a.storeid=b.storeid");
		record=dao.getOneByWhere("*","gouwuche","goodsid="+goodsid+" and userid="+userid+" and detail='"+detail+"'");
		if(record==null){
			st=dao.addOne("gouwuche","goodsid="+goodsid+", userid="+userid+", goods_sum='"+seller_sum+"', detail='"+detail+"', sum_price='"+sum_price_s+"'");
		}else{
			Integer goods_sum=Integer.parseInt(record.get("goods_sum"))+Integer.parseInt(seller_sum);
			Float sum=Float.parseFloat(price_new)*goods_sum;
			String s=Float.toString(sum);
			st=dao.updateOne("gouwuche","goods_sum="+goods_sum+",sum_price='"+s+"' where gouwucheid="+record.get("gouwucheid"));
		}
		session.setAttribute("gouwuche_s",gouwuche_s);
		session.setAttribute("seller_sum",seller_sum);
		session.setAttribute("size",size);
		session.setAttribute("price_new",price_new);
	    response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(st==true){
			 	out.println("1");
		}else{
	    	out.println("0");
		} 
		out.flush();
		out.close();
	}
	}
}
