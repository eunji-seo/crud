package com.crud.day7.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day7.dao.Day7DAO;
import com.crud.day7.vo.Day7;

@Service
public class Day7BO {

		@Autowired
		private Day7DAO day7DAO;
		
		public int addDay7(Day7 day7) {
			return day7DAO.addDay7(day7);
		}
		public int updateDay7(Day7 day7) {
			return day7DAO.updateDay7(day7);
		}
		
		public List<Day7> getDay7List(){
			return day7DAO.getDay7List();
		}
		public Day7 getDay7(int id){
			return day7DAO.getDay7(id);
		}
		public int deleteDay7(int id){
			return day7DAO.deleteDay7(id);
		}
		
}
