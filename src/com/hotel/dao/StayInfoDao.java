package com.hotel.dao;

import java.util.List;

import com.hotel.annotation.MyBatisRepository;
import com.hotel.entity.StayInfo;
@MyBatisRepository
public interface StayInfoDao {

	StayInfo findById(int i);
	

	List<StayInfo> findAll();

	void update(StayInfo e);

	void save(StayInfo e);

	void delete(int i);

	StayInfo findById2(int i);

	
}
