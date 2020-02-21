package com.control;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.dao.BaseDAO;

public class UpImgServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		//进行登录页验证，防止没有登录直接进入此页面
		String userid=(String)session.getAttribute("userid");
		if(userid!=null && !userid.equals("")){
		request.setCharacterEncoding("utf-8");
		try {
			//创建一个文件上传“工厂”
			FileItemFactory factory = new DiskFileItemFactory();
			//通过“工厂”来获得一个文件上传处理器
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 解析浏览器中的所有文件列表
			List items = upload.parseRequest(request);

			String message="";
			//将文件列表转为迭代器
			Iterator iter = items.iterator();
			while (iter.hasNext()) { //循环处理所有上传的文件
			    FileItem item = (FileItem) iter.next();

			    if (item.isFormField()) {
			    } else { //
			         //获得字段的名字
			    	 String name=item.getFieldName();
			    	 //获得文件的名字
			    	 String fileName = item.getName();
			    if(fileName!=null||!fileName.equals("")){
			    	 fileName=fileName.toString().replace("-","");
			    	 //获得文件类型
			    	 String contentType = item.getContentType();
			    	 //System.out.print("上传文件的类型为："+contentType);
			    	 //boolean isInMemory = item.isInMemory();
			    	 //获得文件的大小 
			    	 long sizeInBytes = item.getSize();
			    /*	 String path=null;
			    	 if(name.equals("imgurl")){
			    		 System.out.println(name);
			    		 path="sale"+"/";
			    		 System.out.println(path);
			    	 }else if(name.equals("img1")||name.equals("img2")||name.equals("img3")||name.equals("img4")||name.equals("img5")){
			    		 path="detail_goods"+"/";
			    	 }*/
			    	 
			    	 //获取上传文件的后缀
			    	 System.out.println(fileName);
			    	 if(fileName.lastIndexOf(".")>-1){
			    		 String suffix=fileName.substring(fileName.lastIndexOf("."));	
			    	
			    	 System.out.println("文件名的后缀为："+suffix);
			    	 
			    	 //对上传文件的类型进行判断，只允许指定格式的文件上传
			    	 if(suffix.equalsIgnoreCase(".png") || suffix.equalsIgnoreCase(".jpg") || suffix.equalsIgnoreCase(".jpeg")){
				    	 
				    	 //文件在数据库中保存路径
				    	 String filepath=null;
				    	 String path=null;
				    	 if(name.equals("imgurl")){
//				    		 filepath="salenew"+"/";
				    		 path="/sale/";
				    		 filepath="C:/Users/o/Workspaces/MyEclipse 10/taobao/WebRoot/sale/";
				    		 request.setAttribute("imgurl", "sale/"+fileName);

				    		 System.out.println( filepath);
				    	 }else if(name.equals("img1")){
				    		 path="/big_goodsimg/";
				    		 filepath="C:/Users/o/Workspaces/MyEclipse 10/taobao/WebRoot/big_goodsimg/";
				    		 request.setAttribute("img1","big_goodsimg/"+fileName);
				    	 }else if(name.equals("img2")){
				    		 path="/big_goodsimg/";
				    		 filepath="C:/Users/o/Workspaces/MyEclipse 10/taobao/WebRoot/big_goodsimg/";
				    		 request.setAttribute("img2", "big_goodsimg/"+fileName);
				    	 }else if(name.equals("img3")){
				    		 path="/big_goodsimg/";
				    		 filepath="C:/Users/o/Workspaces/MyEclipse 10/taobao/WebRoot/big_goodsimg/";
				    		 request.setAttribute("img3", "big_goodsimg/"+fileName);
				    	 }else if(name.equals("img4")){
				    		 path="/big_goodsimg/";
				    		 filepath="C:/Users/o/Workspaces/MyEclipse 10/taobao/WebRoot/big_goodsimg/";
				    		 request.setAttribute("img4", "big_goodsimg/"+fileName);
				    	 }else if(name.equals("img5")){
				    		 path="/big_goodsimg/";
				    		 filepath="C:/Users/o/Workspaces/MyEclipse 10/taobao/WebRoot/big_goodsimg/";
				    		 request.setAttribute("img5", "big_goodsimg/"+fileName);
				    	 }
				    	 //进行文件的上传
				    	 File file1=new File(this.getServletContext().getRealPath(path+fileName));
				    	 File file=new File(filepath+fileName);
				    	 if(!file.exists()){
								file.getParentFile().mkdirs();//创建上层目录
							}
				    	 item.write(file); 
				    	 if(!file1.exists()){
								file1.getParentFile().mkdirs();//创建上层目录
							}
				    	 item.write(file1);
				    	 
				    	 message="<div style='color:red'>上传成功</div>";
				    	 
			    	 }else{
			    		 message="<div style='color:red'>资料类型非法</div>";
			    	 }	
			    }
			    }
			    	
			    }
			}
			response.setContentType("text/html;charset=utf-8");
			request.setAttribute("message", message);
			request.getRequestDispatcher("sale_fn.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

}
