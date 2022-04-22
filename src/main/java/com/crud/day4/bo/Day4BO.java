package com.crud.day4.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day4.dao.Day4DAO;
import com.crud.day4.vo.Day4;

@Service
public class Day4BO {

	@Autowired
	private Day4DAO day4DAO;
	
	
	public int addDay4(Day4 day4) {
		return day4DAO.insertDay4(day4);
	}

	public int updateDay4(Day4 day4) {
		return day4DAO.updateDay4(day4);
	}
	public List<Day4> getDay4List() {
		return day4DAO.getDay4List();
	}

	public Day4 getDay4(int id) {
		return day4DAO.getDay4(id);
	}
	public int deleteDay4(int id) {
		return day4DAO.deleteDay4(id);
	}
}
