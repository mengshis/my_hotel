package com.hotel.Controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.dao.StayInfoDao;
import com.hotel.entity.Room;
import com.hotel.entity.StayInfo;
import com.hotel.entity.myOrder;
import com.hotel.service.MyOrderService;
import com.hotel.service.StayInfoService;

@Controller
public class StayInfoController {


	@Resource
    private StayInfoService stayInfoService;
	@Resource(name="stayInfoDao")
    private StayInfoDao stayInfoDao;
	@RequestMapping("/addMyOrder.do")
	public String myOrder(String come_time,String leave_time,String phone,String email,ModelMap model){
		StayInfo stayInfo=new StayInfo();
		//System.out.print(oid);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date come_date;
		try {
			come_date = sdf.parse(come_time);
			stayInfo.setCome_time(come_date);
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		Date leave_date;
		try {
			leave_date = sdf.parse(leave_time);
			stayInfo.setLeave_time(leave_date);
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		
		stayInfo.setGoodsLoss(false);
		
		stayInfo.setOid(1);
		stayInfo.setTotal_cost(122);
		stayInfoService.save(stayInfo);
		model.addAttribute("stayInfo", stayInfo);
		return "addOrderSucc";
		
	}
	
	@RequestMapping("admin/stayInfo.do")
	public String findAll(ModelMap model){
		List<StayInfo> list=stayInfoDao.findAll();
		model.addAttribute("stayInfoList", list);
		return "admin/component/stayInfo/StayInfoManage";
	}
}
