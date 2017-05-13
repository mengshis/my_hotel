package com.hotel.Controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.entity.Goods_losing;
import com.hotel.entity.Hotel;
import com.hotel.service.Goods_losingService;

@Controller
public class Goods_losingController {
	
	@Resource
    private Goods_losingService goods_losingService;
	
	@RequestMapping("admin/goods.do")
	public String findAll(ModelMap model){
		List<Goods_losing> list=goods_losingService.findAll();
		model.addAttribute("goods_losingList", list);
		return "admin/component/goods_losing/Goods_losing";
	}
}
