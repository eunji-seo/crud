package com.crud.day14.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day14.vo.Day14;

@Repository
public interface Day14Mapper {

	public int addDay14(Day14 day14);

	public int updateDay14(Day14 day14);

	public List<Day14> getDay14List();

	public Day14 getDay14(int id);

	public int deleteDay14(int id);
	
}
