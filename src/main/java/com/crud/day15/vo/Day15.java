package com.crud.day15.vo;

import java.util.Date;

public class Day15 {

    private int id;
    private String country;
    private String capital;
    private String nationalAnthem;
    private String language;
    private String monetaryUnit;
    private int area;
    private int population;
    private int gdp;
    private String climate;
    private String history;
    private int gdpPerCapita;
    private Date createdAt;
    private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCapital() {
		return capital;
	}
	public void setCapital(String capital) {
		this.capital = capital;
	}
	public String getNationalAnthem() {
		return nationalAnthem;
	}
	public void setNationalAnthem(String nationalAnthem) {
		this.nationalAnthem = nationalAnthem;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getMonetaryUnit() {
		return monetaryUnit;
	}
	public void setMonetaryUnit(String monetaryUnit) {
		this.monetaryUnit = monetaryUnit;
	}
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	public int getPopulation() {
		return population;
	}
	public void setPopulation(int population) {
		this.population = population;
	}
	public int getGdp() {
		return gdp;
	}
	public void setGdp(int gdp) {
		this.gdp = gdp;
	}
	public String getClimate() {
		return climate;
	}
	public void setClimate(String climate) {
		this.climate = climate;
	}
	public String getHistory() {
		return history;
	}
	public void setHistory(String history) {
		this.history = history;
	}
	public int getGdpPerCapita() {
		return gdpPerCapita;
	}
	public void setGdpPerCapita(int gdpPerCapita) {
		this.gdpPerCapita = gdpPerCapita;
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
		return "Day15 [id=" + id + ", country=" + country + ", capital=" + capital + ", nationalAnthem="
				+ nationalAnthem + ", language=" + language + ", monetaryUnit=" + monetaryUnit + ", area=" + area
				+ ", population=" + population + ", gdp=" + gdp + ", climate=" + climate + ", history=" + history
				+ ", gdpPerCapita=" + gdpPerCapita + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
    
    
}
