package com.crud.day11.vo;

import java.util.Date;

public class Day11 {

	
	private int id;
	private String date;
	private int closingPrice;
	private int upsAndDowns;
	private int dayToDay;
	private int trading;
	private int transaction;
	private int cigar;
	private int expensive;
	private int rowCost;
	private int fastening;
	private Date createdAt;
	private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getClosingPrice() {
		return closingPrice;
	}
	public void setClosingPrice(int closingPrice) {
		this.closingPrice = closingPrice;
	}
	public int getUpsAndDowns() {
		return upsAndDowns;
	}
	public void setUpsAndDowns(int upsAndDowns) {
		this.upsAndDowns = upsAndDowns;
	}
	public int getDayToDay() {
		return dayToDay;
	}
	public void setDayToDay(int dayToDay) {
		this.dayToDay = dayToDay;
	}
	public int getTrading() {
		return trading;
	}
	public void setTrading(int trading) {
		this.trading = trading;
	}
	public int getTransaction() {
		return transaction;
	}
	public void setTransaction(int transaction) {
		this.transaction = transaction;
	}
	public int getCigar() {
		return cigar;
	}
	public void setCigar(int cigar) {
		this.cigar = cigar;
	}
	public int getExpensive() {
		return expensive;
	}
	public void setExpensive(int expensive) {
		this.expensive = expensive;
	}
	public int getRowCost() {
		return rowCost;
	}
	public void setRowCost(int rowCost) {
		this.rowCost = rowCost;
	}
	public int getFastening() {
		return fastening;
	}
	public void setFastening(int fastening) {
		this.fastening = fastening;
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
		return "Day11 [id=" + id + ", date=" + date + ", closingPrice=" + closingPrice + ", upsAndDowns=" + upsAndDowns
				+ ", dayToDay=" + dayToDay + ", trading=" + trading + ", transaction=" + transaction + ", cigar="
				+ cigar + ", expensive=" + expensive + ", rowCost=" + rowCost + ", fastening=" + fastening
				+ ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	
	
}
