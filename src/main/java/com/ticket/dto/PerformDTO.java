package com.ticket.dto;

public class PerformDTO {

	private String performCode;
	private String performName;
	private int performGenreCode;
	private String performStartDate;
	private String performEndDate;
	private int performPlaceCode;
	private int performRatingCode;
	private int performRunningtime;
	private String performMainImage;
	private String companyId;
	
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getPerformMainImage() {
		return performMainImage;
	}
	public void setPerformMainImage(String performMainImage) {
		this.performMainImage = performMainImage;
	}
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
	public int getPerformGenreCode() {
		return performGenreCode;
	}
	public void setPerformGenreCode(int performGenreCode) {
		this.performGenreCode = performGenreCode;
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
	public int getPerformPlaceCode() {
		return performPlaceCode;
	}
	public void setPerformPlaceCode(int performPlaceCode) {
		this.performPlaceCode = performPlaceCode;
	}
	public int getPerformRatingCode() {
		return performRatingCode;
	}
	public void setPerformRatingCode(int performRatingCode) {
		this.performRatingCode = performRatingCode;
	}
	public int getPerformRunningtime() {
		return performRunningtime;
	}
	public void setPerformRunningtime(int performRunningtime) {
		this.performRunningtime = performRunningtime;
	}
	
}
