package com.crud.day13.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day13.mapper.Day13Mapper;
import com.crud.day13.vo.Day13;

@Service
public class Day13Service {

	@Autowired
	private Day13Mapper mapper;
	
	public int addDay13 (Day13 day13) {
		return mapper.addDay13(day13);
	}
	public int updateDay13 (Day13 day13) {
		return mapper.updateDay13(day13);
	}
	
	public List<Day13> getDay13List(){
		return mapper.getDay13List();
	}
	public Day13 getDay13(int id){
		return mapper.getDay13(id);
	}

	public int deleteDay13(int id){
		return mapper.deleteDay13(id);
	}
}
