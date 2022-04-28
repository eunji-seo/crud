package com.crud.day14;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day14.service.Day14Service;
import com.crud.day14.vo.Day14;

@Controller
public class Day14Controller {

	@Autowired
	private Day14Service service;
	@RequestMapping("/day14/day14")
	public String day14() {
		return "day14/day14";
	}
	
	@RequestMapping("/day14/day14_list")
	public String day14List(Model model) {
		
		List<Day14> day14List = service.getDay14List();
		model.addAttribute("day14List", day14List);
		return "day14/day14_list";
	}
	@RequestMapping("/day14/day14_detail")
	public String day14Detail(
			@RequestParam("id") int id,
			Model model) {
		
		Day14 day14 = service.getDay14(id);
		model.addAttribute("day14", day14);
		return "day14/day14_detail";
	}
}
