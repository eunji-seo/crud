package com.crud.day3.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day3.vo.Day3;

@Repository
public interface Day3DAO {

	public int insertDay3(Day3 day3);

	public int updateDay3(Day3 day3);
	
	public List<Day3> seletInfoList();

	public Day3 seletInfo(int id);
	
	public int deleteDay3(int id);

}
