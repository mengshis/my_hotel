package com.hotel.entity;

public class Goods_losing {//物品损失表

	private int gid;//物品损失id
	private String g_name;//名字
	private String g_price;//单价
	private int g_num;//数量
	private float g_total;//总价
	private int stayId;//入住信息id 外键
	
	private StayInfo stayInfo;
	
	
	
	public StayInfo getStayInfo() {
		return stayInfo;
	}
	public void setStayInfo(StayInfo stayInfo) {
		this.stayInfo = stayInfo;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_price() {
		return g_price;
	}
	public void setG_price(String g_price) {
		this.g_price = g_price;
	}
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	public float getG_total() {
		return g_total;
	}
	public void setG_total(float g_total) {
		this.g_total = g_total;
	}
	public int getStayId() {
		return stayId;
	}
	public void setStayId(int stayId) {
		this.stayId = stayId;
	}
	
	
}
