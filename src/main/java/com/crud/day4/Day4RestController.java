package com.crud.day4;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day4.bo.Day4BO;
import com.crud.day4.vo.Day4;

@RestController
public class Day4RestController {

	@Autowired
	private Day4BO day4BO;
	
	@PostMapping("/day4/day4")
	public Map<String, Object> day4Realtor(
			@ModelAttribute Day4 day4
			){
			
			Map<String, Object> result = new HashMap<>();
			result.put("result", "success");
			
			int row = day4BO.addDay4(day4);
		
			if(row < 1) {
				result.put("result", "error");
				result.put("errorMessage","다시 시작");
			}
		return result;
		
	}
	@PutMapping("/day4/day4_detail")
	public Map<String, Object> day4Detail(
			@ModelAttribute Day4 day4
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
			int row = day4BO.updateDay4(day4);
		
			if(row < 1) {
				result.put("result", "error");
				result.put("errorMessage", "error");
			}
		return result;
	}
	@DeleteMapping("/day4/delete")
	public Map<String, Object> day4Datele(
			@RequestParam("id") int id
			){

		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day4BO.deleteDay4(id);
		
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
	}
}
