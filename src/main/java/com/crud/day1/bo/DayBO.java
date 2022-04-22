package com.crud.day1.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day1.dao.DayDAO;
import com.crud.day1.vo.Day1;

@Service
public class DayBO {

	@Autowired
	private DayDAO dayDAO;
	
	public int addUser(Day1 day1) {
		return dayDAO.insertUser(day1);
	}
	
	public int updateUser(Day1 day1) {
		return dayDAO.updateUser(day1);
	}
	
	public List<Day1> getUserList(){
		return dayDAO.selectUserList();
	}
	public Day1 getUser(int id){
		return dayDAO.selectUser(id);
	}
	
	public int deleteUser(int id) {
		return dayDAO.deleteUser(id);
	}
	
}
