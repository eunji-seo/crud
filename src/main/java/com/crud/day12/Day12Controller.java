package com.crud.day12;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day12.service.Day12Service;
import com.crud.day12.vo.Day12;

@Controller
public class Day12Controller {

	@Autowired
	private Day12Service service;
	@RequestMapping("/day12/day12")
	public String day12() {
		return"day12/day12";
	}

	@RequestMapping("/day12/day12_list")
	public String day12List(Model model) {
		
		List<Day12> day12List = service.getDay12List();
		
		model.addAttribute("day12List", day12List);
		return"day12/day12_list";
	}

	@RequestMapping("/day12/day12_detail")
	public String day12Detail(
			@RequestParam("id") int id,
			Model model) {
		
		Day12 day12 = service.getDay12(id);
		
		model.addAttribute("day12", day12);
		return"day12/day12_detail";
	}
	
	
}
