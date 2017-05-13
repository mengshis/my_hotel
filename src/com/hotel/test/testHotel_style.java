package com.hotel.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.Hotel_styleDao;
import com.hotel.entity.Hotel_style;

public class testHotel_style {

	/*@Test
    public void test8() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		Hotel_styleDao mapper = 
	            ctx.getBean("hotel_styleDao", Hotel_styleDao.class);
        List<Hotel_style> list = mapper.findAll();
        for(Hotel_style e : list) {
            System.out.println(
                e.getS_name());
        }
    }
	
	@Test
    public void test1() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        Hotel_styleDao mapper = 
	            ctx.getBean("hotel_styleDao", Hotel_styleDao.class);
        Hotel_style  hotel_style = mapper.findById(1);
        
            System.out.println(
            		 hotel_style.getS_name());
        
    }*/
	
	/*@Test
    public void test9() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        Hotel_styleDao mapper = 
	            ctx.getBean("hotel_styleDao", Hotel_styleDao.class);
        Hotel_style hotel =new Hotel_style();
		hotel.setS_name("类型2");
        mapper.save(hotel);
        
            System.out.println(
                hotel.getS_name());
        
    }
	@Test
    public void test3() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        Hotel_styleDao mapper = 
	            ctx.getBean("hotel_styleDao", Hotel_styleDao.class);
        Hotel_style hotel_style =new Hotel_style();
		hotel_style.setS_name("类型2");
        mapper.update(hotel_style);
        
            System.out.println(
                hotel_style.getS_name());
        
    }*/
	@Test
    public void test4() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        Hotel_styleDao mapper = 
	            ctx.getBean("hotel_styleDao", Hotel_styleDao.class);
        mapper.delete(1);
        
        System.out.println("删除成功");
        
    }
}
