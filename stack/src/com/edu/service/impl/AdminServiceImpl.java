package com.edu.service.impl;

import java.sql.SQLException;

import com.edu.bean.Admin;
import com.edu.dao.AdminDao;
import com.edu.dao.impl.AdminDaoImpl;
import com.edu.service.AdminService;

public class AdminServiceImpl implements AdminService {

	public Admin isLogin(String name, String pwd) {
		AdminDao adminDao = new AdminDaoImpl();
		return adminDao.isLogin(name,pwd);
	}

	public int getIdByTime() throws SQLException {
		AdminDao adminDao = new AdminDaoImpl();
		return adminDao.getIdByTime();
	}

	public int getIdCount() throws SQLException {
		AdminDao adminDao = new AdminDaoImpl();
		return adminDao.getIdCount();
	}

	public int getSnackCount() throws SQLException {
		AdminDao adminDao = new AdminDaoImpl();
		return adminDao.getSnackCount();
	}

	public int getmenuCount() throws SQLException {
		AdminDao adminDao = new AdminDaoImpl();
		return adminDao.getmenuCount();
	}

	public int getforeignCount() throws SQLException {
		AdminDao adminDao = new AdminDaoImpl();
		return adminDao.getforeignCount();
	}

}
