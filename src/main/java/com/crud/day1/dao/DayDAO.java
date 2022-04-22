package com.crud.day1.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day1.vo.Day1;

@Repository
public interface DayDAO {

	public int insertUser(Day1 day1);
	
	public int updateUser(Day1 day1);
	
	public List<Day1> selectUserList();

	public Day1 selectUser(int id);
	
	public int deleteUser(int id);
}
