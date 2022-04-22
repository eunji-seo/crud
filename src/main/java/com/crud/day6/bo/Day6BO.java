package com.crud.day6.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day6.dao.Day6DAO;
import com.crud.day6.vo.Day6;

@Service
public class Day6BO {

	@Autowired
	private Day6DAO day6DAO;
	
	public int addDay6(Day6 day6) {
		return day6DAO.addDay6(day6);
	}
	public int updateDay6(Day6 day6) {
		return day6DAO.updateDay6(day6);
	}
	
	public List<Day6> getDay6(){
		return day6DAO.getDay6();
		
	}
	public Day6 getDay6ById(int id){
		return day6DAO.getDay6ById(id);
		
	}
	public int deleteDay6ById(int id){
		return day6DAO.deleteDay6ById(id);
		
	}
}
