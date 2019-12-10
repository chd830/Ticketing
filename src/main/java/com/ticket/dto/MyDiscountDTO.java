package com.ticket.dto;

public class MyDiscountDTO {

	private String userId;
	
	private String discountName;
	private String discountCode;
	private int discountPrice;
	private String discountDesc;
	
	public String getDiscountName() {
		return discountName;
	}
	public void setDiscountName(String discountName) {
		this.discountName = discountName;
	}
	public String getDiscountCode() {
		return discountCode;
	}
	public void setDiscountCode(String discountCode) {
		this.discountCode = discountCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
