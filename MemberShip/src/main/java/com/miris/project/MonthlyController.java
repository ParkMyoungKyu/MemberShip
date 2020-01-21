package com.miris.project;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.miris.project.dto.MgrVO;
import com.miris.project.dto.MonthlyWorkVO;
import com.miris.project.dto.Paging;
import com.miris.project.service.MgrService;
import com.miris.project.service.MonthlyService;

@Controller
public class MonthlyController {
	
	@Autowired
	private MonthlyService monthlyService;
	@Autowired
	private MgrService mgrService;
	
	@RequestMapping(value = "monthlyList")
	private String monthlyList(MgrVO mgrVO,MonthlyWorkVO monthlyWorkVO,String currentPage,Model model) {
		
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
		
		int total = monthlyService.totalPage(monthlyWorkVO);
		System.out.println("total -> " + total);
		System.out.println("currentPage -> " + currentPage);
		Paging pg = new Paging(total, currentPage);
		
		pg.setMw_year(monthlyWorkVO.getMw_year());
		pg.setMw_month(monthlyWorkVO.getMw_month());
		pg.setM_name(monthlyWorkVO.getM_name());
		pg.setM_position(monthlyWorkVO.getM_position());
		pg.setW_name(monthlyWorkVO.getW_name());
		
		monthlyWorkVO.setStart(pg.getStart());
		monthlyWorkVO.setEnd(pg.getEnd());
		
		System.out.println("startPage -> " + monthlyWorkVO.getStart());
		System.out.println("endPage -> " + monthlyWorkVO.getEnd());
		System.out.println("----------검색한 내역----------");
		System.out.println("선택한 년도 -> " + monthlyWorkVO.getMw_year());
		System.out.println("선택한 월  -> " + monthlyWorkVO.getMw_month());
		System.out.println("선택한 구분 -> " + monthlyWorkVO.getM_gubun());
		System.out.println("선택한 이름 -> " + monthlyWorkVO.getM_name());
		System.out.println("선택한 직급 -> " + monthlyWorkVO.getM_position());
		System.out.println("선택한 업무 -> " + monthlyWorkVO.getW_name());
		
		
		
		//List<MonthlyWorkVO> monthlySearch = monthlyService.monthlySearch(monthlyWorkVO);
		List<MonthlyWorkVO> monthlySum = monthlyService.monthlySum(monthlyWorkVO);		
		List<MonthlyWorkVO> monthlyList = monthlyService.monthlyList(monthlyWorkVO); 
		List<MgrVO> deptList = mgrService.deptList(mgrVO);
		
		model.addAttribute("monthlySum",monthlySum);
		model.addAttribute("monthlyList",monthlyList);
		model.addAttribute("deptList",deptList);
		model.addAttribute("pg",pg);
		
		return "inputStatus/monthlyList";
	}
	
	@RequestMapping(value = "monthlyDetail")
	private String monthlyDetail(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyDetail=====================");
		System.out.println("월별 투입이력 보고자 하는 사람 -> " + monthlyWorkVO.getM_gubun());
		System.out.println("월별 투입이력 보고자 하는 사람 -> " + monthlyWorkVO.getD_code());
		System.out.println("월별 투입이력 보고자 하는 사람 -> " + monthlyWorkVO.getM_name());
		System.out.println("월별 투입이력 보고자 하는 사람 -> " + monthlyWorkVO.getM_position());
		System.out.println("월별 투입이력 보고자 하는 사람 -> " + monthlyWorkVO.getM_notice());
		
		String m_gubun = monthlyWorkVO.getM_gubun();
		String d_code = monthlyWorkVO.getD_code();
		String m_name = monthlyWorkVO.getM_name();
		String m_position = monthlyWorkVO.getM_position();
		String m_notice = monthlyWorkVO.getM_notice();
		
		List<MonthlyWorkVO> monthlyDetail = monthlyService.monthlyDetail(monthlyWorkVO);
		
		model.addAttribute("m_gubun",m_gubun);
		model.addAttribute("d_code",d_code);
		model.addAttribute("m_name",m_name);
		model.addAttribute("m_position",m_position);
		model.addAttribute("m_notice",m_notice);
		model.addAttribute("monthlyDetail",monthlyDetail);
		
		return "inputStatus/monthlyDetail";
	}
	
