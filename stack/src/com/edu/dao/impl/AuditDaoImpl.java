package com.edu.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.edu.bean.Audit;
import com.edu.bean.Father;
import com.edu.constant.Constance;
import com.edu.dao.AuditDao;
import com.edu.util.DataSourceUtils;

public class AuditDaoImpl implements AuditDao {

	public List<Audit> getAll(int pageNo) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select id,name,fatherName,img,title,uid,uploadid,tableName from uploadcookbook order by id limit ?,?";
		List<Audit> audList = qr.query(sql, new BeanListHandler<Audit>(Audit.class),Constance.PAGESIZE*(pageNo-1),Constance.PAGESIZE);
		return audList;
	}

	public int getCount() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) rowCount from menu";
		Audit audit = qr.query(sql, new BeanHandler<Audit>(Audit.class));
		return audit.getRowCount();
	}

	public void deleteById(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		try {
			DataSourceUtils.startTransation();
			String sql = "select id,name,fatherName,img,title,uid,uploadid,tableName from uploadcookbook where id = ? ";
			Audit aud = qr.query(sql, new BeanHandler<Audit>(Audit.class),id);
			if("snacks".equals(aud.getTableName())){
				sql = "delete from snacks where id=?";
				delete(sql,qr,aud.getUploadid());
			}else if("menu".equals(aud.getTableName())){
				sql = "delete from menu where id=?";
				delete(sql,qr,aud.getUploadid());
			}else if("kitchen".equals(aud.getTableName())){
				sql = "delete from kitchen where id=?";
				delete(sql,qr,aud.getUploadid());
			}else if("foreigns".equals(aud.getTableName())){
				sql = "delete from foreigns where id=?";
				delete(sql,qr,aud.getUploadid());
			}
			sql = "delete from uploadcookbook where id = ?";
			delete(sql,qr,aud.getId());
			DataSourceUtils.commitAndRelease();
		} catch (Exception e) {
			DataSourceUtils.rollbackTransaction();
			e.printStackTrace();
		}
		
	}
	private void delete(String sql,QueryRunner qr,int id) throws SQLException{
		qr.update(sql, id);
	}

	public void adopt(int id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		try {
			DataSourceUtils.startTransation();
			String sql = "select id,name,fatherName,img,title,uid,uploadid,tableName from uploadcookbook where id = ? ";
			Audit aud = qr.query(sql, new BeanHandler<Audit>(Audit.class),id);
			if("sncaks".equals(aud.getTableName())){
				sql = "update snacks set sureid=? where id=?";
				update(sql,qr,1,aud.getUploadid());
			}else if("menu".equals(aud.getTableName())){
				sql = "update menu set sureid=? where id=?";
				update(sql,qr,1,aud.getUploadid());
			}else if("kitchen".equals(aud.getTableName())){
				sql = "update kitchen set sureid=? where id=?";
				update(sql,qr,1,aud.getUploadid());
			}else if("foreigns".equals(aud.getTableName())){
				sql = "update foreigns set sureid=? where id=?";
				update(sql,qr,1,aud.getUploadid());
			}
			sql = "delete from uploadcookbook where id = ?";
			delete(sql,qr,aud.getId());
			DataSourceUtils.commitAndRelease();
		} catch (Exception e) {
			DataSourceUtils.rollbackTransaction();
			e.printStackTrace();
		}
	}

	private void update(String sql, QueryRunner qr,int sureid, int id) throws SQLException {
		qr.update(sql,sureid,id);
	}

	public List<Father> getType() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select id,name from snacksfarther";
		return qr.query(sql, new BeanListHandler<Father>(Father.class));
	}

	public List<Father> getTypeByName(String name) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "";
		if("各地小吃".equals(name)){
			sql = "select id,name from snacksfarther";
			return qr.query(sql, new BeanListHandler<Father>(Father.class));
		}else if("中国菜".equals(name)){
			sql = "select id,name from menufarther";
			return qr.query(sql, new BeanListHandler<Father>(Father.class));
		}else if("外国菜".equals(name)){
			sql = "select id,name from foreignfarther";
			return qr.query(sql, new BeanListHandler<Father>(Father.class));
		}
		return null;
	}

	public void add(Audit aud) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		try {
			DataSourceUtils.startTransation();
			String sql = "";
			String sqls = "";
			if("各地小吃".equals(aud.getTableName())){
				sql = "insert into snacks(name,img,title,Sid,sureid) values(?,?,?,(select id from snacksfarther where name = ?),0)";
				qr.update(sql, aud.getName(),aud.getImg(),aud.getTitle(),aud.getFatherName());
				sqls = "insert into uploadcookbook(uid,fatherName,name,img,title,uploadid,tableName) values(?,?,?,?,?,(select max(id) from snacks),?)";
				qr.update(sqls, aud.getUid(),aud.getFatherName(),aud.getName(),aud.getImg(),aud.getTitle(),aud.getTableName());
			}else if("中国菜".equals(aud.getTableName())){
				sql = "insert into snacks(name,img,title,Mid,sureid) values(?,?,?,(select id from menufarther where name = ?),0)";
				qr.update(sql, aud.getName(),aud.getImg(),aud.getTitle(),aud.getFatherName());
				sqls = "insert into uploadcookbook(uid,fatherName,name,img,title,uploadid,tableName) values(?,?,?,?,?,(select max(id) from menu),?)";
				qr.update(sqls, aud.getUid(),aud.getFatherName(),aud.getName(),aud.getImg(),aud.getTitle(),aud.getTableName());
			}else if("外国菜".equals(aud.getTableName())){
				sql = "insert into snacks(name,img,title,Fid,sureid) values(?,?,?,(select id from foreignfarther where name = ?),0)";
				qr.update(sql, aud.getName(),aud.getImg(),aud.getTitle(),aud.getFatherName());
				sqls = "insert into uploadcookbook(uid,fatherName,name,img,title,uploadid,tableName) values(?,?,?,?,?,(select max(id) from foreigns),?)";
				qr.update(sqls, aud.getUid(),aud.getFatherName(),aud.getName(),aud.getImg(),aud.getTitle(),aud.getTableName());
			}
			DataSourceUtils.commitAndRelease();
		} catch (Exception e) {
			DataSourceUtils.rollbackTransaction();
			e.printStackTrace();
		}
		
	}


}
