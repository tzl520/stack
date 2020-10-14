package com.edu.service.impl;

import java.util.List;

import com.edu.bean.ForeignMenu;
import com.edu.bean.Kitchen;
import com.edu.dao.KitchenDao;
import com.edu.dao.impl.KitchenDaoImpl;
import com.edu.service.KitchenService;

public class KitchenServiceImpl implements KitchenService {

	public int deleteById(int id) throws Exception {
		KitchenDao kitDao = new KitchenDaoImpl();
		return kitDao.deleteById(id);
	}

	public int editById(Kitchen kitchen) throws Exception {
		KitchenDao kitDao = new KitchenDaoImpl();
		return kitDao.editById(kitchen);
	}

	public Kitchen getById(int id) throws Exception {
		KitchenDao kitDao = new KitchenDaoImpl();
		return kitDao.getById(id);
	}

	public List<Kitchen> getFatherName() throws Exception {
		KitchenDao kitDao = new KitchenDaoImpl();
		return kitDao.getFatherName();
	}

	public List<Kitchen> getAll(int pageNo) throws Exception {
		KitchenDao kitDao = new KitchenDaoImpl();
		return kitDao.getAll(pageNo);
	}

	public int getCount() throws Exception {
		KitchenDao kitDao = new KitchenDaoImpl();
		return kitDao.getCount();
	}

	public List<Kitchen> getName() throws Exception {
		KitchenDao kitDao = new KitchenDaoImpl();
		return kitDao.getName();
	}

	public int add(Kitchen kitchen) throws Exception {
		KitchenDao kitDao = new KitchenDaoImpl();
		return kitDao.add(kitchen);
	}

}
