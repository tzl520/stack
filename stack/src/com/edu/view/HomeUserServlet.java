package com.edu.view;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.edu.bean.Message;
import com.edu.bean.Pojo;
import com.edu.bean.User;
import com.edu.constant.Constance;
import com.edu.service.UserService;
import com.edu.service.impl.UserServiceImpl;
import com.edu.util.JsonUtil;
import com.edu.util.UUIDUtils;

/**
 * Servlet implementation class HomeUserServlet
 */
public class HomeUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String method = req.getParameter("method");
		if("registerUI".equals(method)) {
			registerUI(req,resp);
		} else if("register".equals(method)) {
			register(req,resp);
		} else if("active".equals(method)) {
			active(req,resp);
		} else if("loginUI".equals(method)) {
			loginUI(req,resp);
			
		} else if("checkLoginName".equals(method)) {
			checkLoginName(req,resp);
		}  else if("login".equals(method)) {
			login(req,resp);
		} else if("loginOut".equals(method)) {
			loginOut(req,resp);
		}else if("updateMyself".equals(method)){
			updateMyself(req,resp);
		}else if("updatePhoto".equals(method)){
			updatePhoto(req,resp);
		}else if("updatePwd".equals(method)){
			updatePwd(req,resp);
		}else if("getByName".equals(method)){
			getByName(req,resp);
		}else if("list".equals(method)){
			list(req,resp);
		}
		
		
		
		
	}
	private void list(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.getRequestDispatcher("/Foodstack/list.jsp").forward(req, resp);
	}
	private void getByName(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String name=req.getParameter("name");

		UserService stsv = new UserServiceImpl();
		try {
			System.out.println(name);
			List<Pojo> po = stsv.getSelect(name);
			req.setAttribute("po", po);
			req.setAttribute("name", name);
			req.getRequestDispatcher("/Foodstack/list.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	private void updatePwd(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String ids = req.getParameter("id");
		int id = Integer.parseInt(ids);
		String pwd = req.getParameter("password");
		User user = new User();
		user.setId(id);
		user.setLoginPwd(pwd);
		try {
			UserService userService = new UserServiceImpl();
			userService.updatePwd(user);
			User users = userService.getById(user.getId());
			req.getSession().setAttribute("user", users);
			resp.sendRedirect(req.getContextPath()+"/Foodstack/index.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void updatePhoto(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
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
//   			        item.write(uploadedFile);
   			        map.put("img", "imgs/user/"+fileName);
   			    }
   			}
   			BeanUtils.copyProperties(user, map);
   			UserService userService = new UserServiceImpl();
   			userService.updatePhoto(user);
   			User users = userService.getById(user.getId());
   			req.getSession().setAttribute("user", users);
 			resp.sendRedirect(req.getContextPath()+"/Foodstack/index.jsp");
		} catch (Exception e) {
			e.printStackTrace();
//			req.getRequestDispatcher("/Backstage/editmenuUI.jsp").forward(req, resp);
		}
		
	}
	private void updateMyself(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String ids = req.getParameter("id");
		int id = Integer.parseInt(ids);
		String email = req.getParameter("email");
		String name =  req.getParameter("name");
		String gender = req.getParameter("gender");
		String birthday = req.getParameter("birthday");
		String phone = req.getParameter("phone");
		User user = new User();
		user.setId(id);
		user.setEmail(email);
		user.setName(name);
		if("1".equals(gender)){
			user.setSex(Constance.SEX_MEN);
		}else if("2".equals(gender)){
			user.setSex(Constance.SEX_WOMEN);
		}
		user.setBirthday(birthday);
		user.setPhone(phone);
		try {
			UserService userService = new UserServiceImpl();
			userService.updateMyself(user);
			User users = userService.getById(user.getId());
   			req.getSession().setAttribute("user", users);
			resp.sendRedirect(req.getContextPath()+"/Foodstack/index.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void loginOut(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getSession().invalidate(); 
		resp.sendRedirect("Foodstack/index.jsp");
	}
	private void login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String loginName = req.getParameter("loginname");
		String pwd = req.getParameter("password");
		String ck = req.getParameter("ck");
		String cks = req.getParameter("cks");
		UserService userService = new UserServiceImpl() ;
		try {
			User user = userService.getUserByName(loginName) ;
			if(null == user) {
				req.setAttribute("msg", "登录失败，请重新登录");
				req.getRequestDispatcher("/msg.jsp").forward(req, resp);
				return ;
			}
			if(!user.getLoginPwd().equals(pwd)) {
				req.setAttribute("msg", "登录失败，请重新登录");
				req.getRequestDispatcher("/msg.jsp").forward(req, resp);
				return ;
			}
			if(user.getState() != Constance.USER_ACTIVE) {
				req.setAttribute("msg", "用户没有激活，请去邮箱激活");
				req.getRequestDispatcher("/msg.jsp").forward(req, resp);
				return ;
			}
			if("ok".equals(ck)) {
				Cookie cookie = new Cookie("username", URLEncoder.encode(user.getLoginName(), "UTF-8")) ;
				cookie.setMaxAge(60*60); 
				resp.addCookie(cookie);
				Cookie cookies = new Cookie("userpwd", URLEncoder.encode(user.getLoginPwd(), "UTF-8")) ;
				cookies.setMaxAge(60*60); 
				resp.addCookie(cookies);
				if("ok".equals(cks)){
					Cookie cook = new Cookie("cks",cks);
					cook.setMaxAge(60*60);
					resp.addCookie(cook);
				}
			}
			req.getSession().setAttribute("user", user);
			User users = (User) req.getSession().getAttribute("user");
			resp.sendRedirect(req.getContextPath()+"/Foodstack/index.jsp");
		} catch (Exception e) {
			req.setAttribute("msg", "登录失败，请重新登录");
			req.getRequestDispatcher("/msg.jsp").forward(req, resp);
		}
		
	}
//	private void checkCode(HttpServletRequest req, HttpServletResponse resp)
//			throws ServletException, IOException {
//		String code = req.getParameter("code") ;
//		String ck_code = (String) req.getSession().getAttribute("checkcode_session");
//		Message message = null ;
//		if(code.trim().equals(ck_code.trim())) {
//			// ������
//			message = new Message(200, "��֤��ɹ�") ;
//		} else {
//			// ��������
//			message = new Message(500,"��֤���������");
//		}
//		// Ҫ�����message���� ת����json��ʽ��д��ȥ gson ,jackson,fastjson
//		String str = JsonUtil.obj2json(message) ;
//		// ���ַ������ػ�ȥ
//		resp.setContentType("text/html;charset=UTF-8");
//		PrintWriter out = resp.getWriter();
//		out.println(str);
//		out.flush();
//		out.close();
//	}
	/**
	 * У���¼���Ƿ����
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void checkLoginName(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = req.getParameter("name");
		UserService userService = new UserServiceImpl() ;
		try {
			User user = userService.getUserByName(name);
			Message message = null ;
			if(null == user) {
				message = new Message(200, "当前用户可以使用") ;
			} else {
				message = new Message(500,"当前用户已经存在",user);
			}
			String str = JsonUtil.obj2json(message) ;
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println(str);
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	private void loginUI(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/Foodstack/menu.jsp").forward(req, resp);
	}
	private void active(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String code = req.getParameter("code") ;
		try {
			UserService userService = new UserServiceImpl() ;
			User user = userService.getUserByCode(code);
			if(null == user) {
				req.setAttribute("msg", "激活失败，请重新注册");
				req.getRequestDispatcher("/msg.jsp").forward(req, resp);
				return ;
			}	
			user.setState(Constance.USER_ACTIVE);
			user.setCode(null);
			userService.update(user);
			req.setAttribute("msg", "激活成功,请<a href='http://localhost:8888/stack/Foodstack/menu.jsp'>登录</a>");
			req.getRequestDispatcher("/msg.jsp").forward(req, resp);
		} catch (Exception e) {
			req.setAttribute("msg", "激活失败，请重新注册");
			req.getRequestDispatcher("/msg.jsp").forward(req, resp);
		}
		
	}
	private void register(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String loginname = req.getParameter("loginname");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String birthday = req.getParameter("birthday");
		String gender = req.getParameter("gender");
		try {
			User user = new User();
			user.setLoginName(loginname);
			user.setName(username);
			user.setLoginPwd(password);
			user.setEmail(email);
			user.setBirthday(birthday);
			user.setImg("imgs/user/m.jpg");
			if("male".equals(gender)) {
				user.setSex(Constance.SEX_MEN);
			}else if("female".equals(gender)) {
				user.setSex(Constance.SEX_WOMEN);
			}else {
				user.setSex(1);
			}
			user.setCode(UUIDUtils.getCode());
			user.setState(Constance.USER_UNACTIVE);
			user.setIsLogin(0);
//			user.setId(UUIDUtils.getId());
			
			UserService userService = new UserServiceImpl();
			userService.register(user);
			req.setAttribute("msg", "注册成功,请登录邮箱激活");
			req.getRequestDispatcher("/msg.jsp").forward(req, resp);
		} catch (Exception e) {
			req.setAttribute("msg", "注册失败，请重新注册");
			req.getRequestDispatcher("/msg.jsp").forward(req, resp);
		}
		
		
	}
	private void registerUI(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		req.getRequestDispatcher("/store/register.jsp").forward(req, resp);
	}
 

}
