package com.miris.project.service;

import java.util.List;

import com.miris.project.dto.DailyWorkVO;
import com.miris.project.dto.MemberVO;

public interface MemberService {
	
	List<DailyWorkVO> dailySum(DailyWorkVO dailyWorkVO);
	
	List<DailyWorkVO> dailyNowUpdate(DailyWorkVO dailyWorkVO);
	
	List<DailyWorkVO> dailyList(DailyWorkVO dailyWorkVO);

	List<DailyWorkVO> dailyDetail(DailyWorkVO dailyWorkVO);

	List<DailyWorkVO> dailyMemberSearch(DailyWorkVO dailyWorkVO);

	int totalPage(DailyWorkVO dailyWorkVO);

	int searchTotalPage();

	int dailyAdd(DailyWorkVO dailyWorkVO);

	int  dailyDel(DailyWorkVO dailyWorkVO);

	
	
}
