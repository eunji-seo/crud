package com.crud.day2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day2.bo.Day2BO;
import com.crud.day2.vo.Day2;

@Controller
public class day2Controller {

	@Autowired
	private Day2BO day2BO;
	
	@RequestMapping("/day2/day2")
	public String day2Singer () {
		return "day2/day2";
	}
	@RequestMapping("/day2/day2_list")
	public String day2Singerlist (Model model) {
		
	  List<Day2> singerList = day2BO.getSingerList();	
		
	  model.addAttribute("singerList", singerList);
		return "day2/day2_list";
	}

	@RequestMapping("/day2/day2_detail")
	public String day2SingerDetail (Model model,
			@RequestParam("id") int id
			) {
		
		Day2 singer = day2BO.getSinger(id);	
		
		model.addAttribute("singer", singer);
		return "day2/day2_detail";
	}
}
