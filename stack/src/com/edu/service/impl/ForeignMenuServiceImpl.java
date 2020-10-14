package com.edu.service.impl;

import java.util.List;

import com.edu.bean.ChineseMenu;
import com.edu.bean.ForeignMenu;
import com.edu.dao.ChineseMenuDao;
import com.edu.dao.ForeignMenuDao;
import com.edu.dao.impl.ChineseMenuDaoImpl;
import com.edu.dao.impl.ForeignMenuDaoImpl;
import com.edu.service.ForeignMenuService;

public class ForeignMenuServiceImpl implements ForeignMenuService {
	public List<ForeignMenu> getAll(int pageNo) throws Exception {
		ForeignMenuDao menuDao = new ForeignMenuDaoImpl();
		return menuDao.getAll(pageNo);
	}

	public int getCount() throws Exception {
		ForeignMenuDao menuDao = new ForeignMenuDaoImpl();
		return menuDao.getCount();
	}

	public int editById(ForeignMenu menu) throws Exception {
		ForeignMenuDao menuDao = new ForeignMenuDaoImpl();
		return menuDao.editById(menu);
	}

	public int deleteById(int id) throws Exception {
		ForeignMenuDao menuDao = new ForeignMenuDaoImpl();
		return menuDao.deleteById(id);
	}

	public List<ForeignMenu> getName() throws Exception {
		ForeignMenuDao menuDao = new ForeignMenuDaoImpl();
		return menuDao.getName();
	}

	public int add(ForeignMenu menu) throws Exception {
		ForeignMenuDao menuDao = new ForeignMenuDaoImpl();
		return menuDao.add(menu);
	}

	public ForeignMenu getById(int id) throws Exception {
		ForeignMenuDao menuDao = new ForeignMenuDaoImpl();
		return menuDao.getById(id);
	}

	public List<ForeignMenu> getFatherName() throws Exception {
		ForeignMenuDao menuDao = new ForeignMenuDaoImpl();
		return menuDao.getFatherName();
	}

}
