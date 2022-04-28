package com.crud.day14.vo;

import java.util.Date;

public class Day14 {
	private int id;
    private String userId;
    private String name;
    private String PhoneNumber;
    private String officeCallNumber;
    private String smsReseption;
    private String callRejection;
    private String address;
    private String officeAddress;
    private String email;
    private String emailReseption;
    private String DepositRelated;
    private String goddessRelated;
    private Date createdAt;
    private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getOfficeCallNumber() {
		return officeCallNumber;
	}
	public void setOfficeCallNumber(String officeCallNumber) {
		this.officeCallNumber = officeCallNumber;
	}
	public String getSmsReseption() {
		return smsReseption;
	}
	public void setSmsReseption(String smsReseption) {
		this.smsReseption = smsReseption;
	}
	public String getCallRejection() {
		return callRejection;
	}
	public void setCallRejection(String callRejection) {
		this.callRejection = callRejection;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getOfficeAddress() {
		return officeAddress;
	}
	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmailReseption() {
		return emailReseption;
	}
	public void setEmailReseption(String emailReseption) {
		this.emailReseption = emailReseption;
	}
	public String getDepositRelated() {
		return DepositRelated;
	}
	public void setDepositRelated(String depositRelated) {
		DepositRelated = depositRelated;
	}
	public String getGoddessRelated() {
		return goddessRelated;
	}
	public void setGoddessRelated(String goddessRelated) {
		this.goddessRelated = goddessRelated;
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
		return "Day14 [id=" + id + ", userId=" + userId + ", name=" + name + ", PhoneNumber=" + PhoneNumber
				+ ", officeCallNumber=" + officeCallNumber + ", smsReseption=" + smsReseption + ", callRejection="
				+ callRejection + ", address=" + address + ", officeAddress=" + officeAddress + ", email=" + email
				+ ", emailReseption=" + emailReseption + ", DepositRelated=" + DepositRelated + ", goddessRelated="
				+ goddessRelated + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	
    
    
}
