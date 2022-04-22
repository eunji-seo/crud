package com.crud.day9.vo;

import java.util.Date;

public class Day9 {
	private int id;
	private String name;
	private String socialSecurityNumber;
	private String uniqueIdentification;
	private String sensitive;
	private String individual;
	private String offerUniqueIdentification;
	private String offerSensitive;
	private String offerIndividual;
	private String thirdIndividual;
	private String lookupUniqueIdentification;
	private String lookupSensitive;
	private String lookupIndividual;
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
	public String getSocialSecurityNumber() {
		return socialSecurityNumber;
	}
	public void setSocialSecurityNumber(String socialSecurityNumber) {
		this.socialSecurityNumber = socialSecurityNumber;
	}
	public String getUniqueIdentification() {
		return uniqueIdentification;
	}
	public void setUniqueIdentification(String uniqueIdentification) {
		this.uniqueIdentification = uniqueIdentification;
	}
	public String getSensitive() {
		return sensitive;
	}
	public void setSensitive(String sensitive) {
		this.sensitive = sensitive;
	}
	public String getIndividual() {
		return individual;
	}
	public void setIndividual(String individual) {
		this.individual = individual;
	}
	public String getOfferUniqueIdentification() {
		return offerUniqueIdentification;
	}
	public void setOfferUniqueIdentification(String offerUniqueIdentification) {
		this.offerUniqueIdentification = offerUniqueIdentification;
	}
	public String getOfferSensitive() {
		return offerSensitive;
	}
	public void setOfferSensitive(String offerSensitive) {
		this.offerSensitive = offerSensitive;
	}
	public String getOfferIndividual() {
		return offerIndividual;
	}
	public void setOfferIndividual(String offerIndividual) {
		this.offerIndividual = offerIndividual;
	}
	public String getThirdIndividual() {
		return thirdIndividual;
	}
	public void setThirdIndividual(String thirdIndividual) {
		this.thirdIndividual = thirdIndividual;
	}
	public String getLookupUniqueIdentification() {
		return lookupUniqueIdentification;
	}
	public void setLookupUniqueIdentification(String lookupUniqueIdentification) {
		this.lookupUniqueIdentification = lookupUniqueIdentification;
	}
	public String getLookupSensitive() {
		return lookupSensitive;
	}
	public void setLookupSensitive(String lookupSensitive) {
		this.lookupSensitive = lookupSensitive;
	}
	public String getLookupIndividual() {
		return lookupIndividual;
	}
	public void setLookupIndividual(String lookupIndividual) {
		this.lookupIndividual = lookupIndividual;
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
		return "Day9 [id=" + id + ", name=" + name + ", socialSecurityNumber=" + socialSecurityNumber
				+ ", uniqueIdentification=" + uniqueIdentification + ", sensitive=" + sensitive + ", individual="
				+ individual + ", offerUniqueIdentification=" + offerUniqueIdentification + ", offerSensitive="
				+ offerSensitive + ", offerIndividual=" + offerIndividual + ", thirdIndividual=" + thirdIndividual
				+ ", lookupUniqueIdentification=" + lookupUniqueIdentification + ", lookupSensitive=" + lookupSensitive
				+ ", lookupIndividual=" + lookupIndividual + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt
				+ "]";
	}
	
	
}
