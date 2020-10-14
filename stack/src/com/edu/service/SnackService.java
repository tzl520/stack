package com.edu.service;

import java.util.List;

import com.edu.bean.Father;
import com.edu.bean.Snack;

public interface SnackService {

	List<Snack> getAll(int pageNo) throws Exception;

	Snack getById(int id) throws Exception;

	int editById(Snack snack)throws Exception;

	int deleteById(int id)throws Exception;

	List<Snack> getName()throws Exception;

	int add(Snack snack)throws Exception;

	int getCount()throws Exception;

	List<Snack> getFatherName()throws Exception;

	List<Snack> getBySnacks(String snacks)throws Exception;

	List<Father> getSnackType()throws Exception;


}
