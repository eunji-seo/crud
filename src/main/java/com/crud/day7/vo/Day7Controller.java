package com.crud.day7.vo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day7.bo.Day7BO;

@Controller
public class Day7Controller {

	@Autowired
	private Day7BO day7BO;
	
	@RequestMapping("/day7/day7")
	public String day7() {
		return "day7/day7";
	}
	@RequestMapping("/day7/day7_list")
	public String day7List(Model model) {
		
		List<Day7> day7List = day7BO.getDay7List();
		model.addAttribute("day7List", day7List);
		return "day7/day7_list";
	}
	@RequestMapping("/day7/day7_detail")
	public String day7Detail(Model model,
			@RequestParam("id") int id) {
		
		Day7 day7 = day7BO.getDay7(id);
		model.addAttribute("day7", day7);
		return "day7/day7_detail";
	}
}
