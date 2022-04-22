package com.crud.day2.vo;

import java.util.Date;

public class Day2 {

	private int id;
	private String title;
	private int playTime;
	private String lyricist;
	private String composer;
	private String name;
	private String debut;
	private String agency;
	private String albumTitle;
	private String releaseDate;
	private int tracks;
	private int ranking;
	private String awards;
	private String overseasActivities;
	private String retirement;
	private Date createdAt;
	private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPlayTime() {
		return playTime;
	}
	public void setPlayTime(int playTime) {
		this.playTime = playTime;
	}
	public String getLyricist() {
		return lyricist;
	}
	public void setLyricist(String lyricist) {
		this.lyricist = lyricist;
	}
	public String getComposer() {
		return composer;
	}
	public void setComposer(String composer) {
		this.composer = composer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDebut() {
		return debut;
	}
	public void setDebut(String debut) {
		this.debut = debut;
	}
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	public String getAlbumTitle() {
		return albumTitle;
	}
	public void setAlbumTitle(String albumTitle) {
		this.albumTitle = albumTitle;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public int getTracks() {
		return tracks;
	}
	public void setTracks(int tracks) {
		this.tracks = tracks;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public String getAwards() {
		return awards;
	}
	public void setAwards(String awards) {
		this.awards = awards;
	}
	public String getOverseasActivities() {
		return overseasActivities;
	}
	public void setOverseasActivities(String overseasActivities) {
		this.overseasActivities = overseasActivities;
	}
	public String getRetirement() {
		return retirement;
	}
	public void setRetirement(String retirement) {
		this.retirement = retirement;
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
		return "Day2 [id=" + id + ", title=" + title + ", playTime=" + playTime + ", lyricist=" + lyricist
				+ ", composer=" + composer + ", name=" + name + ", debut=" + debut + ", agency=" + agency
				+ ", albumTitle=" + albumTitle + ", releaseDate=" + releaseDate + ", tracks=" + tracks + ", ranking="
				+ ranking + ", awards=" + awards + ", overseasActivities=" + overseasActivities + ", retirement="
				+ retirement + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	
	
}
