package com.edu.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.bean.Admin;
import com.edu.bean.Message;
import com.edu.service.AdminService;
import com.edu.service.impl.AdminServiceImpl;
import com.edu.util.JsonUtil;

/**
 * Servlet implementation class AdminServlet
 */
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String method = req.getParameter("method");
		if("login".equals(method)) {
			login(req,resp);
		}else if("checkCode".equals(method)){
			checkCode(req,resp);
		}else if("logout".equals(method)){
			logout(req,resp);
		}else if("getTime".equals(method)){
			getTime(req,resp);
		}else if("getCount".equals(method)){
			getCount(req,resp);
		}
	}
	private void getCount(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		AdminService adminService = new AdminServiceImpl();
		try {
			int Count1 = adminService.getSnackCount();
			int Count2 = adminService.getmenuCount();
			int Count3 = adminService.getforeignCount();
			List<Integer> inList = new ArrayList<Integer>();
			inList.add(Count1);
			inList.add(Count2);
			inList.add(Count3);
			String str = JsonUtil.obj2json(inList) ;
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println(str);
			out.flush();
			out.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void getTime(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		AdminService adminService = new AdminServiceImpl();
		try {
			int idCount = adminService.getIdByTime();
			int idRowCount = adminService.getIdCount();
			List<Integer> inList = new ArrayList<Integer>();
			inList.add(idCount);
			inList.add(idRowCount);
			String str = JsonUtil.obj2json(inList) ;
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println(str);
			out.flush();
			out.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private void logout(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		Cookie[] cookies = req.getCookies();
		if(null != cookies && cookies.length > 1){
			for(Cookie cookie : cookies){
				cookie.setValue("");
				cookie.setMaxAge(0);
				cookie.setPath(req.getContextPath()+"/");
				resp.addCookie(cookie);
			}
		}
		resp.sendRedirect(req.getContextPath()+"/Backstage/login.jsp");
	}
	private void checkCode(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String code = req.getParameter("code").toUpperCase() ;
		String ckcode = (String)req.getSession().getAttribute("checkcode");
		Message message = null ;
		if(code.equals(ckcode)) {
			// ������
			message = new Message(200, "��֤�ɹ�") ;
		} else {
			// ��������
			message = new Message(500,"��֤ʧ��");
		}
		// Ҫ�����message���� ת����json��ʽ��д��ȥ gson ,jackson,fastjson
		String str = JsonUtil.obj2json(message) ;
		// ���ַ������ػ�ȥ
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println(str);
		out.flush();
		out.close();
	}
	private void login(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String name = req.getParameter("name");
		String pwd = req.getParameter("pwd");
		String ck = req.getParameter("ck");
		AdminService adminService = new AdminServiceImpl();
		Admin admin = adminService.isLogin(name,pwd);
		if(null == admin) {
			
		}
		req.getSession().setAttribute("admin", admin);
		if("ok".equals(ck)){
			Cookie cookie = new Cookie("pwd", URLEncoder.encode(admin.getPwd(), "UTF-8")) ;
			cookie.setMaxAge(60*60*24); 
			cookie.setPath(req.getContextPath()+"/");
			resp.addCookie(cookie);
			
		}
		try {
			resp.sendRedirect(req.getContextPath()+"/Backstage/home.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
