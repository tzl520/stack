package com.edu.service;

import java.util.List;

import com.edu.bean.ChineseMenu;
import com.edu.bean.ForeignMenu;

public interface ForeignMenuService {
	List<ForeignMenu> getAll(int pageNo) throws Exception;

	int getCount() throws Exception;

	int editById(ForeignMenu menu)throws Exception;

	int deleteById(int id)throws Exception;

	List<ForeignMenu> getName()throws Exception;

	int add(ForeignMenu menu)throws Exception;

	ForeignMenu getById(int id)throws Exception;

	List<ForeignMenu> getFatherName()throws Exception;

}
