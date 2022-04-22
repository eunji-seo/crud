package com.crud.day3;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day3.bo.Day3BO;
import com.crud.day3.vo.Day3;

@Controller
public class Day3Controller {

	@Autowired
	private Day3BO day3BO;
	
	@RequestMapping("/day3/day3")
	public String day3info() {
		return "day3/day3";
	}
	
	@RequestMapping("/day3/day3_list")
	public String day3infoList(
			Model model
			) {
		List<Day3> infoList = day3BO.getInfoList();
		model.addAttribute("infoList", infoList);
		return "day3/day3_list";
	}
	@RequestMapping("/day3/day3_detail")
	public String day3infodetail(
			Model model,
			@RequestParam("id") int id
			
			) {
		Day3 info = day3BO.getInfo(id);
		model.addAttribute("info", info);
		return "day3/day3_detail";
	}
}
