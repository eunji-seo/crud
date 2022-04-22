package com.crud.day8;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day8.bo.Day8BO;
import com.crud.day8.vo.Day8;

@RestController
public class Day8RestController {

	@Autowired
	private Day8BO day8BO;
	@PostMapping("/day8/day8")
	public Map<String, Object> day8(@ModelAttribute Day8 day8){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");

		int row = day8BO.addDay8(day8);
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
		
	}
	
	@PutMapping("/day8/day8_detail")
	public Map<String, Object> day8Detail(
			@ModelAttribute Day8 day8){
		
		Map<String,Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day8BO.updateDay8(day8);
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
		
	}
	@DeleteMapping("/day8/delete")
	public Map<String, Object> day8Delete(
			@RequestParam("id")int id){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day8BO.deleteDay8(id);
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
	}
}
