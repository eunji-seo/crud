package com.crud.day11.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day11.vo.Day11;


@Repository
public interface Day11Mapper {

	public int insertDay11(Day11 day11);

	public int updateDay11(Day11 day11);
	
	public List<Day11> getDay11List();

	public Day11 selectDay11(int id);

	public int deleteDay11(int id);
}
