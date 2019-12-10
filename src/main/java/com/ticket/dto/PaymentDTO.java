package com.ticket.dto;

public class PaymentDTO {
	
	private String userId;
	private String performCode;
	private String concertDate;
	private String payment;
	
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
	public String getConcertDate() {
		return concertDate;
	}
	public void setConcertDate(String concertDate) {
		this.concertDate = concertDate;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	
	
	
}
