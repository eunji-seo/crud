package com.crud.day7.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day7.vo.Day7;

@Repository
public interface Day7DAO {
	public int addDay7(Day7 day7);

	public int updateDay7(Day7 day7);
	
	public List<Day7> getDay7List();
	
	public Day7 getDay7(int id);

	public int deleteDay7(int id);

}
