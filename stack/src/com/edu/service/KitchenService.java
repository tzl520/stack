package com.edu.service;

import java.util.List;

import com.edu.bean.ForeignMenu;
import com.edu.bean.Kitchen;

public interface KitchenService {

	int deleteById(int id) throws Exception;

	int editById(Kitchen kitchen) throws Exception;

	Kitchen getById(int id) throws Exception;

	List<Kitchen> getFatherName() throws Exception;

	List<Kitchen> getAll(int pageNo) throws Exception;

	int getCount() throws Exception;

	List<Kitchen> getName() throws Exception;

	int add(Kitchen kitchen) throws Exception;

}
