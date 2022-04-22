package com.crud.day10.vo;

import java.util.Date;

public class Day10 {

	
	  private int id;
	  private String name;
	  private String phoneNumber;
	  private String terms;
	  private String privacy;
	  private String loginId;
	  private String password;
	  private String gender;
	  private String email;
	  private String creditAgreement;
	  private Date createdAt;
	  private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getTerms() {
		return terms;
	}
	public void setTerms(String terms) {
		this.terms = terms;
	}
	public String getPrivacy() {
		return privacy;
	}
	public void setPrivacy(String privacy) {
		this.privacy = privacy;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCreditAgreement() {
		return creditAgreement;
	}
	public void setCreditAgreement(String creditAgreement) {
		this.creditAgreement = creditAgreement;
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
		return "Day10 [id=" + id + ", name=" + name + ", phoneNumber=" + phoneNumber + ", terms=" + terms + ", privacy="
				+ privacy + ", loginId=" + loginId + ", password=" + password + ", gender=" + gender + ", email="
				+ email + ", creditAgreement=" + creditAgreement + ", createdAt=" + createdAt + ", updatedAt="
				+ updatedAt + "]";
	}
	  
	  
}
