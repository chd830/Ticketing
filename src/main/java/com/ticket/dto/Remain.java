package com.ticket.dto;

import java.util.HashMap;

public class Remain {
	private int placeCode; 
	private String seatClass;
	private String seatRow;
	private int seatNum;
	private int isEmpty;
	
	public int getPlaceCode() {
		return placeCode;
	}
	public void setPlaceCode(int placeCode) {
		this.placeCode = placeCode;
	}
	public String getSeatClass() {
		return seatClass;
	}
	public void setSeatClass(String seatClass) {
		this.seatClass = seatClass;
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
	public int getIsEmpty() {
		return isEmpty;
	}
	public void setIsEmpty(int isEmpty) {
		HashMap<String, Object> map = new HashMap();
		map.put("seatRow", "N");
		map.put("seatNum", 1);
		this.isEmpty = isEmpty;
	}
	
	
}
