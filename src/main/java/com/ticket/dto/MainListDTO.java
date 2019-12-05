package com.ticket.dto;

public class MainListDTO {

	//performData
	private String performCode;
	private String performName;
	private String performStartDate;
	private String performEndDate;
	private int performPlaceCode;
	private int performGenreCode;
	private String performMainImage;
	
	//장르 정보
	//private int genreCode;
	private String genreName;
	
	//공연장 정보
	private String placeName;
	
	
	private int placeCode;
	
	public String getPerformCode() {
		return performCode;
	}
	public void setPerformCode(String performCode) {
		this.performCode = performCode;
	}
	public String getPerformName() {
		return performName;
	}
	public void setPerformName(String performName) {
		this.performName = performName;
	}
	public String getPerformStartDate() {
		return performStartDate;
	}
	public void setPerformStartDate(String performStartDate) {
		this.performStartDate = performStartDate;
	}
	public String getPerformEndDate() {
		return performEndDate;
	}
	public void setPerformEndDate(String performEndDate) {
		this.performEndDate = performEndDate;
	}
	public int getPerformGenreCode() {
		return performGenreCode;
	}
	public void setPerformGenreCode(int performGenreCode) {
		this.performGenreCode = performGenreCode;
	}

	/*
	 * public int getGenreCode() { return genreCode; } public void setGenreCode(int
	 * genreCode) { this.genreCode = genreCode; }
	 */
	public String getPerformMainImage() {
		return performMainImage;
	}
	public void setPerformMainImage(String performMainImage) {
		this.performMainImage = performMainImage;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getGenreName() {
		return genreName;
	}
	public void setGenreName(String genreName) {
		this.genreName = genreName;
	}
	public int getPerformPlaceCode() {
		return performPlaceCode;
	}
	public void setPerformPlaceCode(int performPlaceCode) {
		this.performPlaceCode = performPlaceCode;
	}
	public int getPlaceCode() {
		return placeCode;
	}
	public void setPlaceCode(int placeCode) {
		this.placeCode = placeCode;
	}
}
