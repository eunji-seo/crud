package com.crud.day15.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day15.vo.Day15;

@Repository
public interface Day15Mapper {

	public int addDay15(Day15 day15);

	public int updateDay15(Day15 day15);
	
	public List<Day15> getDay15List();
	
	public Day15 getDay15(int id);

	public int deleteDay15(int id);


}
