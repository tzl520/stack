package com.edu.view;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.bean.Audit;
import com.edu.constant.Constance;
import com.edu.service.AuditService;
import com.edu.service.ChineseMenuService;
import com.edu.service.impl.AuditServiceImpl;
import com.edu.service.impl.ChineseMenuServiceImpl;

/**
 * Servlet implementation class AuditServlet
 */
public class AuditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String method = req.getParameter("method");
		if("show".equals(method)){
			show(req,resp);
		}else if("adopt".equals(method)){
			adopt(req,resp);
		}else if("failed".equals(method)){
			failed(req,resp);
		}
	}
	private void failed(HttpServletRequest req, HttpServletResponse resp) 
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
 		  AuditService auditService = new AuditServiceImpl();
 		  auditService.deleteById(id);
 		  req.setAttribute("pageNo", pageNo);
 		  resp.sendRedirect(req.getContextPath()+"/Audit?method=show&pageNo="+pageNo);
 		   
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	private void adopt(HttpServletRequest req, HttpServletResponse resp) 
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
		  AuditService auditService = new AuditServiceImpl();
		  auditService.adopt(id);
		  req.setAttribute("pageNo", pageNo);
		  resp.sendRedirect(req.getContextPath()+"/Audit?method=show&pageNo="+pageNo);
		   
		} catch (Exception e) {
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
			AuditService auditService = new AuditServiceImpl();
			List<Audit> audLsit = auditService.getAll(pageNo);
			int rowCount = auditService.getCount();
			int pageCount = rowCount%Constance.PAGESIZE==0?rowCount/Constance.PAGESIZE:rowCount/Constance.PAGESIZE+1;
			
			req.setAttribute("pageNo", pageNo);
			req.setAttribute("pageCount", pageCount);
			req.setAttribute("audList", audLsit);
			req.getRequestDispatcher("Backstage/userAudit.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
