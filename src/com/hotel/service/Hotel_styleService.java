package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.Hotel_styleDao;
import com.hotel.entity.Hotel;
import com.hotel.entity.Hotel_style;

@Service
public class Hotel_styleService {

	@Resource
    private Hotel_styleDao hotel_styleDao;
	public Hotel_style findById(int style_id){
		return hotel_styleDao.findById(style_id);
	}
	
	public List<Hotel_style> findAll() {
        return hotel_styleDao.findAll();
    }
}
