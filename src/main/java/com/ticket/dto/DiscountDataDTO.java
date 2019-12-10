package com.ticket.dto;

public class DiscountDataDTO {

	private String discountCode;
	private String discountName;
	private int discountPrice;
	private String discountDesc;
	private int amount;	

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getDiscountCode() {
		return discountCode;
	}

	public void setDiscountCode(String discountCode) {
		this.discountCode = discountCode;
	}

	public String getDiscountName() {
		return discountName;
	}

	public void setDiscountName(String discountName) {
		this.discountName = discountName;
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
