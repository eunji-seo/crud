package com.crud.day11;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day11.service.Day11Service;
import com.crud.day11.vo.Day11;

@Controller
public class Day11Controller {

	@Autowired
	private Day11Service service;
	
	@RequestMapping("day11/day11")
	public String day11() {
		return "day11/day11";
	}
	
	@RequestMapping("/day11/day11_list")
	public String day11List(Model model) {
		
		List<Day11> day11List = service.getDay11List();
		model.addAttribute("day11List", day11List);
		return "day11/day11_list";
	}
	
	@RequestMapping("/day11/day11_detail")
	public String Day11Detail(
			@RequestParam("id") int id,
			Model model
			) {
		Day11 day11 = service.getDay11(id);
		model.addAttribute("day11", day11);
		return "day11/day11_detail";
	}
}
