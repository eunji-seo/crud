package com.crud.day1;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day1.bo.DayBO;
import com.crud.day1.vo.Day1;

@RestController
public class Day1RestController {

	@Autowired
	private DayBO dayBO;
	
	@PostMapping("/day/userInfo")
	public Map<String, Object> userinfo(
			@ModelAttribute Day1 day1
			){
		
		
		Map<String,Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = dayBO.addUser(day1);
		
		if(row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "다시 시도해주세요.");
		}
	
		return result;
		
	}
	@PutMapping("/day/day1_update")
	public Map<String, Object> dayUpdate(
			@ModelAttribute Day1 day1
			){
		
		
		Map<String,Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = dayBO.updateUser(day1);
		
		if(row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "다시 시도해주세요.");
		}
		
		return result;
		
	}
	
	@DeleteMapping("/day/delete")
	public Map<String, Object> dayDelete(
			@RequestParam("id") int id
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = dayBO.deleteUser(id);
			if(row < 1) {
				result.put("result", "error");
				result.put("errorMessage", "다시 시도");
			}
		
		return result;
		
	}
}
