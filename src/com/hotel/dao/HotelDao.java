package com.hotel.dao;

import java.util.List;

import com.hotel.annotation.MyBatisRepository;
import com.hotel.entity.Hotel;


@MyBatisRepository
public interface HotelDao {

	List<Hotel> findAll();
	
	Hotel findById(int id);
	
	void save(Hotel hotel);
	
	void update(Hotel hotel);
	
	void delete(int h_id);

	void deleteBatch(List<Integer> idList);

	List<Hotel> queryMessageList(String h_name, String addr);
	
	
}
