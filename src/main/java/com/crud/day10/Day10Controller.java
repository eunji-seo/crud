package com.crud.day10;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day10.mapper.Day10Mapper;
import com.crud.day10.vo.Day10;

@Controller
public class Day10Controller {

	@Autowired
	private Day10Mapper mapper;
	
	@RequestMapping("/day10/day10")
	public String day10() {
		return"day10/day10";
	}

	@RequestMapping("/day10/day10_list")
	public String day10List(Model model) {
		
		List<Day10> day10List = mapper.getDay10List();
		model.addAttribute("day10List", day10List);
		return"day10/day10_list";
	}

	@RequestMapping("/day10/day10_detail")
	public String day10Detail(
			@RequestParam("id") int id,
			Model model) {
		
		Day10 day10 = mapper.getDay10(id);
		model.addAttribute("day10", day10);
		return"day10/day10_detail";
	}
}
