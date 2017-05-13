package com.hotel.dao;

import java.util.List;

import com.hotel.annotation.MyBatisRepository;
import com.hotel.entity.Room;

@MyBatisRepository
public interface RoomDao {

	List<Room> findAll();

	Room findById(int i);
	
	Room findByInStorey(String inStorey);
	
	void save(Room room);

	void update(Room room);

	void delete(int i);

	Room findByH_id(int i);

}
