package com.crud.day2;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day2.bo.Day2BO;
import com.crud.day2.vo.Day2;

@RestController
public class Day2RestController {

	@Autowired
	private Day2BO day2BO;
	
	@PostMapping("/day2/day2")
	public Map<String,Object> day2Singer(
			@ModelAttribute Day2 day2
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day2BO.addSinger(day2);
		if(row < 1) {
			result.put("result", "error");
		}
		
		return result;
	}
	@PutMapping("/day2/day2_detail")
	public Map<String,Object> day2SingerDetail(
			@ModelAttribute Day2 day2
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day2BO.updateSinger(day2);
		if(row < 1) {
			result.put("result", "error");
		}
		
		return result;
	}
	
	@DeleteMapping("/day2/delete")
	public Map<String, Object> day2SingerDetail(
			@RequestParam("id") int id
			){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day2BO.deleteSinger(id);
		
		if(row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "다시시도");
		}
		
		return result;
		
	}
}
