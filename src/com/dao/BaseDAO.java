package com.dao;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServlet;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.util.ZqDBUtil;

public class BaseDAO extends HttpServlet {
	public static final String url="jdbc:mysql://localhost:3306/taobao?user=root&password=123&useUnicode=true&characterEncoding=utf8";
	public Map<String,String> getOneByWhere(String field,String table,String where){
		Map<String,String> record=null;
		try{
			Class.forName("com.mysql.jdbc.Driver"); //驱动
			Connection con= (Connection) DriverManager.getConnection(url);
			Statement stmt=(Statement) con.createStatement();
			ResultSet rs=stmt.executeQuery("select "+field+" from "+table+" where "+where);
			List<Map<String,String>> data=ZqDBUtil.getHashMap(rs);
			if(data.size()>0){
				record=data.get(0);
			}	
			con.close();
			rs.close();
			stmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return record;
	}
	public boolean addOne(String table,String field){
		boolean flag=false;
		try{
			Class.forName("com.mysql.jdbc.Driver"); //驱动
			Connection con= (Connection) DriverManager.getConnection(url);
			Statement stmt=(Statement) con.createStatement();
			int count=stmt.executeUpdate("insert into "+table+" set "+field);
			if(count>0){
				flag=true;
			}
			con.close();
			stmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	public Map<String,Object> getAll(String field,String table,String where,String orderby){
		List<Map<String,String>> records=new ArrayList<Map<String,String>>();
		Map<String,Object> data=new HashMap<String,Object>();
		try{
			Class.forName("com.mysql.jdbc.Driver"); //驱动
			Connection con= (Connection) DriverManager.getConnection(url);
			Statement stmt=(Statement) con.createStatement();
			ResultSet rs=stmt.executeQuery("select "+field+" from "+table+" where 1=1 "+where+" order by "+orderby);
			records=ZqDBUtil.getHashMap(rs);
			data.put("records", records);
			con.close();
			rs.close();
			stmt.close();	
		}catch(Exception e){
			e.printStackTrace();
		}
		return data;
	}
	public boolean updateOne(String table,String fields){
	    boolean flag=false;
		try {
			Class.forName("com.mysql.jdbc.Driver"); //驱动
			Connection con= (Connection) DriverManager.getConnection(url);
			Statement stmt=(Statement) con.createStatement();
			int count=stmt.executeUpdate("update "+table+" set "+fields);
            if(count>0){
            	flag=true;
            }
			con.close();
			stmt.close();	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public boolean deleteOne(String table,String id){
	    boolean flag=false;
		try {
			Class.forName("com.mysql.jdbc.Driver"); //驱动
			Connection con= (Connection) DriverManager.getConnection(url);
			Statement stmt=(Statement) con.createStatement();
			int count=stmt.executeUpdate("delete from "+table+" where "+table+"id="+id);
            if(count>0){
            	flag=true;
            }
			con.close();
			stmt.close();	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
 }
	public boolean delete(String table,String where){
	    boolean flag=false;
		try {
			Class.forName("com.mysql.jdbc.Driver"); //驱动
			Connection con= (Connection) DriverManager.getConnection(url);
			Statement stmt=(Statement) con.createStatement();
			int count=stmt.executeUpdate("delete from "+table+" where "+where);
            if(count>0){
            	flag=true;
            }
			con.close();
			stmt.close();	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
 }
}
