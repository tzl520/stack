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

import com.edu.bean.ForeignMenu;
import com.edu.bean.Kitchen;
import com.edu.constant.Constance;
import com.edu.service.ForeignMenuService;
import com.edu.service.KitchenService;
import com.edu.service.impl.ForeignMenuServiceImpl;
import com.edu.service.impl.KitchenServiceImpl;

/**
 * Servlet implementation class KitchenServlet
 */
public class KitchenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) 
    		throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
    	String method = req.getParameter("method");
    	if("show".equals(method)){
    		kitchenUI(req,resp);
    	}else if("editKitchenUI".equals(method)){
    		editKitchenUI(req,resp);
    	}else if("editKitchen".equals(method)){
    		editKitchen(req,resp);
    	}else if("deleteKitchen".equals(method)){
    		deleteKitchen(req,resp);
    	}else if("addKitchenUI".equals(method)) {
    		addKitchenUI(req,resp);
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
   		Kitchen kitchen = new Kitchen();
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
   			        	kitchen.setFatherName(value);
   			        }else if("name".equals(name)) {
   			        	kitchen.setName(value);
   			        }else if("title".equals(name)) {
   			        	kitchen.setTitle(value);
   			        }
   			    } else {
   			    	String fieldName = item.getFieldName();
   			        String fileName = item.getName();
   			        kitchen.setImg("imgs/kitchen"+fileName);
   			        String dir = req.getSession().getServletContext().getRealPath("/imgs/kitchen");
   			        File uploadedFile = new File(dir,fileName);
   			        item.write(uploadedFile);
   			        System.out.println(dir);
   			    }
   			}
   			KitchenService kService = new KitchenServiceImpl();
   			int reuslt = kService.add(kitchen);
   			if(reuslt != 0) {
   				resp.sendRedirect(req.getContextPath()+"/Kitchen?method=show&pageNo="+pageNo);
   			}
   		} catch (Exception e) {
   			// TODO Auto-generated catch block
   			e.printStackTrace();
   		}
		
	}
	private void addKitchenUI(HttpServletRequest req, HttpServletResponse resp) 
    			throws ServletException, IOException {
		String pageNoStr = req.getParameter("pageNo");
		int pageNo = 1;
		if(null != pageNoStr && pageNoStr.trim().length() > 0) {
			pageNo = Integer.parseInt(pageNoStr);
		}
		System.out.println(pageNo);
		KitchenService kService = new KitchenServiceImpl();
		try {
			List<Kitchen> kList = kService.getName();
			req.setAttribute("kList", kList);
			req.setAttribute("pageNo", pageNo);
			req.getRequestDispatcher("/Backstage/addKitchenUI.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       }
       private void deleteKitchen(HttpServletRequest req, HttpServletResponse resp) 
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
    		   KitchenService kService = new KitchenServiceImpl();
    		   int result = kService.deleteById(id);
    		   if(result != 0){
    			   req.setAttribute("pageNo", pageNo);
    			   resp.sendRedirect(req.getContextPath()+"/Kitchen?method=show&pageNo="+pageNo);
    		   }
		} catch (Exception e) {
			e.printStackTrace();
		}
       }
       private void editKitchen(HttpServletRequest req, HttpServletResponse resp) 
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
      		Kitchen kitchen = new Kitchen();
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
      			        	kitchen.setId(Integer.parseInt(value));
      			        }else if("fatherName".equals(name)) {
      			        	kitchen.setFatherName(value);
      			        }else if("name".equals(name)) {
      			        	kitchen.setName(value);
      			        }else if("title".equals(name)) {
      			        	kitchen.setTitle(value);
      			        }
      			    } else {
      			    	String fieldName = item.getFieldName();
      			        String fileName = item.getName();
      			        kitchen.setImg("imgs/kitchen"+fileName);
      			        String dir = req.getSession().getServletContext().getRealPath("/imgs/kitchen");
      			        File uploadedFile = new File(dir,fileName);
      			        item.write(uploadedFile);
      			    }
      			}
      			KitchenService kService = new KitchenServiceImpl();
    		   int result = kService.editById(kitchen);
    		   if(result != 0){
    			   resp.sendRedirect(req.getContextPath()+"/Kitchen?method=show&pageNo="+pageNo);
    		   }else{
    			   req.getRequestDispatcher("/Backstage/editKitchenUI.jsp").forward(req, resp);
    		   }
		} catch (Exception e) {
			e.printStackTrace();
			req.getRequestDispatcher("/Backstage/editKitchenUI.jsp").forward(req, resp);
		}
       }
       private void editKitchenUI(HttpServletRequest req, HttpServletResponse resp) 
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
    		   KitchenService kService = new KitchenServiceImpl();
    		   Kitchen ke = kService.getById(id);
    		   List<Kitchen> kitList = kService.getFatherName();
    		   String names = ke.getFatherName();
    		   req.setAttribute("ke", ke);
    		   req.setAttribute("kitList", kitList);
    		   req.setAttribute("names", names);
    		   req.setAttribute("pageNo", pageNo);
    		   req.getRequestDispatcher("/Backstage/editKitchenUI.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       }
	private void kitchenUI(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		try {
			String pageNoStr = req.getParameter("pageNo");
			int pageNo = 1;
			if(null != pageNoStr && pageNoStr.trim().length() > 0) {
				pageNo = Integer.parseInt(pageNoStr);
			}
			if(pageNo ==0){
				pageNo=1;
			}
//			System.out.println(pageNo);
			KitchenService kService = new KitchenServiceImpl();
			List<Kitchen> kList = kService.getAll(pageNo);
			

			int rowCount = kService.getCount();
			int pageCount = rowCount%Constance.PAGESIZE==0?rowCount/Constance.PAGESIZE:rowCount/Constance.PAGESIZE+1;
			req.setAttribute("kList", kList);
			req.setAttribute("pageCount", pageCount);
			req.setAttribute("rowCount", rowCount);
			req.setAttribute("pageNo", pageNo);
//			resp.sendRedirect(req.getContextPath()+"/Backstage/snacksEveryWhere.jsp");
			req.getRequestDispatcher("/Backstage/kitchenTrick.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
