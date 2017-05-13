package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.Goods_losingDao;
import com.hotel.entity.Goods_losing;

@Service
public class Goods_losingService {

	@Resource
	private Goods_losingDao goods_losingDao;
	
	public List<Goods_losing> findAll() {
        return goods_losingDao.findAll();
    }
}
