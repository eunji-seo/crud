package com.crud.day5.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day5.dao.Day5DAO;
import com.crud.day5.vo.Day5;

@Service
public class Day5BO {

	@Autowired
	private Day5DAO day5DAO;
	
	public int addDay5(Day5 day5) {
		return day5DAO.addDay5(day5);
	}
	public int updateDay5(Day5 day5) {
		return day5DAO.updateDay5(day5);
	}
	public List<Day5> getDay5List() {
		return day5DAO.getDay5List();
	}
	public Day5 getDay5(int id) {
		return day5DAO.getDay5(id);
	}
	public int DeleteDay5(int id) {
		return day5DAO.DeleteDay5(id);
	}
}
