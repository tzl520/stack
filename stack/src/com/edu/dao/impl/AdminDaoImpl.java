package com.edu.dao.impl;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.edu.bean.Admin;
import com.edu.dao.AdminDao;
import com.edu.util.DataSourceUtils;

public class AdminDaoImpl implements AdminDao {

	public Admin isLogin(String name, String pwd) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from administrators where username = ? and pwd = ?";
		Admin admin = null;
		try {
			admin = qr.query(sql, new BeanHandler<Admin>(Admin.class), name,pwd);
			return admin;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public int getIdByTime() throws SQLException {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String dates = df.format(date);
		System.out.println(dates);
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		int id = ((Long)qr.query("select count(*) id from user where newDate=?",new ScalarHandler(),dates)).intValue();
		return id;
	}

	public int getIdCount() throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		int id = ((Long)qr.query("select count(*) id from user",new ScalarHandler())).intValue();
		return id;
	}

	public int getSnackCount() throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		int id = ((Long)qr.query("select count(*) id from snacks where sureid=?",new ScalarHandler(),1)).intValue();
		return id;
	}

	public int getmenuCount() throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		int id = ((Long)qr.query("select count(*) id from menu where sureid=?",new ScalarHandler(),1)).intValue();
		return id;
	}

	public int getforeignCount() throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		int id = ((Long)qr.query("select count(*) id from foreigns where sureid=?",new ScalarHandler(),1)).intValue();
		return id;
	}

}
