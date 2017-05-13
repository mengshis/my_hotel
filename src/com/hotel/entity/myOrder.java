package com.hotel.entity;

import java.util.Date;

public class myOrder {

	private int oid;
	private String o_num;
	private int uid;
	private int r_id;
	private Date bookTime;
	private String o_state;
	private int o_quantity;
	private boolean isFreakfast;
	private User user;
	private Room room;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getO_num() {
		return o_num;
	}
	public void setO_num(String o_num) {
		this.o_num = o_num;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public Date getBookTime() {
		return bookTime;
	}
	public void setBookTime(Date bookTime) {
		this.bookTime = bookTime;
	}
	public String getO_state() {
		return o_state;
	}
	public void setO_state(String o_state) {
		this.o_state = o_state;
	}
	public int getO_quantity() {
		return o_quantity;
	}
	public void setO_quantity(int o_quantity) {
		this.o_quantity = o_quantity;
	}
	public boolean isFreakfast() {
		return isFreakfast;
	}
	public void setFreakfast(boolean isFreakfast) {
		this.isFreakfast = isFreakfast;
	}
	
	
}
