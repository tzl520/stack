package com.edu.view;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.edu.bean.Snack;
import com.edu.constant.Constance;
import com.edu.service.SnackService;
import com.edu.service.impl.SnackServiceImpl;

/**
 * Servlet implementation class SnackServlet
 */
public class SnackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) 
    		throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");
    	String method = req.getParameter("method");
    	if("snackUI".equals(method)){
    		snackUI(req,resp);
    	}else if("editSnackUI".equals(method)){
    		editSnackUI(req,resp);
    	}else if("editSnack".equals(method)){
    		editSnack(req,resp);
    	}else if("deleteSnack".equals(method)){
    		deleteSnack(req,resp);
    	}else if("addSnackUI".equals(method)) {
    		addSnackUI(req,resp);
    	}else if("add".equals(method)) {
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
   		Snack snack = new Snack();
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
   			        if("fatherName".equals(name)) {
   			        	snack.setFatherName(value);
   			        }else if("name".equals(name)) {
   			        	snack.setName(value);
   			        }else if("title".equals(name)) {
   			        	snack.setTitle(value);
   			        }
   			    } else {
   			    	String fieldName = item.getFieldName();
   			        String fileName = item.getName();
   			        snack.setImg("imgs/"+fileName);
   			        String dir = req.getSession().getServletContext().getRealPath("/imgs/");
   			        File uploadedFile = new File(dir,fileName);
   			        item.write(uploadedFile);
   			        System.out.println(dir);
   			    }
   			}
   			SnackService snackService = new SnackServiceImpl();
   			int reuslt = snackService.add(snack);
   			if(reuslt != 0) {
   				resp.sendRedirect(req.getContextPath()+"/Snack?method=snackUI&pageNo="+pageNo);
   			}
   		} catch (Exception e) {
   			// TODO Auto-generated catch block
   			e.printStackTrace();
   		}
		
	}
	private void addSnackUI(HttpServletRequest req, HttpServletResponse resp) 
    			throws ServletException, IOException {
		String pageNoStr = req.getParameter("pageNo");
		int pageNo = 1;
		if(null != pageNoStr && pageNoStr.trim().length() > 0) {
			pageNo = Integer.parseInt(pageNoStr);
		}
    	SnackService snackService = new SnackServiceImpl();
		try {
			List<Snack> snackList = snackService.getName();
			req.setAttribute("snackList", snackList);
			req.setAttribute("pageNo", pageNo);
			req.getRequestDispatcher("/Backstage/addSnackUI.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       }
       private void deleteSnack(HttpServletRequest req, HttpServletResponse resp) 
     			throws ServletException, IOException {
    	   String pageNoStr = req.getParameter("pageNo");
			int pageNo = 1;
			if(null != pageNoStr && pageNoStr.trim().length() > 0) {
				pageNo = Integer.parseInt(pageNoStr);
			}
    	   String ids = req.getParameter("id");
    	   int id = 0;
    	   if(null != ids && ids.trim().length() != 0){
    		   id = Integer.parseInt(ids);
    	   }
    	   try {
    		   SnackService snackService = new SnackServiceImpl();
    		   int result = snackService.deleteById(id);
    		   if(result != 0){
    			   req.setAttribute("pageNo", pageNo);
    			   resp.sendRedirect(req.getContextPath()+"/Snack?method=snackUI&pageNo="+pageNo);
    		   }
		} catch (Exception e) {
			e.printStackTrace();
		}
       }
       private void editSnack(HttpServletRequest req, HttpServletResponse resp) 
      			throws ServletException, IOException {
    	   String pageNoStr = req.getParameter("pageNo");
   		int pageNo = 1;
   		if(null != pageNoStr && pageNoStr.trim().length() > 0) {
   			pageNo = Integer.parseInt(pageNoStr);
   		}
    	   DiskFileItemFactory factory = new DiskFileItemFactory();
      		File temp=new File(req.getServletContext().getRealPath("/temp"));
      	      temp.mkdirs();
      		// Set factory constraints
      		factory.setSizeThreshold(4096);
      		factory.setRepository(temp);
      		
      		// Create a new file upload handler
      		ServletFileUpload upload = new ServletFileUpload(factory);

      		// Set overall request size constraint
      		upload.setSizeMax(1024*1024*1024);
      		Snack snack = new Snack();
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
      			        if("id".equals(name)){
      			        	snack.setId(Integer.parseInt(value));
      			        }else if("fatherName".equals(name)) {
      			        	snack.setFatherName(value);
      			        }else if("name".equals(name)) {
      			        	snack.setName(value);
      			        }else if("title".equals(name)) {
      			        	snack.setTitle(value);
      			        }
      			    } else {
      			    	String fieldName = item.getFieldName();
      			        String fileName = item.getName();
      			        snack.setImg("imgs/"+fileName);
      			        String dir = req.getSession().getServletContext().getRealPath("/imgs/");
      			        File uploadedFile = new File(dir,fileName);
      			        item.write(uploadedFile);
      			        System.out.println(dir);
      			    }
      			}
      			SnackService snackService = new SnackServiceImpl();
    		   int result = snackService.editById(snack);
    		   if(result != 0){
    			   resp.sendRedirect(req.getContextPath()+"/Snack?method=snackUI&pageNo="+pageNo);
    		   }else{
    			   req.getRequestDispatcher("/Backstage/editSnackUI.jsp").forward(req, resp);
    		   }
		} catch (Exception e) {
			e.printStackTrace();
			req.getRequestDispatcher("/Backstage/editSnackUI.jsp").forward(req, resp);
		}
       }
       private void editSnackUI(HttpServletRequest req, HttpServletResponse resp) 
   			throws ServletException, IOException {
    	   String pageNoStr = req.getParameter("pageNo");
   		int pageNo = 1;
   		if(null != pageNoStr && pageNoStr.trim().length() > 0) {
   			pageNo = Integer.parseInt(pageNoStr);
   		}
    	   String ids = req.getParameter("id");
    	   int id = 0;
    	   if(null != ids && ids.trim().length() != 0){
    		   id = Integer.parseInt(ids);
    	   }
    	   try {
    		   SnackService snackService = new SnackServiceImpl();
    		   Snack snack = snackService.getById(id);
    		   List<Snack> snList = snackService.getFatherName();
    		   String names = snack.getFatherName();
    		   req.setAttribute("sanck", snack);
    		   req.setAttribute("snacks", snList);
    		   req.setAttribute("names", names);
    		   req.setAttribute("pageNo", pageNo);
    		   req.getRequestDispatcher("/Backstage/editSnackUI.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       }
	private void snackUI(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		try {
			String pageNoStr = req.getParameter("pageNo");
			int pageNo = 1;
			if(null != pageNoStr && pageNoStr.trim().length() > 0) {
				pageNo = Integer.parseInt(pageNoStr);
			}
			SnackService snackService = new SnackServiceImpl();
			List<Snack> snackList = snackService.getAll(pageNo);
			

			int rowCount = snackService.getCount();
			int pageCount = rowCount%Constance.PAGESIZE==0?rowCount/Constance.PAGESIZE:rowCount/Constance.PAGESIZE+1;
			req.setAttribute("snack", snackList);
			req.setAttribute("pageCount", pageCount);
			req.setAttribute("rowCount", rowCount);
			req.setAttribute("pageNo", pageNo);
//			resp.sendRedirect(req.getContextPath()+"/Backstage/snacksEveryWhere.jsp");
			req.getRequestDispatcher("/Backstage/snacksEveryWhere.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
   

}
