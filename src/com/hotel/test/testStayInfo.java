package com.hotel.test;





import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.MyOrderDao;
import com.hotel.dao.StayInfoDao;
import com.hotel.entity.StayInfo;
import com.hotel.entity.myOrder;

public class testStayInfo {

	@Test
    public void test1() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        StayInfoDao dao = ctx.getBean(StayInfoDao.class);
        StayInfo e = dao.findById(1);
        System.out.println(
           e.getOid() + " " +
            e.getStayId() + " " +
            e.getTotal_cost() + " " +
            e.getCome_time() + " " +
            e.getMyOrder()
        );
    }
	@Test
    public void test3() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        StayInfoDao dao = ctx.getBean(StayInfoDao.class);
        List<StayInfo> list = dao.findAll();
        for(StayInfo e : list) {
        	System.out.println(
        	           e.getOid() + " " +
        	            e.getStayId() + " " +
        	            e.getTotal_cost() + " " +
        	            e.getCome_time() + " " +
        	            e.getMyOrder()
        	        );
        }
        
    }
	@Test
    public void test4() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        StayInfoDao dao = ctx.getBean(StayInfoDao.class);
        StayInfo e=dao.findById2(1);
        e.setCome_time(new Date());
        dao.update(e);
        System.out.println(
 	           e.getOid() + " " +
 	            e.getStayId() + " " +
 	            e.getTotal_cost() + " " +
 	            e.getCome_time() + " " +
 	            e.getMyOrder()
 	        );
    }
	@Test
    public void test5() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        StayInfoDao dao = ctx.getBean(StayInfoDao.class);
        StayInfo e=new StayInfo();
        e.setCome_time(new Date());
        e.setOid(1);
        dao.save(e);
        System.out.println(
  	           e.getOid() + " " +
  	            e.getStayId() + " " +
  	            e.getTotal_cost() + " " +
  	            e.getCome_time() + " " +
  	            e.getMyOrder()
  	        );
    }
	@Test
    public void test6() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        StayInfoDao dao = ctx.getBean(StayInfoDao.class);
        StayInfo e=dao.findById2(1);
        dao.delete(e.getStayId());
        System.out.println("删除成功");
    }
}
