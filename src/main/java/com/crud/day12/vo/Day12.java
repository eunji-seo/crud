package com.crud.day12.vo;

import java.util.Date;

public class Day12 {

    private int id;
    private String summary;
    private int currentPrice;
    private int faceValue;
    private int fiveDayHigh;
    private int twentyDayHigh;
    private int fiftyTowWeeksHigh;
    private String listingdate;
    private int listedOrder;
    private int marketCap;
    private int netProfit;
    private int PER;
    private int PBR;
    private Date createdAt;
    private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public int getCurrentPrice() {
		return currentPrice;
	}
	public void setCurrentPrice(int currentPrice) {
		this.currentPrice = currentPrice;
	}
	public int getFaceValue() {
		return faceValue;
	}
	public void setFaceValue(int faceValue) {
		this.faceValue = faceValue;
	}
	public int getFiveDayHigh() {
		return fiveDayHigh;
	}
	public void setFiveDayHigh(int fiveDayHigh) {
		this.fiveDayHigh = fiveDayHigh;
	}
	public int getTwentyDayHigh() {
		return twentyDayHigh;
	}
	public void setTwentyDayHigh(int twentyDayHigh) {
		this.twentyDayHigh = twentyDayHigh;
	}
	public int getFiftyTowWeeksHigh() {
		return fiftyTowWeeksHigh;
	}
	public void setFiftyTowWeeksHigh(int fiftyTowWeeksHigh) {
		this.fiftyTowWeeksHigh = fiftyTowWeeksHigh;
	}
	public String getListingdate() {
		return listingdate;
	}
	public void setListingdate(String listingdate) {
		this.listingdate = listingdate;
	}
	public int getListedOrder() {
		return listedOrder;
	}
	public void setListedOrder(int listedOrder) {
		this.listedOrder = listedOrder;
	}
	public int getMarketCap() {
		return marketCap;
	}
	public void setMarketCap(int marketCap) {
		this.marketCap = marketCap;
	}
	public int getNetProfit() {
		return netProfit;
	}
	public void setNetProfit(int netProfit) {
		this.netProfit = netProfit;
	}
	public int getPER() {
		return PER;
	}
	public void setPER(int pER) {
		PER = pER;
	}
	public int getPBR() {
		return PBR;
	}
	public void setPBR(int pBR) {
		PBR = pBR;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	@Override
	public String toString() {
		return "Day12 [id=" + id + ", summary=" + summary + ", currentPrice=" + currentPrice + ", faceValue="
				+ faceValue + ", fiveDayHigh=" + fiveDayHigh + ", twentyDayHigh=" + twentyDayHigh
				+ ", fiftyTowWeeksHigh=" + fiftyTowWeeksHigh + ", listingdate=" + listingdate + ", listedOrder="
				+ listedOrder + ", marketCap=" + marketCap + ", netProfit=" + netProfit + ", PER=" + PER + ", PBR="
				+ PBR + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
    
    
    
}
