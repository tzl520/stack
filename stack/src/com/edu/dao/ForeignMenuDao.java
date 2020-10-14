package com.edu.dao;

import java.util.List;

import com.edu.bean.ChineseMenu;
import com.edu.bean.ForeignMenu;

public interface ForeignMenuDao {
	List<ForeignMenu> getAll(int pageNo) throws Exception;

	int getCount() throws Exception;

	int editById(ForeignMenu menu) throws Exception;

	List<ForeignMenu> getName() throws Exception;

	int add(ForeignMenu menu) throws Exception;

	ForeignMenu getById(int id) throws Exception;

	List<ForeignMenu> getFatherName() throws Exception;

	int deleteById(int id) throws Exception;
}
