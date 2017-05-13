package com.hotel.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.Goods_losingDao;
import com.hotel.entity.Goods_losing;



public class testGoods_losing {

	/*@Test
    public void test1() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        Goods_losingDao dao = ctx.getBean(Goods_losingDao.class);
        Goods_losing e = dao.findById(1);
        System.out.println(
           e.getG_name() + " " +
            e.getG_num() + " " +
            e.getG_price() + " " +
            e.getStayId()+ " " +
            e.getGid()
        );
    }*/
	
	@Test
    public void test2() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        Goods_losingDao dao = ctx.getBean(Goods_losingDao.class);
        List<Goods_losing> list = dao.findAll();
        for(Goods_losing e : list) {
        System.out.println(
           e.getG_name() + " " +
            e.getG_num() + " " +
            e.getG_price() + " " +
            e.getStayId()+ " " +
            e.getGid()
        );
        }
    }
	@Test
    public void test3() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        Goods_losingDao dao = ctx.getBean(Goods_losingDao.class);
        Goods_losing e=new Goods_losing();
        e.setG_num(2);
        e.setStayId(1);
        dao.save(e);
        System.out.println(
           e.getG_name() + " " +
            e.getG_num() + " " +
            e.getG_price() + " " +
            e.getStayId()+ " " +
            e.getGid()
        );
    }
	@Test
    public void test4() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        Goods_losingDao dao = ctx.getBean(Goods_losingDao.class);
        Goods_losing e=dao.findById2(1);
        e.setG_num(2);
        e.setStayId(1);
        dao.update(e);
        System.out.println(
           e.getG_name() + " " +
            e.getG_num() + " " +
            e.getG_price() + " " +
            e.getStayId()+ " " +
            e.getGid()
        );
    }
	@Test
    public void test5() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        Goods_losingDao dao = ctx.getBean(Goods_losingDao.class);
        Goods_losing e=dao.findById2(1);
        
        dao.delete(e.getGid());
        System.out.println(
           "删除成功"
        );
    }
}
