package com.crud.day9.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day9.vo.Day9;

@Repository
public interface Day9DAO {

	public int insertDay9(Day9 day9);
	
	public int updateDay9(Day9 day9);
	
	public List<Day9> selectDay9List();
	
	public Day9 selectDay9(int id);

	public int deleteDay9(int id);
}
