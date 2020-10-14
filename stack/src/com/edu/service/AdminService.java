package com.edu.service;

import java.sql.SQLException;

import com.edu.bean.Admin;

public interface AdminService {

	Admin isLogin(String name, String pwd);

	int getIdByTime() throws SQLException;

	int getIdCount() throws SQLException;

	int getSnackCount() throws SQLException;

	int getmenuCount() throws SQLException;

	int getforeignCount() throws SQLException;

}
