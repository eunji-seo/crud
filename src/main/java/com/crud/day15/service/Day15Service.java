package com.crud.day15.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day15.mapper.Day15Mapper;
import com.crud.day15.vo.Day15;

@Service
public class Day15Service {

	@Autowired
	private Day15Mapper mapper;
	
	public int addDay15(Day15 day15) {
		return mapper.addDay15(day15);
	}
	public int updateDay15(Day15 day15) {
		return mapper.updateDay15(day15);
	}

	public List<Day15> getDay15List() {
		return mapper.getDay15List();
	}

	public Day15 getDay15(int id) {
		return mapper.getDay15(id);
	}
	public int deleteDay15(int id) {
		return mapper.deleteDay15(id);
	}
}
