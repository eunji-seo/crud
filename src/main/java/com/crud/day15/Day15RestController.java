package com.crud.day15;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day15.service.Day15Service;
import com.crud.day15.vo.Day15;

@RestController
public class Day15RestController {

	@Autowired
	private Day15Service service;
	
	@PostMapping("/day15/day15")
	public Map<String, Object> day15(
			@ModelAttribute Day15 day15
			){
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = service.addDay15(day15);
		
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
		
	}
	
	@PutMapping("/day15/day15_detail")
	public Map<String, Object> day15Detail(
			@ModelAttribute Day15 day15
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = service.updateDay15(day15);
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
	}
	@DeleteMapping("/day15/delete")
	public Map<String, Object> delete(
			@RequestParam("id") int id){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = service.deleteDay15(id);
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
		
	}
}
