package com.crud.day7;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day7.bo.Day7BO;
import com.crud.day7.vo.Day7;

@RestController
public class Day7RestController {

	@Autowired
	private Day7BO day7BO;
	
	@PostMapping("/day7/day7")
	public Map<String, Object> day7(@ModelAttribute Day7 day7){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
			int row = day7BO.addDay7(day7);
			
			if(row < 1) {
				result.put("errorMessage", "error");
			}
		return result;
	 }
	
	@PutMapping("/day7/day7_detail")
	public Map<String, Object> Day7Detail(@ModelAttribute Day7 day7){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day7BO.updateDay7(day7);
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
	}
	
	@DeleteMapping("/day7/delete")
	public Map<String, Object> delete(@RequestParam("id") int id){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		int row = day7BO.deleteDay7(id);
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
	}
}
