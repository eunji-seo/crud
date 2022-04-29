package com.crud.day15;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day15.service.Day15Service;
import com.crud.day15.vo.Day15;

@Controller
public class Day15Controller {

	@Autowired
	private Day15Service service;
	@RequestMapping("/day15/day15")
	public String day15() {
		return "day15/day15";
	}

	@RequestMapping("/day15/day15_list")
	public String day15List(Model model) {
		
		List<Day15> day15List = service.getDay15List();
		model.addAttribute("day15List", day15List);
		return "day15/day15_list";
	}
	@RequestMapping("/day15/day15_detail")
	public String day15Detail(Model model,
			@RequestParam("id") int id
			) {
		Day15 day15 = service.getDay15(id);
		
		model.addAttribute("day15", day15);
		return "day15/day15_detail";
	}
}
