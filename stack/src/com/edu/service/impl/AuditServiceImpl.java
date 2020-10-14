package com.edu.service.impl;

import java.util.List;

import com.edu.bean.Audit;
import com.edu.bean.Father;
import com.edu.dao.AuditDao;
import com.edu.dao.impl.AuditDaoImpl;
import com.edu.service.AuditService;

public class AuditServiceImpl implements AuditService {

	public List<Audit> getAll(int pageNo) throws Exception {
		AuditDao auDao = new AuditDaoImpl();
		return auDao.getAll(pageNo);
	}

	public int getCount() throws Exception {
		AuditDao auDao = new AuditDaoImpl();
		return auDao.getCount();
	}

	public void deleteById(int id) throws Exception {
		AuditDao auDao = new AuditDaoImpl();
		auDao.deleteById(id);
	}

	public void adopt(int id) throws Exception {
		AuditDao auDao = new AuditDaoImpl();
		auDao.adopt(id);
	}

	public List<Father> getType() throws Exception {
		AuditDao auDao = new AuditDaoImpl();
		return auDao.getType();
	}

	public List<Father> getTypeByName(String name) throws Exception {
		AuditDao auDao = new AuditDaoImpl();
		return auDao.getTypeByName(name);
	}

	public void add(Audit aud) throws Exception {
		AuditDao auDao = new AuditDaoImpl();
		auDao.add(aud);
	}
}
