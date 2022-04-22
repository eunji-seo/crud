package com.crud.day1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day1.bo.DayBO;
import com.crud.day1.vo.Day1;
@RequestMapping("/day")
@Controller
public class Day1Controller {

	@Autowired
	private DayBO dayBO;
	
	@RequestMapping("/day1")
	public String day1() {
		return"day/day1";
	}
	
	@RequestMapping("/day1_list")
	public String day1_list(Model model) {
		
		List<Day1> daylist = dayBO.getUserList();
		
		model.addAttribute("daylist", daylist);
		
		return"day/day1_list";
	}
	
	@RequestMapping("/day1_update")
	public String day1_update(Model model,
			@RequestParam("id") int id
			) {
		
		Day1 day = dayBO.getUser(id);
		
		model.addAttribute("day", day);
		
		return"day/day1_update";
	}

}
