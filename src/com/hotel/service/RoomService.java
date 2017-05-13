package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.RoomDao;
import com.hotel.entity.Room;

@Service
public class RoomService {

	@Resource RoomDao roomDao;
	public List<Room> findAll(){
		return roomDao.findAll();
	}
	
	public Room findByH_id(int h_id){
		
		return roomDao.findByH_id(h_id);
	}
}
