package com.hotel.entity;

import java.util.Date;
public class StayInfo {

	private int stayId;
	private Date come_time;
	private Date leave_time;
	private boolean isGoodsLoss;
	private float total_cost;
	private int oid;
	
	private myOrder myOrder;
	
	
	
	public myOrder getMyOrder() {
		return myOrder;
	}
	public void setMyOrder(myOrder myOrder) {
		this.myOrder = myOrder;
	}
	public int getStayId() {
		return stayId;
	}
	public void setStayId(int stayId) {
		this.stayId = stayId;
	}
	public Date getCome_time() {
		return come_time;
	}
	public void setCome_time(Date come_time) {
		this.come_time = come_time;
	}
	public Date getLeave_time() {
		return leave_time;
	}
	public void setLeave_time(Date leave_time) {
		this.leave_time = leave_time;
	}
	public boolean isGoodsLoss() {
		return isGoodsLoss;
	}
	public void setGoodsLoss(boolean isGoodsLoss) {
		this.isGoodsLoss = isGoodsLoss;
	}
	public float getTotal_cost() {
		return total_cost;
	}
	public void setTotal_cost(float total_cost) {
		this.total_cost = total_cost;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	
	
}
