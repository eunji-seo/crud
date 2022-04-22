package com.crud.day4;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day4.bo.Day4BO;
import com.crud.day4.vo.Day4;

@Controller
public class Day4Controller {

	@Autowired
	private Day4BO day4BO;
	
	@RequestMapping("/day4/day4")
	public String day4() {
		return "day4/day4";
	}
	
	@RequestMapping("/day4/day4_list")
	public String day4List(
			Model model) {
		List<Day4> day4List = day4BO.getDay4List();
		model.addAttribute("day4List", day4List);
		return "day4/day4_list";
	}
	
	@RequestMapping("/day4/day4_detail")
	public String day4Detail(
			@RequestParam("id") int id
			,Model model
			) {
		Day4 day4 = day4BO.getDay4(id);
		model.addAttribute("day4", day4);
		return "day4/day4_detail";
	}
}
