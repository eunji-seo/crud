package com.crud.day10;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day10.service.Day10Services;
import com.crud.day10.vo.Day10;

@RestController
public class Day10RestController {

	@Autowired
	private Day10Services services;
	
	@PostMapping("/day10/day10")
	public Map<String, Object> day10(
			@ModelAttribute Day10 day10
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = services.addDay10(day10);
		
		if(row < 1) {
			result.put("errorMessage", "다시시도");
		}
		return result;
	}
	
	@PutMapping("/day10/day10_detail")
	public Map<String, Object> day10Detail(
			@ModelAttribute Day10 day10
			){
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = services.updateDay10(day10);
		
		if(row < 1) {
			result.put("errorMessage", "다시시도");
		}
		return result;
	}

	@DeleteMapping("/day10/delete")
	public Map<String, Object> delete(
			@RequestParam("id") int id
			){
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = services.deleteDay10(id);
		if(row < 1) {
			result.put("errorMessage", "다시시도");
		}
		return result;
	}
}
