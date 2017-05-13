package com.hotel.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.Room_styleDao;
import com.hotel.dao.UserDao;
import com.hotel.entity.Room_style;

public class testRoom_style {

	/*@Test
    public void test1() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		Room_styleDao mapper = 
	            ctx.getBean("room_styleDao", Room_styleDao.class);
        List<Room_style> list = mapper.findAll();
        for(Room_style e : list) {
            System.out.println(
                e.getR_area());
        }
    }*/
	
	/*@Test
    public void test2() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		Room_styleDao mapper = 
	            ctx.getBean("room_styleDao", Room_styleDao.class);
		Room_style Room_style=mapper.findById(1);
            System.out.println(
            		Room_style.getR_area());
        
    }*/
	/*@Test
    public void test3() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        Room_styleDao mapper = 
	            ctx.getBean("room_styleDao", Room_styleDao.class);
        Room_style Room_style =new Room_style();
        Room_style.setPrice(999);
        Room_style.setR_area(888);
        mapper.save(Room_style);
        
            System.out.println(
            		Room_style.getPrice());
        
    }*/
	/*@Test
    public void test5() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        Room_styleDao mapper = 
	            ctx.getBean("room_styleDao", Room_styleDao.class);
        Room_style Room_style = mapper.findById(1);
        Room_style.setPrice(666);
        mapper.update(Room_style);
            System.out.println(
            		Room_style.getPrice());
        
    }*/
	
	@Test
    public void test6() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        Room_styleDao mapper = 
	            ctx.getBean("room_styleDao", Room_styleDao.class);
        mapper.delete(7);
        
            System.out.println("删除成功");
        
    }
}
