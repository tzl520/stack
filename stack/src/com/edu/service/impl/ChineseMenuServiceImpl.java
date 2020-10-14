package com.edu.service.impl;

import java.util.List;

import com.edu.bean.ChineseMenu;
import com.edu.dao.ChineseMenuDao;
import com.edu.dao.impl.ChineseMenuDaoImpl;
import com.edu.service.ChineseMenuService;

public class ChineseMenuServiceImpl implements ChineseMenuService {

	public List<ChineseMenu> getAll(int pageNo) throws Exception {
		ChineseMenuDao menuDao = new ChineseMenuDaoImpl();
		return menuDao.getAll(pageNo);
	}

	public int getCount() throws Exception {
		ChineseMenuDao menuDao = new ChineseMenuDaoImpl();
		return menuDao.getCount();
	}

	public int editById(ChineseMenu menu) throws Exception {
		ChineseMenuDao menuDao = new ChineseMenuDaoImpl();
		return menuDao.editById(menu);
	}

	public int deleteById(int id) throws Exception {
		ChineseMenuDao menuDao = new ChineseMenuDaoImpl();
		return menuDao.deleteById(id);
	}

	public List<ChineseMenu> getName() throws Exception {
		ChineseMenuDao menuDao = new ChineseMenuDaoImpl();
		return menuDao.getName();
	}

	public int add(ChineseMenu menu) throws Exception {
		ChineseMenuDao menuDao = new ChineseMenuDaoImpl();
		return menuDao.add(menu);
	}

	public ChineseMenu getById(int id) throws Exception {
		ChineseMenuDao menuDao = new ChineseMenuDaoImpl();
		return menuDao.getById(id);
	}

	public List<ChineseMenu> getFatherName() throws Exception {
		ChineseMenuDao menuDao = new ChineseMenuDaoImpl();
		return menuDao.getFatherName();
	}

}
