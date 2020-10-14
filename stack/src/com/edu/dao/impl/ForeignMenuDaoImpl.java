package com.edu.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.edu.bean.ForeignMenu;
import com.edu.constant.Constance;
import com.edu.dao.ForeignMenuDao;
import com.edu.util.DataSourceUtils;

public class ForeignMenuDaoImpl implements ForeignMenuDao {
	public List<ForeignMenu> getAll(int pageNo) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select f2.id id, f1.name fatherName,f2.name name,f2.img img,f2.title title from foreignfarther f1 ,foreigns f2 where f2.Fid = f1.id and sureid=1 order by f2.id limit ?,?";
		List<ForeignMenu> menuList = qr.query(sql, new BeanListHandler<ForeignMenu>(ForeignMenu.class),Constance.PAGESIZE*(pageNo-1),Constance.PAGESIZE);
		return menuList;
	}

	public int getCount() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) rowCount from foreigns";
		ForeignMenu menu = qr.query(sql, new BeanHandler<ForeignMenu>(ForeignMenu.class));
		return menu.getRowCount();
	}

	public int editById(ForeignMenu menu) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update foreigns set name = ?,img = ?,title = ?,Fid = (select id from foreignfarther where name = ?) where id = ?";
		int result = qr.update(sql, menu.getName(),menu.getImg(),menu.getTitle(),menu.getFatherName(),menu.getId());
		return result;
	}

	public List<ForeignMenu> getName() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select name fatherName from foreignfarther";
		List<ForeignMenu> menuList = qr.query(sql, new BeanListHandler<ForeignMenu>(ForeignMenu.class));
		return menuList;
	}

	public int add(ForeignMenu menu) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into foreigns(name,img,title,Fid,sureid) values(?,?,?,(select id fromforeignfarther where name = ?),1)";
		int result = qr.update(sql, menu.getName(),menu.getImg(),menu.getTitle(),menu.getFatherName());
		return result;
	}

	public ForeignMenu getById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select f2.id id, f1.name fatherName,f2.name name,f2.img img,f2.title title from foreignfarther f1 ,foreigns f2 where f2.Fid = f1.id and f2.id = ?";
		ForeignMenu menu = qr.query(sql, new BeanHandler<ForeignMenu>(ForeignMenu.class),id);
		return menu;
	}

	public List<ForeignMenu> getFatherName() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select name fatherName from foreignfarther";
		return qr.query(sql, new BeanListHandler<ForeignMenu>(ForeignMenu.class));
	}

	public int deleteById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from foreigns where id = ?";
		int result = qr.update(sql, id);
		return result;
	}

}
