package com.miris.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miris.project.service.MonthlyService;

@Controller
public class MonthlyController {
	
	@Autowired
	private MonthlyService monthlyService;
	
	@RequestMapping(value = "monthlyList")
	private String monthlyList(Model model) {
		System.out.println("====================MonthlyContraller Main=====================");
		return "inputStatus/monthlyList";
	}
}
