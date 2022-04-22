package com.crud.day4.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day4.vo.Day4;

@Repository
public interface Day4DAO {

	public int insertDay4(Day4 day4);
	
	public int updateDay4(Day4 day4); 
	
	public List<Day4> getDay4List();
	
	public Day4 getDay4(int id);
	public int deleteDay4(int id);
}
