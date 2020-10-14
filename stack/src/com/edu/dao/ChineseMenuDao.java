package com.edu.dao;

import java.util.List;

import com.edu.bean.ChineseMenu;

public interface ChineseMenuDao {

	List<ChineseMenu> getAll(int pageNo) throws Exception;

	int getCount() throws Exception;

	int editById(ChineseMenu menu) throws Exception;

	List<ChineseMenu> getName() throws Exception;

	int add(ChineseMenu menu) throws Exception;

	ChineseMenu getById(int id) throws Exception;

	List<ChineseMenu> getFatherName() throws Exception;

	int deleteById(int id) throws Exception;

}
