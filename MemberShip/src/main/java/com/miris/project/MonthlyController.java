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
     			
		monthlyWorkVO.setMw_year(year);
		monthlyWorkVO.setMw_month(month);
		monthlyWorkVO.setM_gubun("G0");
		
		} 
		if(monthlyWorkVO.getM_name() == null || monthlyWorkVO.getM_name() == "") {
			monthlyWorkVO.setM_name("전체");	
		} 
		if(monthlyWorkVO.getW_name() == null ) {
			monthlyWorkVO.setW_name("전체");
		} 
		if(monthlyWorkVO.getM_position() == null ) {
			monthlyWorkVO.setM_position("전체");
		}
		
		System.out.println("선택한 년도 -> " + monthlyWorkVO.getMw_year());
		System.out.println("선택한 월  -> " + monthlyWorkVO.getMw_month());
		System.out.println("선택한 구분 -> " + monthlyWorkVO.getM_gubun());
		System.out.println("선택한 이름 -> " + monthlyWorkVO.getM_name());
		System.out.println("선택한 직급 -> " + monthlyWorkVO.getM_position());
		System.out.println("선택한 업무 -> " + monthlyWorkVO.getW_name());
		
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
	
	//현황등록
	@RequestMapping(value = "monthlyStatusInputForm")
	private String monthlyStatusInput(MonthlyWorkVO monthlyWorkVO, Model model){
		System.out.println("====================MonthlyContraller monthlyStatusInput=====================");
		System.out.println("선택한 구분 : " + monthlyWorkVO.getM_gubun());
		System.out.println("선택한 현업무 : " + monthlyWorkVO.getW_name());
		System.out.println("선택한 성명 : "  + monthlyWorkVO.getM_name());
		System.out.println("선택한 직급 : " + monthlyWorkVO.getM_position());
		System.out.println("선택한 비고 : " + monthlyWorkVO.getMw_notice());
		System.out.println("선택한 년도 : " + monthlyWorkVO.getMw_year());
		System.out.println("선택한 월 : " + monthlyWorkVO.getMw_month());
		
		
		List<MonthlyWorkVO> monthlyStatusInput = monthlyService.monthlyStatusInput(monthlyWorkVO);
		
		model.addAttribute("monthlyStatusInput",monthlyStatusInput);
		
		return "inputStatus/monthlyStatusInput";
	}
	
	//인력등록
	@RequestMapping(value = "monthlyWorkInputForm")
	private String monthlyWorkInput(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyWorkInput=====================");
		
		return "inputStatus/monthlyWorkInput";
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "monthlySearch")
	private String monthlySearch(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlySearch=====================");
		
		System.out.println("선택한 년도 -> " + monthlyWorkVO.getMw_year());
		System.out.println("선택한 월  -> " + monthlyWorkVO.getMw_month());
		System.out.println("선택한 구분 -> " + monthlyWorkVO.getM_gubun());
		System.out.println("선택한 이름 -> " + monthlyWorkVO.getM_name());
		System.out.println("선택한 직급 -> " + monthlyWorkVO.getM_position());
		System.out.println("선택한 업무 -> " + monthlyWorkVO.getW_name());
		
		//List<MonthlyWorkVO> monthlySearch = monthlyService.monthlySearch(monthlyWorkVO);
		
		return "inputStatus/monthlyList";
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
