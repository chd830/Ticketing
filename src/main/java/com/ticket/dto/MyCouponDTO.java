package com.ticket.dto;

public class MyCouponDTO {
	
	private String userId;

	private String couponCode;
	private int couponPrice;
	private String couponDesc;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getcouponCode() {
		return couponCode;
	}
	public void setcouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	public int getCouponPrice() {
		return couponPrice;
	}
	public void setCouponPrice(int couponPrice) {
		this.couponPrice = couponPrice;
	}
	public String getCouponDesc() {
		return couponDesc;
	}
	public void setCouponDesc(String couponDesc) {
		this.couponDesc = couponDesc;
	}
	
	
}
