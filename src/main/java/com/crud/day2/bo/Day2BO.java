package com.crud.day2.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day2.dao.Day2DAO;
import com.crud.day2.vo.Day2;

@Service
public class Day2BO {

	@Autowired
	private Day2DAO day2DAO;
	
	public int addSinger(Day2 day2) {
		return day2DAO.insertSinger(day2);
	}
	
	public int updateSinger(Day2 day2) {
		return day2DAO.updateSinger(day2);
	}
	
	public List<Day2> getSingerList(){
		return day2DAO.selectSingerList();
	}

	public Day2 getSinger(int id){
		return day2DAO.selectSinger(id);
	}
	
	public int deleteSinger(int id){
		return day2DAO.deleteSinger(id);
	}
}
