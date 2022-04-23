package com.crud.day10.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day10.vo.Day10;

@Repository
public interface Day10Mapper {

	public int insertDay10(Day10 day10);

	public int updateDay10(Day10 day10);

	public List<Day10> getDay10List();
	
	public Day10 getDay10(int id);
	
	public int deleteDay10(int id);
}
