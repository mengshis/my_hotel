package com.hotel.dao;

import java.util.List;

import com.hotel.annotation.MyBatisRepository;
import com.hotel.entity.Goods_losing;

@MyBatisRepository
public interface Goods_losingDao {

	Goods_losing findById(int i);

	List<Goods_losing> findAll();

	void update(Goods_losing e);

	void save(Goods_losing e);

	Goods_losing findById2(int i);

	void delete(int gid);

}
