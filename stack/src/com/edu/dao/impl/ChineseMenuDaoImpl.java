package com.edu.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.edu.bean.ChineseMenu;
import com.edu.bean.Snack;
import com.edu.constant.Constance;
import com.edu.dao.ChineseMenuDao;
import com.edu.util.DataSourceUtils;

public class ChineseMenuDaoImpl implements ChineseMenuDao {

	public List<ChineseMenu> getAll(int pageNo) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select m2.id id, m1.name fatherName,m2.name name,m2.img img,m2.title title from menufarther m1 ,menu m2 where m2.Mid = m1.id and sureid=1 order by m2.id limit ?,?";
		List<ChineseMenu> menuList = qr.query(sql, new BeanListHandler<ChineseMenu>(ChineseMenu.class),Constance.PAGESIZE*(pageNo-1),Constance.PAGESIZE);
		return menuList;
	}

	public int getCount() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) rowCount from menu";
		ChineseMenu menu = qr.query(sql, new BeanHandler<ChineseMenu>(ChineseMenu.class));
		return menu.getRowCount();
	}

	public int editById(ChineseMenu menu) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update menu set name = ?,img = ?,title = ?,Mid = (select id from menufarther where name = ?) where id = ?";
		int result = qr.update(sql, menu.getName(),menu.getImg(),menu.getTitle(),menu.getFatherName(),menu.getId());
		return result;
	}

	public List<ChineseMenu> getName() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select name fatherName from menufarther";
		List<ChineseMenu> menuList = qr.query(sql, new BeanListHandler<ChineseMenu>(ChineseMenu.class));
		return menuList;
	}

	public int add(ChineseMenu menu) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into menu(name,img,title,Mid,sureid) values(?,?,?,(select id from menufarther where name = ?),1)";
		int result = qr.update(sql, menu.getName(),menu.getImg(),menu.getTitle(),menu.getFatherName());
		return result;
	}

	public ChineseMenu getById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select m2.id id, m1.name fatherName,m2.name name,m2.img img,m2.title title from menufarther m1 ,menu m2 where m2.Mid = m1.id and m2.id = ?";
		ChineseMenu menu = qr.query(sql, new BeanHandler<ChineseMenu>(ChineseMenu.class),id);
		return menu;
	}

	public List<ChineseMenu> getFatherName() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select name fatherName from menufarther";
		return qr.query(sql, new BeanListHandler<ChineseMenu>(ChineseMenu.class));
	}

	public int deleteById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from menu where id = ?";
		int result = qr.update(sql, id);
		return result;
	}

}
