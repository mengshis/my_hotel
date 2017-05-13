package com.hotel.dao;

import java.util.List;

import com.hotel.annotation.MyBatisRepository;
import com.hotel.entity.Condition;
import com.hotel.entity.User;



@MyBatisRepository
public interface UserDao {

	List<User> findAll();
	
	User login(String pid);
	
	User findById(int uid);
	User findByPid(String pid);
	void save(User user);
	
	void update(User user);
	
	void delete(int uid);
}
