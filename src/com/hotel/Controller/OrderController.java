package com.hotel.Controller;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.dao.MyOrderDao;
import com.hotel.dao.RoomDao;
import com.hotel.dao.UserDao;
import com.hotel.entity.Room;
import com.hotel.entity.StayInfo;
import com.hotel.entity.User;
import com.hotel.entity.myOrder;
import com.hotel.service.MyOrderService;
import com.hotel.service.StayInfoService;

@Controller
public class OrderController {

	@Resource 
	private MyOrderService myOrderService;
	@Resource
	private RoomDao roomDao;
	@Resource
	private UserDao userDao;
	@Resource
	private MyOrderDao myOrderDao;
	@RequestMapping("/order.do")
	public String fillOrder(@RequestParam(value = "r_id") Integer r_id ,@RequestParam(value = "uid") Integer uid ,
			 ModelMap model){
		myOrder myOrder=new myOrder();
		myOrder.setOid(1);
		myOrder.setO_num("122121223");
		if(r_id!=null){
			myOrder.setR_id(r_id);
		}else{
			System.out.print("r_id为空");
			return "error";
		}
		if(uid!=null){
			myOrder.setUid(uid);
		}else{
			System.out.print("ud为空");
			return "error";
		}
		myOrder.setBookTime(new Date());
		myOrder.setO_state("填写订单");
		myOrder.setO_quantity(1);
		myOrder.setFreakfast(false);
		System.out.print(myOrder.getOid());
		myOrderService.save(myOrder);
		model.addAttribute("myOrder", myOrder);
		model.addAttribute("oid", myOrder.getOid());
		model.addAttribute("uid", uid);
		return "order";
		
	}
	
	@RequestMapping("admin/myOrder.do")
	public String findAll(ModelMap model){
		List<myOrder> list=myOrderService.findAll();
		model.addAttribute("myOrderList", list);
		return "admin/component/order/OrderManage";
	}
	
	@RequestMapping("admin/toAddMyOrder.do")
	public String toAddMyOrder(ModelMap model){

		return "admin/component/order/addOrder";
	}
	
	@RequestMapping("admin/addMyOrder.do")
	public String save(String o_num,String pid,String inStorey,Date bookTime,String o_state,int o_quantity,
			boolean isFreakfast,User user,Room room){
		
		User user1=userDao.findByPid(pid);
		int uid = user1.getUid();
		
		Room room1=roomDao.findByInStorey(inStorey);
		int r_id=room1.getR_id();
		
		myOrder myOrder=new myOrder();
		myOrder.setBookTime(bookTime);
		myOrder.setFreakfast(isFreakfast);
		myOrder.setO_quantity(o_quantity);
		myOrder.setO_num(o_num);
		myOrder.setO_state(o_state);
		myOrder.setR_id(r_id);
		myOrder.setRoom(room);
		myOrder.setUser(user);
		myOrder.setUid(uid);
		
		
		myOrderDao.save(myOrder);
		return "redirect:myOrder.do";
	}
	
	@RequestMapping("admin/delMyOrder.do")
	public String delete(int oid){
		myOrder myOrder = myOrderDao.findById(oid);
		myOrderDao.delete(myOrder.getOid());
		return "admin/component/order/OManage";
	}
	
	@RequestMapping("admin/toEditMyOrder.do")
	public String toUpdate(int oid,ModelMap model){
		myOrder myOrder = myOrderDao.findById(oid);
		model.addAttribute("myOrder", myOrder);
		return "admin/component/order/editOrder";
	}
	
	@RequestMapping("admin/editMyOrder.do")
	public String update(int oid,String o_num,String pid,String inStorey,Date bookTime,String o_state,int o_quantity,
			boolean isFreakfast,User user,Room room){
		User user1=userDao.findByPid(pid);
		int uid = user1.getUid();
		
		Room room1=roomDao.findByInStorey(inStorey);
		int r_id=room1.getR_id();
		
		myOrder myOrder = myOrderDao.findById(oid);
		myOrder.setBookTime(bookTime);
		myOrder.setFreakfast(isFreakfast);
		myOrder.setO_quantity(o_quantity);
		myOrder.setO_num(o_num);
		myOrder.setO_state(o_state);
		myOrder.setR_id(r_id);
		myOrder.setUid(uid);
		myOrder.setRoom(room);
		myOrder.setUser(user);
		
		myOrderDao.update(myOrder);
		return "redirect:myOrder.do";
	}
	
}
