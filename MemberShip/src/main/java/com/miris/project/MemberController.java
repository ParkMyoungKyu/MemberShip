package com.miris.project;

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
		
			
		List<DailyWorkVO> dailySum = memberService.dailySum(dailyWorkVO);
		List<DailyWorkVO> dailyNowUpdate = memberService.dailyNowUpdate(dailyWorkVO);
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
}
