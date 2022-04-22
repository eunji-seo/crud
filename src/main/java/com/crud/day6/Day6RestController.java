package com.crud.day6;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day6.bo.Day6BO;
import com.crud.day6.vo.Day6;

@RestController
public class Day6RestController {

	@Autowired
	private Day6BO day6BO;
	
	@PostMapping("/day6/day6")
	public Map<String, Object> day6(
			@ModelAttribute Day6 day6
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
			int row = day6BO.addDay6(day6);
		
			if(row < 1) {
				result.put("errorMessage", "error");
			}
		return result;
		
	}
	
	@PutMapping("/day6/day6_detail")
	public Map<String, Object> day6Detail(
			@ModelAttribute Day6 day6
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
			int row = day6BO.updateDay6(day6);
			
			if(row < 1) {
				result.put("errorMessage", "error");
			}
		
		return result;
	}
	@DeleteMapping("/day6/delete")
	public Map<String, Object> day6Delete(
			@RequestParam("id") int id
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day6BO.deleteDay6ById(id);
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
	}
}
