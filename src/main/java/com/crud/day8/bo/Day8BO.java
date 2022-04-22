package com.crud.day8.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day8.dao.Day8DAO;
import com.crud.day8.vo.Day8;

@Service
public class Day8BO {

	@Autowired
	private Day8DAO day8DAO;
	
	public int addDay8(Day8 day8) {
	 return day8DAO.addDay8(day8);
	}
	
	public int updateDay8(Day8 day8) {
		return day8DAO.updateDay8(day8);
	}
	
	public List<Day8> getDay8List(){
		return day8DAO.getDay8List();
	}
	public Day8 getDay8(int id){
		return day8DAO.getDay8(id);
	}
	public int deleteDay8(int id){
		return day8DAO.deleteDay8(id);
	}
}
