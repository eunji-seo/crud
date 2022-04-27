package com.crud.day13.vo;

import java.util.Date;

public class Day13 {

    private int id;
    private int previousClosingPrice;
    private int substitute;
    private int fiveDayLow;
    private int twentyDayLow;
    private int fiftyTowWeeksLow;
    private int publicOffering;
    private int addListing;
    private int capital;
    private int netProfit;
    private int EPS;
    private int BPS;
    private Date createdAt;
    private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPreviousClosingPrice() {
		return previousClosingPrice;
	}
	public void setPreviousClosingPrice(int previousClosingPrice) {
		this.previousClosingPrice = previousClosingPrice;
	}
	public int getSubstitute() {
		return substitute;
	}
	public void setSubstitute(int substitute) {
		this.substitute = substitute;
	}
	public int getFiveDayLow() {
		return fiveDayLow;
	}
	public void setFiveDayLow(int fiveDayLow) {
		this.fiveDayLow = fiveDayLow;
	}
	public int getTwentyDayLow() {
		return twentyDayLow;
	}
	public void setTwentyDayLow(int twentyDayLow) {
		this.twentyDayLow = twentyDayLow;
	}
	public int getFiftyTowWeeksLow() {
		return fiftyTowWeeksLow;
	}
	public void setFiftyTowWeeksLow(int fiftyTowWeeksLow) {
		this.fiftyTowWeeksLow = fiftyTowWeeksLow;
	}
	public int getPublicOffering() {
		return publicOffering;
	}
	public void setPublicOffering(int publicOffering) {
		this.publicOffering = publicOffering;
	}
	public int getAddListing() {
		return addListing;
	}
	public void setAddListing(int addListing) {
		this.addListing = addListing;
	}
	public int getCapital() {
		return capital;
	}
	public void setCapital(int capital) {
		this.capital = capital;
	}
	public int getNetProfit() {
		return netProfit;
	}
	public void setNetProfit(int netProfit) {
		this.netProfit = netProfit;
	}
	public int getEPS() {
		return EPS;
	}
	public void setEPS(int ePS) {
		EPS = ePS;
	}
	public int getBPS() {
		return BPS;
	}
	public void setBPS(int bPS) {
		BPS = bPS;
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
		return "Day13 [id=" + id + ", previousClosingPrice=" + previousClosingPrice + ", substitute=" + substitute
				+ ", fiveDayLow=" + fiveDayLow + ", twentyDayLow=" + twentyDayLow + ", fiftyTowWeeksLow="
				+ fiftyTowWeeksLow + ", publicOffering=" + publicOffering + ", addListing=" + addListing + ", capital="
				+ capital + ", netProfit=" + netProfit + ", EPS=" + EPS + ", BPS=" + BPS + ", createdAt=" + createdAt
				+ ", updatedAt=" + updatedAt + "]";
	}
    
    
}
