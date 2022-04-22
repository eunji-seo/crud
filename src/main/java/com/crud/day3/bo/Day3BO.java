package com.crud.day3.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day3.dao.Day3DAO;
import com.crud.day3.vo.Day3;

@Service
public class Day3BO {

	@Autowired
	private Day3DAO day3DAO;
	
	public int addDay3(Day3 day3) {
		return day3DAO.insertDay3(day3);
	}
	
	public int updateDay3(Day3 day3) {
		return day3DAO.updateDay3(day3);
	}
	
	public List<Day3> getInfoList(){
		return day3DAO.seletInfoList();
	}
	public Day3 getInfo(int id){
		return day3DAO.seletInfo(id);
	}
	public int deleteDay3(int id){
		return day3DAO.deleteDay3(id);
	}
}
