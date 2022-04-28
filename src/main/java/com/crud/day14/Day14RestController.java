package com.crud.day14;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day14.service.Day14Service;
import com.crud.day14.vo.Day14;

@RestController
public class Day14RestController {

	@Autowired
	private Day14Service service;
	
	@PostMapping("/day14/day14")
	public Map<String, Object> day14(
			@ModelAttribute Day14 day14
			){
		
		Map<String, Object> result = new HashMap<>();
			result.put("result", "success");
			int row = service.addDay14(day14);
			
			if(row < 1) {
				result.put("errorMessage", "error");
			}
			
			
		return result;
			
			
	}
	
	@PutMapping("/day14/day14_detail")
	public Map<String, Object> day14Detail(
			@ModelAttribute Day14 day14
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		int row = service.updateDay14(day14);
		
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
	}
	
	@DeleteMapping("/day14/delete")
	public Map<String, Object> delete(
			@RequestParam("id") int id
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
			int row = service.deleteDay14(id);
			if(row < 1) {
				result.put("errorMessage", "error");
			}
		
		return result;
	}
}
