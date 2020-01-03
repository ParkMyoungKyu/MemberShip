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
		
//		List<MonthlyWorkVO> monthlyList = monthlyService.monthlyList(monthlyWorkVO); 
//		
//		model.addAttribute("monthlyList",monthlyList);
		
		return "inputStatus/monthlyList";
	}
	
	@RequestMapping(value = "monthlyDetail")
	private String monthlyDetail(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyDetail=====================");
		System.out.println("월별 투입이력 보고자 하는 사람 -> " + monthlyWorkVO.getM_name());
		
//		List<MonthlyWorkVO> monthlyDetail = monthlyService.monthlyDetail(monthlyWorkVO);
//				
//		model.addAttribute("monthlyDetail",monthlyDetail);
		
		return "inputStatus/monthlyDetail";
	}
	
	@RequestMapping(value = "monthlyStatusInput")
	private String monthlyStatusInput(MonthlyWorkVO monthlyWorkVO, Model model){
		System.out.println("====================MonthlyContraller monthlyStatusInput=====================");
		
		return "inputStatus/monthlyStatusInput";
	}
	
	@RequestMapping(value = "monthlyWorkInput")
	private String monthlyWorkInput(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyWorkInput=====================");
		
		return "inputStatus/monthlyWorkInput";
	}
	
	// 월별 투입 현황 입력
	@RequestMapping(value = "monthlyStatusInputGo")
	private String monthlyStatusInputGo(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyStatusInputGo=====================");
		
		return "inputStatus/monthlyList";
	}
	
	// 인력 정보 입력
	@RequestMapping(value = "monthlyWorkInputGo")
	private String monthlyWorkInputGo(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyWorkInputGo=====================");
		
		return "inputStatus/monthlyList";
	}
	
}
