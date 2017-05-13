package com.hotel.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.RoomDao;
import com.hotel.dao.UserDao;
import com.hotel.entity.Room;

public class testRoom {

	@Test
    public void test1() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		RoomDao mapper = 
	            ctx.getBean("roomDao", RoomDao.class);
        List<Room> list = mapper.findAll();
        for(Room e : list) {
            System.out.println(
                e.getR_state());
        }
    }
	@Test
    public void test2() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        RoomDao mapper = 
	            ctx.getBean("roomDao", RoomDao.class);
        Room room = mapper.findById(1);
        
            System.out.println(
                room.getInStorey());
        
    }
	@Test
    public void test7() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        RoomDao mapper = 
	            ctx.getBean("roomDao", RoomDao.class);
        Room room = mapper.findByH_id(1);
        
            System.out.println(
                room.getInStorey());
        
    }
	@Test
    public void test3() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        RoomDao mapper = 
	            ctx.getBean("roomDao", RoomDao.class);
        Room room =new Room();
        room.setInStorey("300-2");
        room.setR_style_id(1);
        room.setH_id(1);
        room.setR_id(1);
        mapper.save(room);
        
            System.out.println(
                room.getInStorey());
        
    }
	@Test
    public void test4() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        RoomDao mapper = 
	            ctx.getBean("roomDao", RoomDao.class);
        Room room = mapper.findById(1);
        room.setInStorey("233-1");
        room.setH_id(1);
        
        mapper.update(room);
            System.out.println(
                room.getInStorey());
        
    }
	
	@Test
    public void test5() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        RoomDao mapper = 
	            ctx.getBean("roomDao", RoomDao.class);
        mapper.delete(3);
        
            System.out.println("删除成功");
        
    }
}
