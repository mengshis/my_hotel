package com.hotel.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.PicDao;
import com.hotel.entity.Pic;

@Service
public class PicService {

	@Resource
    private PicDao picDao;
	
	public Pic findById(int pic_id){
		return picDao.findById(pic_id);
		
	}
}
