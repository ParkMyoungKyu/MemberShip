package com.miris.project;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miris.project.dto.DailyWorkVO;
import com.miris.project.dto.MemberVO;
import com.miris.project.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "main")
	public String memberSum(DailyWorkVO dailyWorkVO , Model model) {
		System.out.println("=====================MemberContraller Main=====================");
		
		List<DailyWorkVO> dailyNowUpdate = memberService.dailyNowUpdate(dailyWorkVO);
		List<DailyWorkVO> dailySum = memberService.dailySum(dailyWorkVO);
		
		model.addAttribute("dailySum",dailySum);
		
		return "main";
	}	
	
	@RequestMapping(value = "dailyList")
	public String memberList(MemberVO memberVO,DailyWorkVO dailyWorkVO, Model model) {
		System.out.println("===================MemberContraller dailyList page start===================");
			
		List<DailyWorkVO> dailyNowUpdate = memberService.dailyNowUpdate(dailyWorkVO);
		List<DailyWorkVO> dailySum = memberService.dailySum(dailyWorkVO);
		List<MemberVO> dailyList = memberService.dailyList(memberVO);
		
		
		model.addAttribute("dailySum",dailySum);
		model.addAttribute("dailyList",dailyList);
				
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
	public String DailyMemberSearch(DailyWorkVO dailyWorkVO,Model model, HttpServletRequest request) {
		System.out.println("===================MemberContraller DailyMemberSearch Start===================");
		

		System.out.println("선택한 구분 -> " + dailyWorkVO.getW_status());
		System.out.println("입력한 이름 -> " + dailyWorkVO.getM_name());
		System.out.println("선택한 날짜 -> " + dailyWorkVO.getSearchDate());
		
		System.out.println("선택한 구분 -> " + request.getParameter("w_status"));
		System.out.println("입력한 이름 -> " + request.getParameter("m_name"));
		System.out.println("선택한 날짜 -> " + request.getParameter("searchDate"));
		
		dailyWorkVO.setW_status(request.getParameter("w_status"));
		dailyWorkVO.setM_name(request.getParameter("m_name"));
		
		String inputgubun = request.getParameter("w_status");
		String inputname = request.getParameter("m_name");
		//이름 띄어쓰기 제거
		String replaceName = inputname.replace(" ", "");
		
		System.out.println("선택한 구분 -> " + inputgubun);
		System.out.println("입력한 이름 -> " + replaceName);
		
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
		
		List<DailyWorkVO> dailyNowUpdate = memberService.dailyNowUpdate(dailyWorkVO);
		List<DailyWorkVO> dailySum = memberService.dailySum(dailyWorkVO);
		List<DailyWorkVO> dailyMemberSearch = memberService.dailyMemberSearch(dailyWorkVO);
		
		model.addAttribute("dailySum",dailySum);
		model.addAttribute("dailyList",dailyMemberSearch);
		
		return "serviceStatus/dailyList";
	}
}
