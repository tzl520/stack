package com.edu.dao.impl;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.edu.bean.ChineseMenu;
import com.edu.bean.Pojo;
import com.edu.bean.User;
import com.edu.constant.Constance;
import com.edu.dao.UserDao;
import com.edu.util.DataSourceUtils;

public class UserDaoImpl implements UserDao {

	public int deleteById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from user where id = ?";
		int result = qr.update(sql, id);
		return result;
	}

	public List<User> getAll(int pageNo) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select id, login_name loginName,login_pwd loginPwd, name,img, email, sex, phone from user order by id limit ?,?";
		List<User> userList = qr.query(sql, new BeanListHandler<User>(User.class),Constance.PAGESIZE*(pageNo-1),Constance.PAGESIZE);
		return userList;
	}

	public int getCount() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) rowCount from user";
		User user = qr.query(sql, new BeanHandler<User>(User.class));
		return user.getRowCount();
	}

	public User getById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select id, login_name loginName,login_pwd loginPwd, name,img, email, sex,birthday, phone from user where id = ?";
		User user = qr.query(sql, new BeanHandler<User>(User.class),id);
		return user;
	}

	public void editById(User user) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		qr.update("update user set name=?,img=?,sex=?,email=?,phone=? where id=?",
				user.getName(),user.getImg(),user.getSex(),user.getEmail(),user.getPhone(),user.getId());
	}
	public void register(User user) throws SQLException {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String dates = df.format(date);
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql ="insert into user(login_name,login_pwd,name,img,email,sex,birthday,phone,code,state,isLogin,newDate) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?)" ;
		qr.update(sql,user.getLoginName(), //
				user.getLoginPwd(),user.getName(),user.getImg(),user.getEmail(),user.getSex(),user.getBirthday(),user.getPhone(),//
				user.getCode(),user.getState(),user.getIsLogin(),dates);
		
	}

	public User getUserByCode(String code) throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql ="select id,login_name loginName,login_pwd loginPwd,name,img,email,phone,sex,code,state from user where code=?";
		return qr.query(sql, new BeanHandler<User>(User.class), code);
	}

	public void update(User user) throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql = "update user set code=?,state=? where id=?" ;
		qr.update(sql, user.getCode(),user.getState(),user.getId()) ;
		
	}

	public User getUserByName(String name) throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql ="select id,login_name loginName,login_pwd loginPwd,name,img,email,sex,birthday,phone,code,state,isLogin from user where login_name=?";
		return qr.query(sql, new BeanHandler<User>(User.class), name);
	}

	public void updateIsLogin(User user) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql ="update user set isLogin = ? where id = ?";
		qr.update(sql, user.getIsLogin(),user.getId());
	}

	public void updateMyslef(User user) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql ="update user set email = ?,name=?,sex=?,birthday=?,phone=? where id = ?";
		qr.update(sql,user.getEmail(),user.getName(),user.getSex(),user.getBirthday(),user.getPhone(),user.getId());
	}

	public void updatePhoto(User user) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql ="update user set img = ? where id = ?";
		qr.update(sql,user.getImg(),user.getId());
	}

	public void updatePwd(User user) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql ="update user set login_pwd = ? where id = ?";
		qr.update(sql,user.getLoginPwd(),user.getId());
	}

	public List<Pojo> getSelect(String name) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		List<Pojo> po = qr.query("select id,name,img,title from snacks where name like ?", //
				new BeanListHandler<Pojo>(Pojo.class),"%"+name+"%");
		System.out.println(name);
		return po;
	}
	public static void main(String[] args) {
		try {
			List<Pojo> pj = new UserDaoImpl().getSelect("老北");
			System.out.println(pj);
			for(Pojo pjs : pj){
				System.out.println(pjs.getId());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
