package com.hotel.test;

import java.util.List;


import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.UserDao;
import com.hotel.entity.User;

public class testUser {

	/*@Test
    public void test1() {
        String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        System.out.println(ctx);
    }*/
	/*@Test
    public void test8() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		UserDao mapper = 
	            ctx.getBean("userDao", UserDao.class);
        List<User> list = mapper.findAll();
        for(User e : list) {
            System.out.println(
                e.getEmail() +" " + e.getPhone());
        }
    }*/
	/*@Test
    public void test8() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		UserDao mapper = 
	            ctx.getBean("userDao", UserDao.class);
        User user = mapper.findById(1);
        
            System.out.println(
                user.getEmail() +" " + user.getPhone());
        
    }@Test
    public void test8() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		UserDao mapper = 
	            ctx.getBean("userDao", UserDao.class);
        User user = mapper.findById(1);
        
            System.out.println(
                user.getEmail() +" " + user.getPhone());
        
    }*/
	/*@Test
    public void test8() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		UserDao mapper = 
	            ctx.getBean("userDao", UserDao.class);
		User user =new User();
		user.setEmail("12456789@qq.com");
		user.setNick_name("蒙小姐");
		user.setPhone("1888542696");
        mapper.save(user);
        
            System.out.println(
                user.getEmail() +" " + user.getPhone());
        
    }*/
	/*@Test
    public void test8() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		UserDao mapper = 
	            ctx.getBean("userDao", UserDao.class);
        User user = mapper.findById(1);
        user.setPwd("11111");
        user.setEmail("11111111@qq.com");
        user.setPhone("2222222222");
        mapper.update(user);
            System.out.println(
                user.getEmail() +" " + user.getPhone());
        
    }*/
	
	@Test
    public void test8() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		UserDao mapper = 
	            ctx.getBean("userDao", UserDao.class);
        mapper.delete(2);
        
            System.out.println("删除成功");
        
    }
	
}
