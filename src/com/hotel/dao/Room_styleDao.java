package com.hotel.dao;

import java.util.List;

import com.hotel.annotation.MyBatisRepository;
import com.hotel.entity.Room_style;

@MyBatisRepository
public interface Room_styleDao {

	List<Room_style> findAll();

	com.hotel.entity.Room_style findById(int r_style_id);

	void save(Room_style room_style);

	void update(Room_style room_style);

	void delete(int r_style_id);

}
