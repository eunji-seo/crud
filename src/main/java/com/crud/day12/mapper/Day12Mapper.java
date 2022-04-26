package com.crud.day12.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day12.vo.Day12;

@Repository
public interface Day12Mapper {

	public int insertDay12(Day12 day12);

	public int updateDay12(Day12 day12);
	
	public List<Day12> getDay12List();
	
	public Day12 getDay12(int id);

	public int deleteDay12(int id);
}
