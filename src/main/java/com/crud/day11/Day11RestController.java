package com.crud.day11;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day11.service.Day11Service;
import com.crud.day11.vo.Day11;

@RestController
public class Day11RestController {

	@Autowired
	private Day11Service service;
	
	@PostMapping("/day11/day11")
	public Map<String, Object> day11(
			@ModelAttribute Day11 day11
			){
		
		Map<String, Object> result = new HashMap<>();
			result.put("result", "success");
			
			int row = service.addDay11(day11);
			if(row < 1) {
				result.put("errorMessage", "다시시도");
			}
			
		return result;
		
	}
	
	@PutMapping("/day11/day11_detail")
	public Map<String, Object> day11Detail(
			@ModelAttribute Day11 day11
			){
					
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = service.updateDay11(day11);
		
		if(row < 1) {
			result.put("errorMessage", "다시시도");
		}
		
		return result;
	}
	
	@DeleteMapping("/day11/delete")
	public Map<String, Object> day11Delete(
			@RequestParam("id") int id){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = service.deleteDay11(id);
		
		if (row < 1) {
			result.put("errorMessage", "다시시도");
		}
		
		return result;
		
	}
}
