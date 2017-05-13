package com.hotel.Controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.hotel.service.Hotel_styleService;

@Controller
public class Hotel_styleController {

	@Resource
    private Hotel_styleService hotel_styleService;
	
	
}
