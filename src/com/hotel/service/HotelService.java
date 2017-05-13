package com.hotel.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.HotelDao;
import com.hotel.entity.Hotel;







@Service
public class HotelService {

	@Resource
    private HotelDao hotelDao;
	
	public List<Hotel> findAll() {
        return hotelDao.findAll();
    }

	public Hotel findById(int r_id) {
		
		return hotelDao.findById(r_id);
	}
	
	public void save(Hotel hotel) {
		
		 hotelDao.save(hotel);
	}
	
	/**
	 * 批量删除
	 */
	public void deleteBatch(String[] ids) {
		List<Integer> idList = new ArrayList<Integer>();
		for(String id : ids) {
			idList.add(Integer.valueOf(id));
		}
		hotelDao.deleteBatch(idList);
	}
	/**
	 * 单条删除
	 */
	public void delete(String id) {
		if(id != null && !"".equals(id.trim())) {
			hotelDao.delete(Integer.valueOf(id));
		}
	}
	
	public List<Hotel> queryMessageList(String h_name,String addr) {
		
		return hotelDao.queryMessageList(h_name, addr);
	}
}
