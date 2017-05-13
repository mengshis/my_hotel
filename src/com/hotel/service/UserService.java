package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.hotel.dao.UserDao;
import com.hotel.entity.Condition;
import com.hotel.entity.User;
import com.hotel.exception.ConditionException;
import com.hotel.exception.UpwdException;


@Service
public class UserService {

	@Resource(name="userDao")
    private UserDao userDao;
	
	public List<User> findAll() {
        return userDao.findAll();
    }
	
	public User login(String pid){
		User user=userDao.login(pid);
		if(user == null) {
			System.out.println("用户不存在");
            throw new ConditionException("用户不存在");
            
        } else {
            return user;
        }
	}
}
