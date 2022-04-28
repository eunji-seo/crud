package com.crud.day14.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day14.mapper.Day14Mapper;
import com.crud.day14.vo.Day14;

@Service
public class Day14Service {
					
	@Autowired
	private Day14Mapper mapper;
	
	public int addDay14(Day14 day14) {
		return mapper.addDay14(day14);
	}
	public int updateDay14(Day14 day14) {
		return mapper.updateDay14(day14);
	}

	public List<Day14> getDay14List() {
		return mapper.getDay14List();
	}
	public Day14 getDay14(int id) {
		return mapper.getDay14(id);
	}

	public int deleteDay14(int id) {
		return mapper.deleteDay14(id);
	}
}
