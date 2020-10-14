package com.edu.view;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.bean.Father;
import com.edu.bean.Snack;
import com.edu.service.SnackService;
import com.edu.service.impl.SnackServiceImpl;

/**
 * Servlet implementation class HomeSnackServlet
 */
public class HomeSnackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String method = req.getParameter("method");
		if("show".equals(method)){
			show(req,resp);
		}else if("list".equals(method)){
			list(req,resp);
		}
	}
	private void list(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		try {
			SnackService snackService = new SnackServiceImpl();
			List<Father> fasList = snackService.getSnackType();
			req.setAttribute("faList", fasList);
			req.getRequestDispatcher("Foodstack/header/home_header.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void show(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String snacks = req.getParameter("snacks");
		try {
			SnackService snackService = new SnackServiceImpl();
			List<Snack> scList = snackService.getBySnacks(snacks);
			req.setAttribute("scList", scList);
			req.getRequestDispatcher("Foodstack/"+snacks+".jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private void getSnacks(String snacks){
		
	}
}
