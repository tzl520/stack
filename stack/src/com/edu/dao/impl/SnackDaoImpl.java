package com.edu.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.edu.bean.Father;
import com.edu.bean.Snack;
import com.edu.constant.Constance;
import com.edu.dao.SnackDao;
import com.edu.util.DataSourceUtils;

public class SnackDaoImpl implements SnackDao {

	public List<Snack> getAll(int pageNo) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select s2.id id, s1.name fatherName,s2.name name,s2.img img,s2.title title from snacksfarther s1 ,snacks s2 where s2.Sid = s1.id and sureid=1 order by s2.id limit ?,?";
		List<Snack> sncakList = qr.query(sql, new BeanListHandler<Snack>(Snack.class),Constance.PAGESIZE*(pageNo-1),Constance.PAGESIZE);
		return sncakList;

	}

	public Snack getById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select s2.id id, s1.name fatherName,s2.name name,s2.img img,s2.title title from snacksfarther s1 ,snacks s2 where s2.Sid = s1.id and s2.id = ?";
		Snack sncak = qr.query(sql, new BeanHandler<Snack>(Snack.class),id);
		return sncak;
	}

	public int editById(Snack snack) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update snacks set name = ?,img = ?,title = ?,Sid = (select id from snacksfarther where name = ?) where id = ?";
		int result = qr.update(sql, snack.getName(),snack.getImg(),snack.getTitle(),snack.getFatherName(),snack.getId());
		return result;
	}

	public int deleteById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from snacks where id = ?";
		int result = qr.update(sql, id);
		return result;
	}

	public List<Snack> getName() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select name fatherName from snacksfarther";
		List<Snack> sncakList = qr.query(sql, new BeanListHandler<Snack>(Snack.class));
		return sncakList;
	}

	public int add(Snack snack) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into snacks(name,img,title,Sid,sureid) values(?,?,?,(select id from snacksfarther where name = ?),1)";
		int result = qr.update(sql, snack.getName(),snack.getImg(),snack.getTitle(),snack.getFatherName());
		return result;
	}

	public int getCount() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) rowCount from snacks";
		Snack snack = qr.query(sql, new BeanHandler<Snack>(Snack.class));
		return snack.getRowCount();
	}

	public List<Snack> getFatherName() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select name fatherName from snacksfarther";
		return qr.query(sql, new BeanListHandler<Snack>(Snack.class));
	}

	public List<Snack> getBySnacks(String snacks) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select s2.id id, s1.name fatherName,s2.name name,s2.img img,s2.title title from snacksfarther s1 ,snacks s2 where s2.Sid = s1.id and s2.Sid = (select id from snacksfarther where name= ?) limit 0,9";
		return qr.query(sql, new BeanListHandler<Snack>(Snack.class),snacks);
	}

	public List<Father> getSnackType() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select id,name from snacksfarther";
		return qr.query(sql, new BeanListHandler<Father>(Father.class));
	}
}
