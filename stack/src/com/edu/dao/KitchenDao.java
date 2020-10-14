package com.edu.dao;

import java.util.List;

import com.edu.bean.Kitchen;

public interface KitchenDao {

	List<Kitchen> getAll(int pageNo) throws Exception;

	int getCount() throws Exception;

	int editById(Kitchen kit) throws Exception;

	List<Kitchen> getName() throws Exception;

	int add(Kitchen kit) throws Exception;

	Kitchen getById(int id) throws Exception;

	List<Kitchen> getFatherName() throws Exception;

	int deleteById(int id) throws Exception;
}
