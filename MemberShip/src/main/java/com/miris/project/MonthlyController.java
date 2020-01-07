package com.miris.project;

import java.text.SimpleDateFormat;
import java.util.Date;
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
		
		if(monthlyWorkVO.getM_gubun() == null) {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy");
		SimpleDateFormat format2 = new SimpleDateFormat("MM");
		Date date1 = new Date();
		Date date2 = new Date();
		String year = format1.format(date1);
		String month = format2.format(date2);
     			
		monthlyWorkVO.setM_year(year);
		monthlyWorkVO.setM_month(month);
		monthlyWorkVO.setM_gubun(null);
		monthlyWorkVO.setM_name(null);
		monthlyWorkVO.setJ_name(null);
		monthlyWorkVO.setM_position(null);
		}
		
		System.out.println("선택한 년도 -> " + monthlyWorkVO.getM_year());
		System.out.println("선택한 월  -> " + monthlyWorkVO.getM_month());
		System.out.println("선택한 구분 -> " + monthlyWorkVO.getM_gubun());
		System.out.println("선택한 이름 -> " + monthlyWorkVO.getM_name());
		System.out.println("선택한 직급 -> " + monthlyWorkVO.getM_position());
		System.out.println("선택한 업무 -> " + monthlyWorkVO.getM_position());
		
		//List<MonthlyWorkVO> monthlySearch = monthlyService.monthlySearch(monthlyWorkVO);
		List<MonthlyWorkVO> monthlySum = monthlyService.monthlySum(monthlyWorkVO);		
		List<MonthlyWorkVO> monthlyList = monthlyService.monthlyList(monthlyWorkVO); 
		
		model.addAttribute("monthlySum",monthlySum);
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
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "monthlySearch")
	private String monthlySearch(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlySearch=====================");
		
		System.out.println("선택한 년도 -> " + monthlyWorkVO.getM_year());
		System.out.println("선택한 월  -> " + monthlyWorkVO.getM_month());
		System.out.println("선택한 구분 -> " + monthlyWorkVO.getM_gubun());
		System.out.println("선택한 이름 -> " + monthlyWorkVO.getM_name());
		System.out.println("선택한 직급 -> " + monthlyWorkVO.getM_position());
		System.out.println("선택한 업무 -> " + monthlyWorkVO.getJ_name());
		
		//List<MonthlyWorkVO> monthlySearch = monthlyService.monthlySearch(monthlyWorkVO);
		
		return "inputStatus/monthlyList";
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
