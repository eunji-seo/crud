package com.crud.day11.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day11.mapper.Day11Mapper;
import com.crud.day11.vo.Day11;

@Service
public class Day11Service {
	
	@Autowired
	private Day11Mapper mapper;
	
	public int addDay11(Day11 day11) {
		return mapper.insertDay11(day11);
	}

	public int updateDay11(Day11 day11) {
		return mapper.updateDay11(day11);
	}
	
	public List<Day11> getDay11List(){
		return mapper.getDay11List();
		
	}
	public Day11 getDay11(int id){
		return mapper.selectDay11(id);
		
	}
	public int deleteDay11(int id){
		return mapper.deleteDay11(id);
		
	}
}
