package com.crud.day12;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day12.service.Day12Service;
import com.crud.day12.vo.Day12;

@RestController
public class Day12RestController {

	@Autowired
	private Day12Service service;
	@PostMapping("/day12/day12")
	public Map<String, Object> day12(
			@ModelAttribute Day12 day12
			){
		
		Map<String, Object> result = new HashMap<>();
			result.put("result", "success");
			
		int row = service.addDay12(day12);
			if(row < 1) {
				result.put("errorMessage", "다시시도");
			}
		return result;
			
	}
	
	@PutMapping("/day12/day12_detail")
	public Map<String, Object> day12Detail(
			@ModelAttribute Day12 day12
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result","success");
		
			int row = service.updateDay12(day12);
		if(row < 1) {
			result.put("errorMessage", "다시시도");
		}
		
		return result;
		
		
	}
	@DeleteMapping("/day12/delete")
	public Map<String, Object> day12delete(
			@RequestParam("id") int id
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = service.deleteDay12(id);
		
		if(row < 1) {
			result.put("errorMessage", "다시시도");
			
		}
		
		return result;
	}
}
