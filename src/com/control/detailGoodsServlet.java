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

public class detailGoodsServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String) session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		String goodsid=request.getParameter("goodsid");	
		System.out.println(goodsid);
		BaseDAO dao=new BaseDAO();
		Map<String,String> detail_goods=dao.getOneByWhere("a.*,b.storenav","goods a,store b,goodsclass c","a.storeid=b.storeid and a.goodsid="+goodsid);
		session.setAttribute("detail_goods", detail_goods);
		Map<String,Object> data=dao.getAll("*","goodsclass","","goodsclassid desc");
		List<Map<String,String>> goodsclass=(List<Map<String,String>>)data.get("records");
		session.setAttribute("goodsclass", goodsclass);
		System.out.println("goodsclass"+goodsclass);
	}

	}
}
