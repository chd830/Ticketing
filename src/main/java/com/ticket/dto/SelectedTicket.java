package com.ticket.dto;

public class SelectedTicket {
	private String userId;
	private String performCode;
	private String selectedDAte;
	private String time;
	private int inwon;
	private int ticketPrice;
	private int discountPrice;
	private int couponPrice;
	private int pointPrice;
	private String seatRow;
	private int seatNum;
	private int finalPay;
	
	public int getFinalPay() {
		return finalPay;
	}
	public void setFinalPay(int finalPay) {
		this.finalPay = finalPay;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPerformCode() {
		return performCode;
	}
	public void setPerformCode(String performCode) {
		this.performCode = performCode;
	}
	public String getSelectedDAte() {
		return selectedDAte;
	}
	public void setSelectedDAte(String selectedDAte) {
		this.selectedDAte = selectedDAte;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getInwon() {
		return inwon;
	}
	public void setInwon(int inwon) {
		this.inwon = inwon;
	}
	public int getTicketPrice() {
		return ticketPrice;
	}
	public void setTicketPrice(int ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
	public int getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}
	public int getCouponPrice() {
		return couponPrice;
	}
	public void setCouponPrice(int couponPrice) {
		this.couponPrice = couponPrice;
	}
	public int getPointPrice() {
		return pointPrice;
	}
	public void setPointPrice(int pointPrice) {
		this.pointPrice = pointPrice;
	}
	public String getSeatRow() {
		return seatRow;
	}
	public void setSeatRow(String seatRow) {
		this.seatRow = seatRow;
	}
	public int getSeatNum() {
		return seatNum;
	}
	public void setSeatNum(int seatNum) {
		this.seatNum = seatNum;
	}
}
