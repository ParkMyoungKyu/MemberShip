package com.miris.project.service;

import java.util.List;

import com.miris.project.dto.DailyWorkVO;
import com.miris.project.dto.MemberVO;

public interface MemberService {
	
	List<DailyWorkVO> dailySum(DailyWorkVO dailyWorkVO);
	
	List<DailyWorkVO> dailyNowUpdate(DailyWorkVO dailyWorkVO);
	
	List<MemberVO> dailyList(MemberVO memberVO);

	List<DailyWorkVO> dailyDetail(DailyWorkVO dailyWorkVO);

	List<DailyWorkVO> dailyMemberSearch(DailyWorkVO dailyWorkVO);

	
	
}
