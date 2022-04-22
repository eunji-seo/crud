package com.crud.day6.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day6.vo.Day6;

@Repository
public interface Day6DAO {

	public int addDay6(Day6 day6);
	
	public int updateDay6(Day6 day6);
	
	public List<Day6> getDay6();
	
	public Day6 getDay6ById(int id);
	
	public int deleteDay6ById(int id);
}
