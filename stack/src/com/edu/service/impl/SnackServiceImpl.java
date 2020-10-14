package com.edu.service.impl;

import java.util.List;

import com.edu.bean.Father;
import com.edu.bean.Snack;
import com.edu.dao.SnackDao;
import com.edu.dao.impl.SnackDaoImpl;
import com.edu.service.SnackService;

public class SnackServiceImpl implements SnackService {

	public List<Snack> getAll(int pageNo) throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.getAll(pageNo);
	}

	public Snack getById(int id) throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.getById(id);
	}

	public int editById(Snack snack) throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.editById(snack);
	}

	public int deleteById(int id) throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.deleteById(id);
	}

	public List<Snack> getName() throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.getName();
	}

	public int add(Snack snack) throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.add(snack);
	}

	public int getCount() throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.getCount();
	}

	public List<Snack> getFatherName() throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.getFatherName();
	}

	public List<Snack> getBySnacks(String snacks) throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.getBySnacks(snacks);
	}

	public List<Father> getSnackType() throws Exception {
		SnackDao snackDao = new SnackDaoImpl();
		return snackDao.getSnackType();
	}

}
