package com.crud.day11;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Day11Controller {

	@RequestMapping("day11/day11")
	public String day11() {
		return "day09/day09";
	}
}
