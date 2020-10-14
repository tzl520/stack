package com.edu.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.edu.bean.ChineseMenu;
import com.edu.bean.Kitchen;
import com.edu.constant.Constance;
import com.edu.dao.KitchenDao;
import com.edu.util.DataSourceUtils;

public class KitchenDaoImpl implements KitchenDao {

	public List<Kitchen> getAll(int pageNo) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select k2.id id, k1.name fatherName,k2.name name,k2.img img,k2.title title from kitchenfarther k1 ,kitchen k2 where k2.Kid = k1.id and sureid=1 order by k2.id limit ?,?";
		List<Kitchen> kitList = qr.query(sql, new BeanListHandler<Kitchen>(Kitchen.class),Constance.PAGESIZE*(pageNo-1),Constance.PAGESIZE);
		return kitList;
	}

	public int getCount() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) rowCount from kitchen";
		Kitchen kit = qr.query(sql, new BeanHandler<Kitchen>(Kitchen.class));
		return kit.getRowCount();
	}

	public int editById(Kitchen kit) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update kitchen set name = ?,img = ?,title = ?,Kid = (select id from kitchenfarther where name = ?) where id = ?";
		int result = qr.update(sql, kit.getName(),kit.getImg(),kit.getTitle(),kit.getFatherName(),kit.getId());
		return result;
	}

	public List<Kitchen> getName() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select name fatherName from kitchenfarther";
		List<Kitchen> kitList = qr.query(sql, new BeanListHandler<Kitchen>(Kitchen.class));
		return kitList;
	}

	public int add(Kitchen kit) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into kitchen(name,img,title,Kid,sureid) values(?,?,?,(select id from kitchenfarther where name = ?),1)";
		int result = qr.update(sql, kit.getName(),kit.getImg(),kit.getTitle(),kit.getFatherName());
		return result;
	}

	public Kitchen getById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select k2.id id, k1.name fatherName,k2.name name,k2.img img,k2.title title from kitchenfarther k1 ,kitchen k2 where k2.Kid = k1.id and k2.id = ?";
		Kitchen menu = qr.query(sql, new BeanHandler<Kitchen>(Kitchen.class),id);
		return menu;
	}

	public List<Kitchen> getFatherName() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select name fatherName from kitchenfarther";
		return qr.query(sql, new BeanListHandler<Kitchen>(Kitchen.class));
	}

	public int deleteById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from kitchen where id = ?";
		int result = qr.update(sql, id);
		return result;
	}
}
