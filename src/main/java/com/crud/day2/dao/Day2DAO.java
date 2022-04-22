package com.crud.day2.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day2.vo.Day2;

@Repository
public interface Day2DAO {

	public int insertSinger(Day2 day2);

	public int updateSinger(Day2 day2);
	
	public List<Day2> selectSingerList();
	
	public Day2 selectSinger(int id);
	
	public int deleteSinger(int id);
}
