package com.hotel.dao;

import java.util.List;

import com.hotel.annotation.MyBatisRepository;
import com.hotel.entity.Hotel_style;

@MyBatisRepository
public interface Hotel_styleDao {

	List<Hotel_style> findAll();

	Hotel_style findById(int i);

	void save(Hotel_style hotel_style);

	void update(Hotel_style hotel_style);

	void delete(int style_id);

	
}
