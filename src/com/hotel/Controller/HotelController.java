package com.hotel.Controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.dao.HotelDao;
import com.hotel.dao.Hotel_styleDao;
import com.hotel.dao.PicDao;
import com.hotel.dao.RoomDao;
import com.hotel.dao.Room_styleDao;
import com.hotel.entity.Hotel;
import com.hotel.entity.Hotel_style;
import com.hotel.entity.Pic;
import com.hotel.entity.Room_style;
import com.hotel.service.HotelService;

@Controller
public class HotelController {

	@Resource
    private HotelService hotelService;
	@Resource
	private HotelDao hotelDao;
	@Resource
    private Hotel_styleDao hotel_styleDao;
	
	@Resource
	private RoomDao roomDao;
	@Resource
	private Room_styleDao room_styleDao;
	@Resource
	private PicDao picDao;
	
	@RequestMapping("/index.do")
	public String findAll(ModelMap model){
		List<Hotel> list=hotelService.findAll();
		model.addAttribute("hotelList", list);
		return "index";
	}
	
	@RequestMapping("admin/index.do")
	public String toAdmin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Hotel_style> list=hotel_styleDao.findAll();
		//System.out.println(list);
		List<Room_style> room_stylelist=room_styleDao.findAll();
		session.setAttribute("room_stylelist", room_stylelist);
		
		List<Pic> piclist=picDao.findAll();
		session.setAttribute("piclist", piclist);
		
		List<Hotel> hotellist=hotelService.findAll();
		session.setAttribute("hotellist", hotellist);
        session.setAttribute("styleIdList", list);
        
//        System.out.println(room_stylelist);
//        System.out.println(piclist);
//        System.out.println(hotellist);
        return "admin/index";
    }
	
	@RequestMapping("admin/hotel.do")
	public String findAll2(ModelMap model){
		List<Hotel> list=hotelService.findAll();
		model.addAttribute("hotelList", list);
		return "admin/component/hotel/hotelManage";
	}
	@RequestMapping("admin/delHotel.do")
	public String delete(int h_id){
		Hotel hotel = hotelDao.findById(h_id);
		hotelDao.delete(hotel.getH_id());
		return "admin/component/hotel/hotelManage";
	}
	@RequestMapping("admin/deleteBatch.do")
	public String deleteBatch(HttpServletRequest res){
		String[] ids=res.getParameterValues("ids");
		System.out.println(ids);
		hotelService.deleteBatch(ids);
		
		return "admin/component/hotel/hotelManage";
	}
	@RequestMapping("admin/toEditHotel.do")
	public String toUpdate(int h_id,ModelMap model){
		Hotel hotel = hotelDao.findById(h_id);
		model.addAttribute("hotel", hotel);
		return "admin/component/hotel/editHotel";
	}
	
	@RequestMapping("admin/toAddHotel.do")
	public String toAddHotel(ModelMap model){
		List<Hotel_style> list=hotel_styleDao.findAll();
		model.addAttribute("styleIdList", list);
		return "admin/component/hotel/addHotel";
	}
	
	@RequestMapping("admin/addHotel.do")
	public String save(String h_name,String h_pic,int style_id,String addr,
			String totalStorey,String totalRoom,String h_intro,String h_phone) throws UnsupportedEncodingException{

		//String s2 = new String(h_name.getBytes("ISO-8859-1"),"UTF-8");
		Hotel hotel=new Hotel();
		hotel.setH_name(h_name);
		hotel.setH_phone(h_phone);
		hotel.setAddr(addr);
		h_pic="images/"+h_pic;
		hotel.setH_pic(h_pic);
		hotel.setStyle_id(style_id);
		hotel.setTotalStorey(totalStorey);
		hotel.setTotalRoom(totalRoom);
		hotelDao.save(hotel);
		//System.out.println(addr);
		return "redirect:hotel.do";
	}
	
	@RequestMapping("admin/editHotel.do")
	public String update(int h_id,String h_name,String h_pic,int style_id,String addr,
			String totalStorey,String totalRoom,String h_intro,String h_phone) throws UnsupportedEncodingException{
		
		
		Hotel hotel=hotelDao.findById(h_id);
		//System.out.println(hotel.getH_name());
		hotel.setH_name(h_name);
		hotel.setH_phone(h_phone);
		hotel.setAddr(addr);
		h_pic="images/"+h_pic;
		hotel.setH_pic(h_pic);
		hotel.setStyle_id(style_id);
		hotel.setTotalStorey(totalStorey);
		hotel.setTotalRoom(totalRoom);
		hotelDao.update(hotel);
		//System.out.println(addr);
		return "redirect:hotel.do";
	}
}
