package com.hotel.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.HotelDao;
import com.hotel.dao.RoomDao;
import com.hotel.dao.UserDao;
import com.hotel.entity.Hotel;

public class testHotel {

	@Test
    public void test2() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		HotelDao mapper = 
	            ctx.getBean("hotelDao", HotelDao.class);
        List<Hotel> list = mapper.findAll();
        for(Hotel e : list) {
            System.out.println(
                e.getAddr() +" " + e.getH_name());
        }
    }
	@Test
    public void test3() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		HotelDao mapper = 
	            ctx.getBean("hotelDao", HotelDao.class);
        Hotel hotel = mapper.findById(1);
        
            System.out.println(
                hotel.getH_name());
        
    }
	
	@Test
    public void test1() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		HotelDao mapper = 
	            ctx.getBean("hotelDao", HotelDao.class);
		Hotel hotel =new Hotel();
		hotel.setAddr("地址1");
		
        mapper.update(hotel);
        
            System.out.println(
                hotel.getAddr());
        
    }
	
	@Test
    public void test4() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		HotelDao mapper = 
	            ctx.getBean("hotelDao", HotelDao.class);
		Hotel hotel =new Hotel();
		hotel.setAddr("地址2");
        mapper.save(hotel);
        
            System.out.println(
                hotel.getAddr());
        
    }
	@Test
	public void test5() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		HotelDao mapper = 
	            ctx.getBean("hotelDao", HotelDao.class);
		
		Hotel hotel = mapper.findById(1);
        mapper.delete(hotel.getH_id());
        
            System.out.println("删除成功");
        
    }
}
