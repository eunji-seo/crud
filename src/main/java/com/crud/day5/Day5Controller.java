package com.crud.day5;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day5.bo.Day5BO;
import com.crud.day5.vo.Day5;

@Controller
public class Day5Controller {
	
	@Autowired
	private Day5BO day5BO;
	
	@RequestMapping("/day5/day5")
	public String day5() {
		return "day5/day5";
	}
	@RequestMapping("/day5/day5_list")
	public String day5List(Model model) {
		
		List<Day5> day5List = day5BO.getDay5List();
		model.addAttribute("day5List", day5List);
		return "day5/day5_list";
	}
	@RequestMapping("/day5/day5_detail")
	public String day5detail(
			@RequestParam("id") int id
			,Model model) {
		
		Day5 day5 = day5BO.getDay5(id);
		model.addAttribute("day5", day5);
		return "day5/day5_detail";
	}
}
