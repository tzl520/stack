package com.edu.view;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.bean.Admin;

/**
 * Servlet Filter implementation class IsLoginFilter
 */
public class IsLoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public IsLoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		Admin admin = (Admin) req.getSession().getAttribute("admin");
		System.out.println("1231321");
		if(null == admin){
			resp.sendRedirect(req.getContextPath()+"/Backstage/login.jsp");
		}else{
			req.setCharacterEncoding("UTF-8");
			chain.doFilter(req, resp);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
