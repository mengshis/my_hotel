package com.hotel.dao;

import java.util.List;

import com.hotel.annotation.MyBatisRepository;
import com.hotel.entity.myOrder;

@MyBatisRepository
public interface MyOrderDao {

	myOrder findById(int i);

	List<myOrder> findAll();

	void update(myOrder myOrder);

	void save(myOrder e);

	void delete(int i);

	myOrder findById2(int i);


}
