package com.crud.day8.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day8.vo.Day8;

@Repository
public interface Day8DAO {

	public int addDay8(Day8 day8);
	
	public int updateDay8(Day8 day8);
	
	public List<Day8> getDay8List();
	
	public Day8 getDay8(int id);
	
	public int deleteDay8(int id);
}
