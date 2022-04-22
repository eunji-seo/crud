package com.crud.day6;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day6.bo.Day6BO;
import com.crud.day6.vo.Day6;

@Controller
public class Day6Controller {

	@Autowired
	private Day6BO day6BO;
	
	@RequestMapping("/day6/day6")
	public String day6() {
		return "day6/day6";
	}
	@RequestMapping("/day6/day6_list")
	public String day6List(Model model) {
		
		List<Day6> day6List = day6BO.getDay6();
		model.addAttribute("day6List", day6List);
		return "day6/day6_list";
	}
	@RequestMapping("/day6/day6_detail")
	public String day6Detail(
			@RequestParam ("id") int id,
			Model model) {
		
		Day6 day6 = day6BO.getDay6ById(id);
		model.addAttribute("day6", day6);
		return "day6/day6_detail";
	}
}
