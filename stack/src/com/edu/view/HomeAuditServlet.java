package com.edu.view;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.edu.bean.Audit;
import com.edu.bean.ChineseMenu;
import com.edu.bean.Father;
import com.edu.service.AuditService;
import com.edu.service.ChineseMenuService;
import com.edu.service.impl.AuditServiceImpl;
import com.edu.service.impl.ChineseMenuServiceImpl;
import com.edu.util.JsonUtil;

/**
 * Servlet implementation class HomeAuditServlet
 */
public class HomeAuditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String method = req.getParameter("method");
		if("show".equals(method)){
			show(req,resp);
		}else if("getByName".equals(method)){
			getByName(req,resp);
		}else if("add".equals(method)){
			add(req,resp);
		}
	}
	private void add(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		 DiskFileItemFactory factory = new DiskFileItemFactory();
  	   String pageNoStr = req.getParameter("pageNo");
 		int pageNo = 1;
 		if(null != pageNoStr && pageNoStr.trim().length() > 0) {
 			pageNo = Integer.parseInt(pageNoStr);
 		}
 		File temp=new File(req.getServletContext().getRealPath("/temp"));
 	      temp.mkdirs();
 		// Set factory constraints
 		factory.setSizeThreshold(4096);
 		factory.setRepository(temp);
 		
 		// Create a new file upload handler
 		ServletFileUpload upload = new ServletFileUpload(factory);

 		// Set overall request size constraint
 		upload.setSizeMax(1024*1024*1024);
 		Audit aud = new Audit();
 		// Parse the request
 		try {
 			List<FileItem> items = upload.parseRequest(req);
 			Iterator<FileItem> iter = items.iterator();
 			while (iter.hasNext()) {
 			    FileItem item = iter.next();
 			    if (item.isFormField()) {
 			    	String name = item.getFieldName();
 			        String value = item.getString();
 			        value = new String(value.getBytes("iso-8859-1"),"UTF-8");
 			        if("sele".equals(name)) {
 			        	aud.setFatherName(value);
 			        }else if("name".equals(name)) {
 			        	aud.setName(value);
 			        }else if("title".equals(name)) {
 			        	aud.setTitle(value);
 			        }else if("seles".equals(name)){
 			        	aud.setTableName(value);
 			        }else if("ids".equals(name)){
 			        	System.out.println(value);
 			        	int uid = Integer.parseInt(value);
 			        	aud.setUid(uid);
 			        }
 			    } else {
 			    	String fieldName = item.getFieldName();
 			        String fileName = item.getName();
 			        aud.setImg("imgs/user"+fileName);
 			        String dir = req.getSession().getServletContext().getRealPath("/imgs/user");
 			        File uploadedFile = new File(dir,fileName);
 			        item.write(uploadedFile);
 			    }
 			}
 			AuditService menuService = new AuditServiceImpl();
 			menuService.add(aud);
 			resp.sendRedirect("Foodstack/index.jsp");
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
		
	}
	private void getByName(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String name = req.getParameter("name");
		try {
			AuditService auditService = new AuditServiceImpl();
			List<Father> faList = auditService.getTypeByName(name);
			String str =  JsonUtil.obj2json(faList) ;
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter out = resp.getWriter();
			System.out.println("13213212");
			out.println(str);
			out.flush();
			out.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private void show(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		try {
			AuditService auditService = new AuditServiceImpl();
			List<Father> faList = auditService.getType();
			req.setAttribute("faList", faList);
			req.getRequestDispatcher("Foodstack/cooking.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
