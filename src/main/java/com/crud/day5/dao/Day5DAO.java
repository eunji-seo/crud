package com.crud.day5.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day5.vo.Day5;

@Repository
public interface Day5DAO {

	public int addDay5(Day5 day5);
	
	public int updateDay5(Day5 day5);
	
	public List<Day5> getDay5List(); 
	
	public Day5 getDay5(int id); 
	
	public int DeleteDay5(int id); 
}
