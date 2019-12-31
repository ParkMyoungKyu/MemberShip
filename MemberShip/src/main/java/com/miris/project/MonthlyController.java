package com.miris.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miris.project.dto.MonthlyWorkVO;
import com.miris.project.service.MonthlyService;

@Controller
public class MonthlyController {
	
	@Autowired
	private MonthlyService monthlyService;
	
	@RequestMapping(value = "monthlyList")
	private String monthlyList(MonthlyWorkVO monthlyWorkVO,Model model) {
		System.out.println("====================MonthlyContraller monthlyList=====================");
		
		List<MonthlyWorkVO> monthlyList = monthlyService.monthlyList(monthlyWorkVO); 
		
		model.addAttribute("monthlyList",monthlyList);
		
		return "inputStatus/monthlyList";
	}
	
	@RequestMapping(value = "monthlyDetail")
	private String monthlyDetail(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyDetail=====================");
		System.out.println("월별 투입이력 보고자 하는 사람 -> " + monthlyWorkVO.getM_name());
		
		List<MonthlyWorkVO> monthlyDetail = monthlyService.monthlyDetail(monthlyWorkVO);
				
		model.addAttribute("monthlyDetail",monthlyDetail);
		
		return "inputStatus/monthlyDetail";
	}
}
