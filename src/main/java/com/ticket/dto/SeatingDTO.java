package com.ticket.dto;

public class SeatingDTO {

	private String performCode;
	private int placeCode;
	private int Rclass;
	private int Sclass;
	private int Vclass;
	private int notSelectClass;
	
	public String getPerformCode() {
		return performCode;
	}
	public void setPerformCode(String performCode) {
		this.performCode = performCode;
	}
	public int getPlaceCode() {
		return placeCode;
	}
	public void setPlaceCode(int placeCode) {
		this.placeCode = placeCode;
	}
	public int getRclass() {
		return Rclass;
	}
	public void setRclass(int rclass) {
		Rclass = rclass;
	}
	public int getSclass() {
		return Sclass;
	}
	public void setSclass(int sclass) {
		Sclass = sclass;
	}
	public int getVclass() {
		return Vclass;
	}
	public void setVclass(int vclass) {
		Vclass = vclass;
	}
	public int getNotSelectClass() {
		return notSelectClass;
	}
	public void setNotSelectClass(int notSelectClass) {
		this.notSelectClass = notSelectClass;
	}
	
}
