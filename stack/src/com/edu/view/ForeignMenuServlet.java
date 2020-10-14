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

import com.edu.bean.ChineseMenu;
import com.edu.bean.ForeignMenu;
import com.edu.constant.Constance;
import com.edu.service.ChineseMenuService;
import com.edu.service.ForeignMenuService;
import com.edu.service.impl.ChineseMenuServiceImpl;
import com.edu.service.impl.ForeignMenuServiceImpl;

/**
 * Servlet implementation class ForeignMenuServlet
 */
public class ForeignMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) 
    		throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
    	String method = req.getParameter("method");
    	if("menuUI".equals(method)){
    		menuUI(req,resp);
    	}else if("editmenuUI".equals(method)){
    		editmenuUI(req,resp);
    	}else if("editmenu".equals(method)){
    		editmenu(req,resp);
    	}else if("deletemenu".equals(method)){
    		deletemenu(req,resp);
    	}else if("addmenuUI".equals(method)) {
    		addmenuUI(req,resp);
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
   		ForeignMenu menu = new ForeignMenu();
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
   			        	menu.setFatherName(value);
   			        }else if("name".equals(name)) {
   			        	menu.setName(value);
   			        }else if("title".equals(name)) {
   			        	menu.setTitle(value);
   			        }
   			    } else {
   			    	String fieldName = item.getFieldName();
   			        String fileName = item.getName();
   			     menu.setImg("imgs/chinese"+fileName);
   			        String dir = req.getSession().getServletContext().getRealPath("/imgs/chinese");
   			        File uploadedFile = new File(dir,fileName);
   			        item.write(uploadedFile);
   			        System.out.println(dir);
   			    }
   			}
   			ForeignMenuService menuService = new ForeignMenuServiceImpl();
   			int reuslt = menuService.add(menu);
   			if(reuslt != 0) {
   				resp.sendRedirect(req.getContextPath()+"/ChineseMenu?method=menuUI&pageNo="+pageNo);
   			}
   		} catch (Exception e) {
   			// TODO Auto-generated catch block
   			e.printStackTrace();
   		}
		
	}
	private void addmenuUI(HttpServletRequest req, HttpServletResponse resp) 
    			throws ServletException, IOException {
		String pageNoStr = req.getParameter("pageNo");
		int pageNo = 1;
		if(null != pageNoStr && pageNoStr.trim().length() > 0) {
			pageNo = Integer.parseInt(pageNoStr);
		}
		System.out.println(pageNo);
		ForeignMenuService menuService = new ForeignMenuServiceImpl();
		try {
			List<ForeignMenu> menuList = menuService.getName();
			req.setAttribute("menuList", menuList);
			req.setAttribute("pageNo", pageNo);
			req.getRequestDispatcher("/Backstage/addfmenuUI.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       }
       private void deletemenu(HttpServletRequest req, HttpServletResponse resp) 
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
    		   ForeignMenuService menuService = new ForeignMenuServiceImpl();
    		   int result = menuService.deleteById(id);
    		   if(result != 0){
    			   req.setAttribute("pageNo", pageNo);
    			   resp.sendRedirect(req.getContextPath()+"/ChineseMenu?method=menuUI&pageNo="+pageNo);
    		   }
		} catch (Exception e) {
			e.printStackTrace();
		}
       }
       private void editmenu(HttpServletRequest req, HttpServletResponse resp) 
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
      		ForeignMenu menu = new ForeignMenu();
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
      			        	menu.setId(Integer.parseInt(value));
      			        }else if("fatherName".equals(name)) {
      			        	menu.setFatherName(value);
      			        }else if("name".equals(name)) {
      			        	menu.setName(value);
      			        }else if("title".equals(name)) {
      			        	menu.setTitle(value);
      			        }
      			    } else {
      			    	String fieldName = item.getFieldName();
      			        String fileName = item.getName();
      			      menu.setImg("imgs/chinese"+fileName);
      			        String dir = req.getSession().getServletContext().getRealPath("/imgs/chinese");
      			        File uploadedFile = new File(dir,fileName);
      			        item.write(uploadedFile);
      			        System.out.println(dir);
      			    }
      			}
      		ForeignMenuService menuService = new ForeignMenuServiceImpl();
    		   int result = menuService.editById(menu);
    		   if(result != 0){
    			   resp.sendRedirect(req.getContextPath()+"/ChineseMenu?method=menuUI&pageNo="+pageNo);
    		   }else{
    			   req.getRequestDispatcher("/Backstage/editfmenuUI.jsp").forward(req, resp);
    		   }
		} catch (Exception e) {
			e.printStackTrace();
			req.getRequestDispatcher("/Backstage/editfmenuUI.jsp").forward(req, resp);
		}
       }
       private void editmenuUI(HttpServletRequest req, HttpServletResponse resp) 
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
    		   ForeignMenuService menuService = new ForeignMenuServiceImpl();
    		   ForeignMenu menu = menuService.getById(id);
    		   List<ForeignMenu> muList = menuService.getFatherName();
    		   String names = menu.getFatherName();
    		   req.setAttribute("menu", menu);
    		   req.setAttribute("menus", muList);
    		   req.setAttribute("names", names);
    		   req.setAttribute("pageNo", pageNo);
    		   req.getRequestDispatcher("/Backstage/editfmenuUI.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       }
	private void menuUI(HttpServletRequest req, HttpServletResponse resp) 
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
			ForeignMenuService menuService = new ForeignMenuServiceImpl();
			List<ForeignMenu> menuList = menuService.getAll(pageNo);
			

			int rowCount = menuService.getCount();
			int pageCount = rowCount%Constance.PAGESIZE==0?rowCount/Constance.PAGESIZE:rowCount/Constance.PAGESIZE+1;
			req.setAttribute("menu", menuList);
			req.setAttribute("pageCount", pageCount);
			req.setAttribute("rowCount", rowCount);
			req.setAttribute("pageNo", pageNo);
//			resp.sendRedirect(req.getContextPath()+"/Backstage/snacksEveryWhere.jsp");
			req.getRequestDispatcher("/Backstage/foreignMenu.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
   

}
