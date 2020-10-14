package com.edu.dao;

import java.util.List;

import com.edu.bean.Pojo;
import com.edu.bean.User;

public interface UserDao {

	int deleteById(int id) throws Exception;

	List<User> getAll(int pageNo) throws Exception;

	int getCount() throws Exception;

	User getById(int id) throws Exception;

	void editById(User user) throws Exception;

	User getUserByCode(String code) throws Exception;

	void update(User user) throws Exception;

	void register(User user) throws Exception;

	User getUserByName(String name) throws Exception;

	void updateIsLogin(User user) throws Exception;

	void updateMyslef(User user) throws Exception;

	void updatePhoto(User user) throws Exception;

	void updatePwd(User user) throws Exception;

	List<Pojo> getSelect(String name) throws Exception;

}
