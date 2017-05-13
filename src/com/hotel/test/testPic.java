package com.hotel.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.PicDao;
import com.hotel.entity.Pic;

public class testPic {

	@Test
    public void test8() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
		PicDao mapper = 
	            ctx.getBean("picDao", PicDao.class);
        List<Pic> list = mapper.findAll();
        for(Pic e : list) {
            System.out.println(
                e.getPic1());
        }
    }
	@Test
    public void test7() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        PicDao mapper = 
	            ctx.getBean("picDao", PicDao.class);
        Pic user = mapper.findById(1);
        
            System.out.println(
                user.getPic1());
        
    }
	@Test
    public void test6() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        PicDao mapper = 
	            ctx.getBean("picDao", PicDao.class);
        Pic pic =new Pic();
        pic.setPic1("imgs/hotel13.jpg");
        
        mapper.save(pic);
        
            System.out.println(
                pic.getPic1());
        
    }
	@Test
    public void test5() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        PicDao mapper = 
	            ctx.getBean("picDao", PicDao.class);
        Pic pic =mapper.findById(1);
        pic.setPic1("imgs/hotel13.jpg");
        
        mapper.update(pic);
        
            System.out.println(
                pic.getPic1());
        
    }
	@Test
    public void test4() {
		String cfg = "applicationContext.xml";
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext(cfg);
        PicDao mapper = 
	            ctx.getBean("picDao", PicDao.class);
        Pic pic =mapper.findById(1);
        
        
        mapper.delete(pic.getPic_id());
        
            System.out.println(
               "删除成功");
        
    }
}
