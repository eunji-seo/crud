package com.crud.day12.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day12.mapper.Day12Mapper;
import com.crud.day12.vo.Day12;

@Service
public class Day12Service {

	@Autowired
	private Day12Mapper mapper;
	
	public int addDay12(Day12 day12) {
		return mapper.insertDay12(day12);
	}
	public int updateDay12(Day12 day12) {
		return mapper.updateDay12(day12);
	}

	public List<Day12> getDay12List() {
		return mapper.getDay12List();
	}
	
	public Day12 getDay12(int id) {
		return mapper.getDay12(id);
	}

	public int deleteDay12(int id) {
		return mapper.deleteDay12(id);
	}
}
