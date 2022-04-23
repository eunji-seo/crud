package com.crud.day10.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day10.mapper.Day10Mapper;
import com.crud.day10.vo.Day10;

@Service
public class Day10Services {

	@Autowired
	private Day10Mapper mapper;
	
	public int addDay10(Day10 day10) {
		return mapper.insertDay10(day10);
	}

	public int updateDay10(Day10 day10) {
		return mapper.updateDay10(day10);
	}
	
	public List<Day10> getDay10List(){
		return mapper.getDay10List();
	}

	public Day10 getDay10(int id){
		return mapper.getDay10(id);
	}
	public int deleteDay10(int id){
		return mapper.deleteDay10(id);
	}
	
}
