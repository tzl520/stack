package com.edu.dao;

import java.util.List;

import com.edu.bean.Audit;
import com.edu.bean.Father;

public interface AuditDao {

	List<Audit> getAll(int pageNo) throws Exception;

	int getCount() throws Exception;

	void deleteById(int id) throws Exception;

	void adopt(int id) throws Exception;

	List<Father> getType() throws Exception;

	List<Father> getTypeByName(String name) throws Exception;

	void add(Audit aud) throws Exception;

}
