package com.ticket.dto;

public class PlaceDTO {

	private int placeCode;
	private String placeName;
	private String placeAddr;
	private int placeMapX;
	private int placeMapY;
	
	public String getPlaceAddr() {
		return placeAddr;
	}
	public void setPlaceAddr(String placeAddr) {
		this.placeAddr = placeAddr;
	}
	public int getPlaceCode() {
		return placeCode;
	}
	public void setPlaceCode(int placeCode) {
		this.placeCode = placeCode;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public int getPlaceMapX() {
		return placeMapX;
	}
	public void setPlaceMapX(int placeMapX) {
		this.placeMapX = placeMapX;
	}
	public int getPlaceMapY() {
		return placeMapY;
	}
	public void setPlaceMapY(int placeMapY) {
		this.placeMapY = placeMapY;
	}
	
}
