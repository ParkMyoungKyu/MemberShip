package com.miris.project.dao;

import java.util.List;

import com.miris.project.dto.DailyWorkVO;
import com.miris.project.dto.MemberVO;

public interface MemberDao {

	List<DailyWorkVO> dailySum(DailyWorkVO dailyWorkVO);
	
	List<DailyWorkVO> dailyNowUpdate(DailyWorkVO dailyWorkVO);
	
	List<MemberVO> dailyList(MemberVO memberVO);

	List<DailyWorkVO> dailyDetail(DailyWorkVO dailyWorkVO);

	List<DailyWorkVO> dailyMemberSearch(DailyWorkVO dailyWorkVO);

	int totalPage();

		

}
