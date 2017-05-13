package com.hotel.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.MyOrderDao;
import com.hotel.dao.StayInfoDao;
import com.hotel.entity.StayInfo;
import com.hotel.entity.myOrder;

public class testMyOrder {

	@Test
    public void test1() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        MyOrderDao dao = ctx.getBean(MyOrderDao.class);
        myOrder e = dao.findById(1);
        System.out.println(
           e.getO_quantity() + " " +
            e.getO_num() + " " +
            e.getO_state() + " " +
            e.getOid() + " " +
            e.getUid()
        );
    }
	
	@Test
    public void test3() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        MyOrderDao dao = ctx.getBean(MyOrderDao.class);
        List<myOrder> list = dao.findAll();
        for(myOrder e : list) {
        	System.out.println(
        	           e.getO_quantity() + " " +
        	            e.getO_num() + " " +
        	            e.getO_state() + " " +
        	            e.getOid() + " " +
        	            e.getUid()
        	        );
        }
        
    }
	/*@Test
    public void test4() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        MyOrderDao dao = ctx.getBean(MyOrderDao.class);
        myOrder e=dao.findById2(1);
        e.setO_quantity(2);
        dao.update(e);
        System.out.println(
 	           e.getO_quantity() + " " +
 	            e.getO_num() + " " +
 	            e.getO_state() + " " +
 	            e.getOid() + " " +
 	            e.getUid()
 	        );
    }*/
	@Test
    public void test5() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        MyOrderDao dao = ctx.getBean(MyOrderDao.class);
        myOrder e=new myOrder();
        e.setO_quantity(2);
        e.setR_id(1);
        e.setUid(1);
        /*e.setOid(1);*/
        dao.save(e);
        System.out.println(
 	           e.getO_quantity() + " " +
 	            e.getO_num() + " " +
 	            e.getO_state() + " " +
 	            e.getUid() + " " +
 	            e.getR_id()
 	        );
    }
	@Test
    public void test6() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        MyOrderDao dao = ctx.getBean(MyOrderDao.class);
        myOrder myOrder=dao.findById2(1);
        
        dao.delete(myOrder.getOid());
        System.out.println("删除成功");
    }
}
