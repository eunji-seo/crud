package com.crud.day9;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day9.bo.Day9BO;
import com.crud.day9.vo.Day9;

@RestController
public class Day9RestController {
	
	@Autowired
	private Day9BO day9BO;
	
	@PostMapping("/day9/day9")
	public Map<String, Object> day9(@ModelAttribute Day9 day9){
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");

		int row = day9BO.addDay9(day9);
		if(row < 1) {
			result.put("errorMessage", "error");
		}
		return result;
		
	}
	
	@PutMapping("/day9/day9_detail")
	public Map<String, Object> update(@ModelAttribute Day9 day9) {
      
	 Map<String, Object> result = new HashMap<>();
      result.put("result", "success");
      int row = day9BO.updateDay9(day9);
      if (row < 1) {
         result.put("reuslt", "error");
         result.put("errorMessage", "수정실패");
      }
      return result;
	}

	@DeleteMapping("/day9/delete")
	public Map<String, Object> delete(
			@RequestParam("id") int id){
		
		Map<String,Object> result = new HashMap<>();
		result.put("result", "success");
		
		int row = day9BO.deleteDay9(id);
		if(row < 1) {
			result.put("errorMessage", "다시시도");
			
		}
		
		return result;
		
	}
	
}
