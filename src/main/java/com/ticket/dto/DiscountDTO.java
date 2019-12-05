package com.ticket.dto;

public class DiscountDTO {

	private String userId;
	
	private String discountCode;
	private int discountPrice;
	private String discountDesc;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}	
	public String getdiscountCode() {
		return discountCode;
	}
	public void setdiscountCode(String discountCode) {
		this.discountCode = discountCode;
	}
	public int getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}
	public String getDiscountDesc() {
		return discountDesc;
	}
	public void setDiscountDesc(String discountDesc) {
		this.discountDesc = discountDesc;
	}
	
	
	
}
