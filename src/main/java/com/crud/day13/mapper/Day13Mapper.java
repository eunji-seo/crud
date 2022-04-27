package com.crud.day13.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day13.vo.Day13;

@Repository
public interface Day13Mapper {

	public int addDay13 (Day13 day13);

	public int updateDay13 (Day13 day13);
	
	public List<Day13> getDay13List();

	public Day13 getDay13(int id);

	public int deleteDay13(int id);
}
