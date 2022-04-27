package com.crud.day13;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day13.service.Day13Service;
import com.crud.day13.vo.Day13;

@Controller
public class Day13Controller {

	@Autowired
	private Day13Service service;
	@RequestMapping("/day13/day13")
	public String day13() {
		return "day13/day13";
	}
	@RequestMapping("/day13/day13_list")
	public String day13List(Model model) {
		
		List<Day13> day13List = service.getDay13List();
		model.addAttribute("day13List", day13List);
		return "day13/day13_list";
	}
	
	@RequestMapping("/day13/day13_detail")
	public String day13Detail(
			@RequestParam ("id") int id,
			Model model
			) {
		Day13 day13 = service.getDay13(id);
		model.addAttribute("day13", day13);
		return "day13/day13_detail";
	}
}
