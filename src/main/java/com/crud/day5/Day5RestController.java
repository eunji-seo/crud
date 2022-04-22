package com.crud.day5;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day5.bo.Day5BO;
import com.crud.day5.vo.Day5;

@RestController
public class Day5RestController {

	@Autowired
	private Day5BO day5BO;
	
	@PostMapping("/day5/day5")
	public Map<String, Object> day5(
			@ModelAttribute Day5 day5
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
			
			int row = day5BO.addDay5(day5);
		
			if(row < 1) {
				result.put("errorMessage", "error");
			}
		return result;
	}
	@PutMapping("/day5/day5_detail")
	public Map<String, Object> day5Detail(
			@ModelAttribute Day5 day5
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day5BO.updateDay5(day5);
		
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
	}
	@DeleteMapping("/day5/delete")
	public Map<String, Object> day5Delete(
			@RequestParam ("id") int id
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day5BO.DeleteDay5(id);
		
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
	}
}
