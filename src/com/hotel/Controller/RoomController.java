package com.hotel.Controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.dao.HotelDao;
import com.hotel.dao.PicDao;
import com.hotel.dao.RoomDao;
import com.hotel.dao.Room_styleDao;
import com.hotel.entity.Hotel;
import com.hotel.entity.Hotel_style;
import com.hotel.entity.Pic;
import com.hotel.entity.Room;
import com.hotel.entity.Room_style;
import com.hotel.service.HotelService;
import com.hotel.service.Hotel_styleService;
import com.hotel.service.PicService;
import com.hotel.service.RoomService;
import com.hotel.service.Room_styleService;

@Controller
public class RoomController {

	@Resource 
	private RoomService roomService;
	@Resource
    private HotelService hotelService;
	@Resource
    private PicService picService;
	@Resource
    private Room_styleService r_styleService;
	@Resource
    private Hotel_styleService hotel_styleService;
	@Resource
	private RoomDao roomDao;
	@Resource
	private Room_styleDao room_styleDao;
	@Resource
	private PicDao picDao;
	@RequestMapping("/hotel.do")
	public String findByH_id(@RequestParam(value = "h_id") Integer h_id ,
			 ModelMap model){
		Room room=roomService.findByH_id(h_id);
		Pic pic=picService.findById(room.getPic_id());
		Room_style r_style=r_styleService.findByR_style_id(room.getR_style_id());
		model.addAttribute("r_style",r_style);
		model.addAttribute("pic",pic);
		model.addAttribute("room", room);
		Hotel hotel=hotelService.findById(h_id);
		Hotel_style hotel_style=hotel_styleService.findById(hotel.getStyle_id());
		model.addAttribute("hotel_style", hotel_style);
		model.addAttribute("hotel", hotel);
		return "hotel";
	}
	
	@RequestMapping("admin/room.do")
	public String findAll(ModelMap model){
		List<Room> list=roomService.findAll();
		model.addAttribute("roomList", list);
		return "admin/component/room/RoomManage";
	}
	
	@RequestMapping("admin/toAddRoom.do")
	public String toAddHotel(ModelMap model){
//		List<Room_style> room_stylelist=room_styleDao.findAll();
//		model.addAttribute("room_stylelist", room_stylelist);
//		
//		List<Pic> piclist=picDao.findAll();
//		model.addAttribute("piclist", piclist);
//		
//		List<Hotel> hotellist=hotelService.findAll();
//		model.addAttribute("hotellist", hotellist);
		
		
		return "admin/component/room/addRoom";
	}

	@RequestMapping("admin/addRoom.do")
	public String save(String r_name,String inStorey,int r_style_id,int pic_id,String r_state,int h_id){

		Room room=new Room();
		room.setInStorey(inStorey);
		room.setPic_id(pic_id);
		room.setH_id(h_id);
		room.setR_name(r_name);
		room.setR_state(r_state);
		room.setR_style_id(r_style_id);
		
		roomDao.save(room);
		return "redirect:room.do";
	}
	
	@RequestMapping("admin/delRoom.do")
	public String delete(int r_id){
		Room room = roomDao.findById(r_id);
		roomDao.delete(room.getR_id());
		return "admin/component/room/RoomManage";
	}
	
	@RequestMapping("admin/toEditRoom.do")
	public String toUpdate(int r_id,ModelMap model){
		Room room = roomDao.findById(r_id);
		model.addAttribute("room", room);
		return "admin/component/room/editRoom";
	}
	
	@RequestMapping("admin/editRoom.do")
	public String update(int r_id,String r_name,String inStorey,int r_style_id,int pic_id,String r_state,int h_id){
		
		
		Room room = roomDao.findById(r_id);
		room.setH_id(h_id);
		room.setPic_id(pic_id);
		room.setInStorey(inStorey);
		room.setR_name(r_name);
		room.setR_style_id(r_style_id);
		room.setR_state(r_state);
		
		roomDao.update(room);
		return "redirect:room.do";
	}
	
}
