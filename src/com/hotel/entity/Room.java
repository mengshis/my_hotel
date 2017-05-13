package com.hotel.entity;

public class Room {

	private int r_id;
	private String r_name;
	private String inStorey;
	private int r_style_id;
	private int pic_id;
	private String r_state;
	private int h_id;
	public int getR_id() {
		return r_id;
	}
	public int getPic_id() {
		return pic_id;
	}
	public void setPic_id(int pic_id) {
		this.pic_id = pic_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getInStorey() {
		return inStorey;
	}
	public void setInStorey(String inStorey) {
		this.inStorey = inStorey;
	}
	public int getR_style_id() {
		return r_style_id;
	}
	public void setR_style_id(int r_style_id) {
		this.r_style_id = r_style_id;
	}
	
	public String getR_state() {
		return r_state;
	}
	public void setR_state(String r_state) {
		this.r_state = r_state;
	}
	public int getH_id() {
		return h_id;
	}
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	
	
}
