package com.edu.view;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.edu.bean.ChineseMenu;
import com.edu.bean.User;
import com.edu.constant.Constance;
import com.edu.service.ChineseMenuService;
import com.edu.service.ForeignMenuService;
import com.edu.service.UserService;
import com.edu.service.impl.ChineseMenuServiceImpl;
import com.edu.service.impl.ForeignMenuServiceImpl;
import com.edu.service.impl.UserServiceImpl;

/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String method = req.getParameter("method");
		if("show".equals(method)){
			show(req,resp);
		}else if("editUserUI".equals(method)){
			editUserUI(req,resp);
		}else if("editUser".equals(method)){
			editUser(req,resp);
		}else if("deleteUser".equals(method)){
			deleteUser(req,resp);
		}
	}
	private void deleteUser(HttpServletRequest req, HttpServletResponse resp) 
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
  		   UserService userService = new UserServiceImpl();
  		   int result = userService.deleteById(id);
  		   if(result != 0){
  			   req.setAttribute("pageNo", pageNo);
  			   resp.sendRedirect(req.getContextPath()+"/User?method=show&pageNo="+pageNo);
  		   }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	private void editUser(HttpServletRequest req, HttpServletResponse resp) 
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
	      		User user = new User();
	      		Map<String, Object> map = new HashMap<String, Object>();
	      		// Parse the request
	      		try {
	      			List<FileItem> items = upload.parseRequest(req);
	      			Iterator<FileItem> iter = items.iterator();
	      			while (iter.hasNext()) {
	      			    FileItem item = iter.next();
	      			    if (item.isFormField()) {
	      			    	String name = item.getFieldName();
	      			        String value = item.getString("UTF-8");
	      			       map.put(name, value);
	      			    } else {
	      			        String fileName = item.getName();
	      			        String dir = getServletContext().getRealPath("/imgs/user/");
	      			        File uploadedFile = new File(dir,fileName);
//	      			        item.write(uploadedFile);
	      			        map.put("img", "imgs/user/"+fileName);
	      			    }
	      			}
	      			BeanUtils.copyProperties(user, map);
	      			UserService userService = new UserServiceImpl();
	      			userService.editById(user);
	    			resp.sendRedirect(req.getContextPath()+"/User?method=show&pageNo="+pageNo);
			} catch (Exception e) {
				e.printStackTrace();
				req.getRequestDispatcher("/Backstage/editmenuUI.jsp").forward(req, resp);
			}
		
	}
	private void editUserUI(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String pageNoStr = req.getParameter("pageNo");
		int pageNo = 1;
		if(null != pageNoStr && pageNoStr.trim().length() > 0) {
			pageNo = Integer.parseInt(pageNoStr);
		}
		if(pageNo ==0){
			pageNo=1;
		}
		 String ids = req.getParameter("id");
  	   int id = 0;
  	   if(null != ids && ids.trim().length() != 0){
  		   id = Integer.parseInt(ids);
  	   }
  	   System.out.println(id);
  	 try {
		UserService userService = new UserServiceImpl();
		 User user = userService.getById(id);
		 req.setAttribute("pageNo", pageNo);
		 req.setAttribute("user", user);
		 req.getRequestDispatcher("Backstage/editMaintenance.jsp").forward(req, resp);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	private void show(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String pageNoStr = req.getParameter("pageNo");
		int pageNo = 1;
		if(null != pageNoStr && pageNoStr.trim().length() > 0) {
			pageNo = Integer.parseInt(pageNoStr);
		}
		if(pageNo ==0){
			pageNo=1;
		}
		try {
			UserService userService = new UserServiceImpl();
			List<User> userList = userService.getAll(pageNo);
			int rowCount = userService.getCount();
			int pageCount = rowCount%Constance.PAGESIZE==0?rowCount/Constance.PAGESIZE:rowCount/Constance.PAGESIZE+1;
			req.setAttribute("pageNo", pageNo);
			req.setAttribute("userList", userList);
			req.setAttribute("pageCount", pageCount);
			req.getRequestDispatcher("Backstage/informationMaintenance.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
