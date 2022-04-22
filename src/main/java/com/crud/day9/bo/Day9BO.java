package com.crud.day9.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day9.dao.Day9DAO;
import com.crud.day9.vo.Day9;

@Service
public class Day9BO {

	@Autowired
	private Day9DAO day9DAO;
	
	public int addDay9(Day9 day9) {
		return day9DAO.insertDay9(day9);
	}
	public int updateDay9(Day9 day9) {
		return day9DAO.updateDay9(day9);
	}
	
	public List<Day9> getDay9List(){
		return day9DAO.selectDay9List();
	} 
	public Day9 getDay9(int id){
		return day9DAO.selectDay9(id);
	} 
	public int deleteDay9(int id){
		return day9DAO.deleteDay9(id);
	} 
	
}
