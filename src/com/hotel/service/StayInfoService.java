package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.StayInfoDao;
import com.hotel.entity.Room;
import com.hotel.entity.StayInfo;

@Service
public class StayInfoService {
	@Resource(name="stayInfoDao")
    private StayInfoDao stayInfoDao;
	
	public void save(StayInfo stayInfo){
		stayInfoDao.save(stayInfo);
	}

	public List<StayInfo> findAll() {
		
		return stayInfoDao.findAll();
	}
}
