package com.crud.day9;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day9.bo.Day9BO;
import com.crud.day9.vo.Day9;

@Controller
public class Day9Controller {

	@Autowired
	private Day9BO day9BO;
	
	@RequestMapping("/day9/day9")
	public String day9() {
		return"day9/day9";
	}
	@RequestMapping("/day9/day9_list")
	public String day9List(Model model) {
		
		List<Day9> day9List = day9BO.getDay9List();
		model.addAttribute("day9List", day9List);
		return"day9/day9_list";
	}

	@RequestMapping("/day9/day9_detail")
	public String day9List(Model model,
			@RequestParam("id") int id
			) {
		
		Day9 day9 = day9BO.getDay9(id);
		model.addAttribute("day9", day9);
		return"day9/day9_detail";
	}

}
