package com.miris.project;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miris.project.dto.DailyWorkVO;
import com.miris.project.dto.MonthlyWorkVO;
import com.miris.project.dto.Paging;
import com.miris.project.service.MemberService;
import com.miris.project.service.MonthlyService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private MonthlyService monthlyService;
	
	@RequestMapping(value = "main")
	public String memberSum(DailyWorkVO dailyWorkVO ,MonthlyWorkVO monthlyWorkVO, Model model) {
		System.out.println("=====================MemberContraller Main=====================");
     	
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat format2 = new SimpleDateFormat("MM");
		
		Date date = new Date();
		Date date2 = new Date();
		
		String today = format1.format(date);
		String month = format2.format(date2);
		
     	dailyWorkVO.setSearchDate(today);
     	monthlyWorkVO.setM_month(month);
     	System.out.println("초기 날짜" + dailyWorkVO.getSearchDate());
     	System.out.println("초기 날짜" + monthlyWorkVO.getM_month());
     		
		//List<DailyWorkVO> dailyNowUpdate = memberService.dailyNowUpdate(dailyWorkVO);
		List<DailyWorkVO> dailySum = memberService.dailySum(dailyWorkVO);
		List<MonthlyWorkVO> monthlySum = monthlyService.monthlySum(monthlyWorkVO);
		
		model.addAttribute("dailySum",dailySum);
		model.addAttribute("monthlySum",monthlySum);
		
		return "main";
	}	
	
	@RequestMapping(value = "dailyList")
	public String memberList(DailyWorkVO dailyWorkVO,String currentPage, Model model) {
		System.out.println("===================MemberContraller dailyList page start===================");
		
		System.out.println("전 구분 -> " + dailyWorkVO.getW_status());
		System.out.println("전 이름 -> " + dailyWorkVO.getM_name());
		System.out.println("전 부서 -> " + dailyWorkVO.getD_code());
		System.out.println("전 날짜 -> " + dailyWorkVO.getSearchDate());
		
		if(dailyWorkVO.getW_status()==null) {
			// 첫 검색시 오늘날짜로 셋팅
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String today = format1.format(date);
			
			dailyWorkVO.setSearchDate(today);
			dailyWorkVO.setW_status("0");
			dailyWorkVO.setM_name("");
			dailyWorkVO.setD_code("D00");
			
		} else {
			
		}
		 
		System.out.println("선택한 구분 -> " + dailyWorkVO.getW_status());
		System.out.println("입력한 이름 -> " + dailyWorkVO.getM_name());
		System.out.println("선택한 부서 -> " + dailyWorkVO.getD_code());
		System.out.println("선택한 날짜 -> " + dailyWorkVO.getSearchDate());
		
		// 페이징 작업
		int total = memberService.totalPage(dailyWorkVO);
		System.out.println("total -> " + total);
		System.out.println("currentPage -> " + currentPage);
		Paging pg = new Paging(total, currentPage);
		
		pg.setSearchDate(dailyWorkVO.getSearchDate());
		pg.setW_status(dailyWorkVO.getW_status());
		pg.setD_code(dailyWorkVO.getD_code());;
		pg.setM_name(dailyWorkVO.getM_name());
		
		dailyWorkVO.setStart(pg.getStart());
		dailyWorkVO.setEnd(pg.getEnd());
		
		System.out.println("startPage -> " + dailyWorkVO.getStart());
		System.out.println("endPage -> " + dailyWorkVO.getEnd());
		
		
		//List<DailyWorkVO> dailyNowUpdate = memberService.dailyNowUpdate(dailyWorkVO);
		List<DailyWorkVO> dailySum = memberService.dailySum(dailyWorkVO);
		List<DailyWorkVO> dailyList = memberService.dailyList(dailyWorkVO);
		
		model.addAttribute("dailySum",dailySum);
		model.addAttribute("dailyList",dailyList);
		model.addAttribute("pg",pg);
				
		return "serviceStatus/dailyList";
	}
		
	@RequestMapping(value = "dailyDetail")
	public String memberDetail(DailyWorkVO dailyWorkVO,HttpServletRequest request,Model model) {
		System.out.println("===================dailyDetail page start===================");
		System.out.println("===========" + dailyWorkVO.getM_id()); 
		List<DailyWorkVO> dailyDetail = memberService.dailyDetail(dailyWorkVO);
		
		model.addAttribute("dailyDetail",dailyDetail);
		
		return "serviceStatus/dailyDetail";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "memberSearch")
	public String DailyMemberSearch(DailyWorkVO dailyWorkVO,Model model,String currentPage, HttpServletRequest request) {
		System.out.println("===================MemberContraller DailyMemberSearch Start===================");
		
		System.out.println("선택한 구분 -> " + dailyWorkVO.getW_status());
		System.out.println("입력한 이름 -> " + dailyWorkVO.getM_name());
		System.out.println("선택한 날짜 -> " + dailyWorkVO.getSearchDate());
		
		dailyWorkVO.setW_status(request.getParameter("w_status"));
		dailyWorkVO.setM_name(request.getParameter("m_name"));
		
		String inputgubun = request.getParameter("w_status");
		String inputname = request.getParameter("m_name");
		//이름 띄어쓰기 제거
		String replaceName = inputname.replace(" ", "");
		System.out.println("띄어쓰기 제거 이름 -> " + replaceName);
		
		if(inputgubun.equals("0")) {
			System.out.println("===== '구분 : 전체' =====");
			dailyWorkVO.setW_status(inputgubun);
		} else if(inputgubun.equals("1")) {
			System.out.println("===== '구분 : 근무' =====");
			dailyWorkVO.setW_status(inputgubun);
		} else if(inputgubun.equals("2")) {
			System.out.println("===== '구분 : 휴가' =====");
			dailyWorkVO.setW_status(inputgubun);
		} else if(inputgubun.equals("3")) {
			System.out.println("===== '구분 : 출장' =====");
			dailyWorkVO.setW_status(inputgubun);
		}
		
		if(replaceName.equals("")) {
			System.out.println("===== 입력한 이름값 X =====");
		} else {
			System.out.println("===== 입력한 이름값 O =====");
		}
		
		// 페이징 작업
		int total = memberService.totalPage(dailyWorkVO);
		System.out.println("search total -> " + total);
		System.out.println("search currentPage -> " + currentPage);
		Paging pg = new Paging(total, currentPage);
		
		dailyWorkVO.setStart(pg.getStart());
		dailyWorkVO.setEnd(pg.getEnd());
		
		System.out.println("startPage -> " + dailyWorkVO.getStart());
		System.out.println("endPage -> " + dailyWorkVO.getEnd());
		
		System.out.println("넣기 전 최종 이름->" +  dailyWorkVO.getM_name());
		System.out.println("넣기 전 최종 상태->" + dailyWorkVO.getW_status());
		
		//List<DailyWorkVO> dailyNowUpdate = memberService.dailyNowUpdate(dailyWorkVO);
		List<DailyWorkVO> dailySum = memberService.dailySum(dailyWorkVO);
		List<DailyWorkVO> dailyMemberSearch = memberService.dailyMemberSearch(dailyWorkVO);
	
		
		model.addAttribute("dailySum",dailySum);
		model.addAttribute("dailyList",dailyMemberSearch);
		model.addAttribute("pg",pg);
		
		return "serviceStatus/dailyList";
	}
}
