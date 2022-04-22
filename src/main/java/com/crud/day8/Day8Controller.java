package com.crud.day8;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day8.bo.Day8BO;
import com.crud.day8.vo.Day8;

@Controller
public class Day8Controller {

	@Autowired
	private Day8BO day8BO;
	
	@RequestMapping("/day8/day8")
	public String day8() {
		return"day8/day8";
	}
	@RequestMapping("/day8/day8_list")
	public String day8List(Model model) {
		
		List<Day8> day8List = day8BO.getDay8List();
		model.addAttribute("day8List", day8List);
		return"day8/day8_list";
	}

	@RequestMapping("/day8/day8_detail")
	public String day8Detail(Model model,
			@RequestParam("id") int id) {
		
		Day8 day8 = day8BO.getDay8(id);
		model.addAttribute("day8", day8);
		return"day8/day8_detail";
	}
}
