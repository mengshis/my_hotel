package com.hotel.dao;

import java.util.List;

import com.hotel.annotation.MyBatisRepository;
import com.hotel.entity.Pic;
@MyBatisRepository
public interface PicDao {

	public List<Pic> findAll();

	public Pic findById(int i);

	public void save(Pic pic);

	public void update(Pic pic);

	public void delete(int pic_id);
}
