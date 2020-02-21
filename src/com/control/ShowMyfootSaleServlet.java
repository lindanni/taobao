package com.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BaseDAO;

public class ShowMyfootSaleServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("userid");
	if(userid!=null && !userid.equals("")){
		request.setCharacterEncoding("utf-8");	
		BaseDAO dao=new BaseDAO();
		Map<String,Object> data=dao.getAll("b.footmarkid,a.goodsname,a.priceold,a.pricenew,a.imgurl,b.footmarktime","goods a,footmark b","and b.userid="+userid+" and a.goodsid=b.goodsid","b.footmarkid desc");
		List<Map<String,String>> records=(List<Map<String,String>>)data.get("records");
	/*	List<Map<Integer,String>> list_counts=new ArrayList<Map<Integer,String>>();*/
		ArrayList<Integer> counts=new ArrayList<Integer>();
		ArrayList<String> times=new ArrayList<String>();
		System.out.println(records);
		String time="";
		if(records.size()!=0){
			time=(String)records.get(0).get("footmarktime");
			int count=0;
	        int j=0;
	        int sum=0;
	        times.add(time);
	        System.out.println(records);
	        System.out.println(records.size());
			for(int i=0;i<records.size()-1;i++){
				if(records.get(i).get("footmarktime").equals(time)){
					count++;
				}else{
					time=records.get(i).get("footmarktime");
					System.out.print( time);
					System.out.print( count);
					times.add(time);
					counts.add(count);
					sum+=count;
					count=0;
					i--;
				}
			}
			counts.add(records.size()-sum);
			session.setAttribute("times", times);
			System.out.println(times);
			session.setAttribute("myfoot_goods", records);
			session.setAttribute("counts", counts);
			System.out.println(counts);
		}
	}
	}
}
