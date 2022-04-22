package com.crud.day3;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day3.bo.Day3BO;
import com.crud.day3.vo.Day3;

@RestController
public class Day3RestController {

	@Autowired
	private Day3BO day3BO;
	
	@PostMapping("/day3/day3")
	public Map<String, Object> day3Info(
			@ModelAttribute Day3 day3
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		int row = day3BO.addDay3(day3);
	
		if(row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "다시시도");
		}
		
		return result;
	}
	
	@PutMapping("/day3/day3_detail")
	public Map<String, Object> day3Detail(
			@ModelAttribute Day3 day3
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day3BO.updateDay3(day3);
		
		if(row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "다시시도");
		}
		return result;
		
		
	}
	@DeleteMapping("/day3/delete")
	public Map<String, Object> day3Delete(
			@RequestParam("id") int id
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day3BO.deleteDay3(id);
		
		if(row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "다시시도");
		}
		
		return result;
	}
}
