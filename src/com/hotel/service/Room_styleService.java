package com.hotel.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.Room_styleDao;
import com.hotel.entity.Room_style;

@Service
public class Room_styleService {

	@Resource
    private Room_styleDao room_styleDao;
	
	public Room_style findByR_style_id(int r_style_id){
		return room_styleDao.findById(r_style_id);
	}
}
