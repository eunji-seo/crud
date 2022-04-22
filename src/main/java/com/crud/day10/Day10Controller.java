package com.crud.day10;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Day10Controller {

	@RequestMapping("/day10/stock")
	public String day10() {
		return"day10/stock";
	}
}
