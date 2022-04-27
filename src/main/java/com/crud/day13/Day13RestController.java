package com.crud.day13;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day13.service.Day13Service;
import com.crud.day13.vo.Day13;

@RestController
public class Day13RestController {

	@Autowired
	private Day13Service service;
	@PostMapping("/day13/day13")
	public Map<String, Object> day13(
			@ModelAttribute Day13 day13
			){
		
		Map<String, Object> result = new HashMap<>();
			result.put("result", "success");
			int row = service.addDay13(day13);
		return result;
	}
	
	@PutMapping("/day13/day13_detail")
	public Map<String, Object> day13Detail(
			@ModelAttribute Day13 day13
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = service.updateDay13(day13);
		
		if(row < 1) {
			result.put("errorMessage", "다시시도");
		}
		
		return result;
		
	}
	
	@DeleteMapping("/day13/delete")
	public Map<String, Object> delete(
			@RequestParam("id") int id
			){
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
			int row = service.deleteDay13(id);
			
			if(row < 1) {
				result.put("errorMessage", "다시시도");
				
			}
		
		return result;
		
	}
}
