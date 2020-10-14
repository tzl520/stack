package com.edu.service.impl;

import java.util.List;

import com.edu.bean.Pojo;
import com.edu.bean.User;
import com.edu.constant.Constance;
import com.edu.dao.UserDao;
import com.edu.dao.impl.UserDaoImpl;
import com.edu.service.UserService;
import com.edu.util.MailUtils;

public class UserServiceImpl implements UserService {

	public int deleteById(int id) throws Exception {
		UserDao userDao = new UserDaoImpl();
		return userDao.deleteById(id);
	}

	public List<User> getAll(int pageNo) throws Exception {
		UserDao userDao = new UserDaoImpl();
		return userDao.getAll(pageNo);
	}

	public int getCount() throws Exception {
		UserDao userDao = new UserDaoImpl();
		return userDao.getCount();
	}

	public User getById(int id) throws Exception {
		UserDao userDao = new UserDaoImpl();
		return userDao.getById(id);
	}

	public void editById(User user) throws Exception {
		UserDao userDao = new UserDaoImpl();
		userDao.editById(user);
	}
	public void register(User user) throws Exception {
		UserDao userDao = new UserDaoImpl();
		userDao.register(user);
		MailUtils.sendMail(user.getEmail(), null,"请<a href='http://localhost:8888/stack/HomeUser?method=active&code="+user.getCode()+"'>激活</a>");
	}

	public void update(User user) throws Exception {
		UserDao userDao = new UserDaoImpl();
		userDao.update(user);
		
	}

	public User getUserByCode(String code) throws Exception {
		UserDao userDao = new UserDaoImpl();
		return userDao.getUserByCode(code);
	}

	public User getUserByName(String name) throws Exception {
		UserDao userDao = new UserDaoImpl();
		User user = userDao.getUserByName(name);
		if(user != null){
			user.setIsLogin(Constance.LOGIN);
			userDao.updateIsLogin(user);
		}
		return user;
				
	}

	public void updateMyself(User user) throws Exception {
		UserDao userDao = new UserDaoImpl();
		userDao.updateMyslef(user);
	}

	public void updatePhoto(User user) throws Exception {
		UserDao userDao = new UserDaoImpl();
		userDao.updatePhoto(user);
	}

	public void updatePwd(User user) throws Exception {
		UserDao userDao = new UserDaoImpl();
		userDao.updatePwd(user);
	}

	public List<Pojo> getSelect(String name) throws Exception {
		UserDao sd=new UserDaoImpl();
		return sd.getSelect(name);
	}
}