	//현황등록
	@RequestMapping(value = "monthlyStatusInputForm")
	private String monthlyStatusInputForm(MonthlyWorkVO monthlyWorkVO, Model model){
		System.out.println("====================MonthlyContraller monthlyStatusInputForm=====================");
		System.out.println("선택한 구분 : " + monthlyWorkVO.getM_gubun());
		System.out.println("선택한 현업무 : " + monthlyWorkVO.getW_name());
		System.out.println("선택한 성명 : "  + monthlyWorkVO.getM_name());
		System.out.println("선택한 직급 : " + monthlyWorkVO.getM_position());
		System.out.println("선택한 비고 : " + monthlyWorkVO.getMw_notice());
		System.out.println("선택한 년도 : " + monthlyWorkVO.getMw_year());
		System.out.println("선택한 월 : " + monthlyWorkVO.getMw_month());
		
		
		List<MonthlyWorkVO> monthlyStatusInputForm = monthlyService.monthlyStatusInput(monthlyWorkVO);
		
		model.addAttribute("monthlyStatusInputForm",monthlyStatusInputForm);
		
		return "inputStatus/monthlyStatusInput";
	}
	// 월별 투입 현황 입력
	@RequestMapping(value = "monthlyStatusInputGo")
	private String monthlyStatusInputGo(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyStatusInputGo=====================");

		System.out.println("넣으려는 아이디: " + monthlyWorkVO.getM_id());
		System.out.println("넣으려는 구분 : " + monthlyWorkVO.getM_gubun());
		System.out.println("넣으려는 부서 : "  + monthlyWorkVO.getD_code());
		System.out.println("넣으려는 성명 : "  + monthlyWorkVO.getM_name());
		System.out.println("넣으려는 직급 : " + monthlyWorkVO.getM_position());
		
		System.out.println("넣으려는 년도 : " + monthlyWorkVO.getMw_year());
		System.out.println("넣으려는 업무명 : " + monthlyWorkVO.getW_name());
		System.out.println("넣으려는 월 : " + monthlyWorkVO.getMw_month());
		System.out.println("넣으려는 지역코드 : " + monthlyWorkVO.getL_code());
		System.out.println("넣으려는 제외여부 : " + monthlyWorkVO.getMw_status());
		
		System.out.println("넣으려는 비고 : " + monthlyWorkVO.getMw_notice());
		
		List<MonthlyWorkVO> monthlyStatuseUpdate = monthlyService.monthlyStatusUpdate(monthlyWorkVO);
		
		return "inputStatus/monthlyList";
	}
		
	//인력수정
	@RequestMapping(value = "monthlyWorkUpdateForm")
	private String monthlyWorkInputFrom(MgrVO mgrVO,MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyWorkInputForm=====================");
		
		List<MonthlyWorkVO> monthlyWorkUpdateSelect = monthlyService.monthlyWorkUpdateSelect(monthlyWorkVO);
		List<MgrVO> deptList = mgrService.deptList(mgrVO);
		
		model.addAttribute("monthlyWorkUpdateSelect",monthlyWorkUpdateSelect);
		model.addAttribute("deptList",deptList);
		
		return "inputStatus/monthlyWorkUpdateForm";
	}
	
	@RequestMapping(value = "monthlyWorkUpdate")
	private String monthlyWorkUpdate(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyWorkInput=====================");
		System.out.println("수정하고자하는 구분값 : " + monthlyWorkVO.getM_gubun());
		System.out.println("수정하고자하는 부서값 : " + monthlyWorkVO.getD_code());
		System.out.println("수정하고자하는 이름값 : " + monthlyWorkVO.getM_name());
		System.out.println("수정하고자하는 직급값 : " + monthlyWorkVO.getM_position());
		System.out.println("수정하고자하는 비고값 : " + monthlyWorkVO.getM_notice());
		System.out.println("수정하고자하는 아이디값 : " + monthlyWorkVO.getM_id());
		
		monthlyService.monthlyWorkUpdate(monthlyWorkVO);
		
		return "inputStatus/monthlyList";
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
	
	
	
	
	
	
	// 인력 정보 입력
	@RequestMapping(value = "monthlyWorkInputGo")
	private String monthlyWorkInputGo(MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("====================MonthlyContraller monthlyWorkInputGo=====================");
		
		return "inputStatus/monthlyList";
	}
	
}
