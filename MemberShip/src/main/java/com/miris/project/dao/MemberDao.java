package com.miris.project.dao;

import java.util.List;

import com.miris.project.dto.DailyWorkVO;

public interface MemberDao {

	List<DailyWorkVO> dailySum(DailyWorkVO dailyWorkVO);
	
	List<DailyWorkVO> dailyNowUpdate(DailyWorkVO dailyWorkVO);
	
	List<DailyWorkVO> dailyList(DailyWorkVO dailyWorkVO);

	List<DailyWorkVO> dailyDetail(DailyWorkVO dailyWorkVO);

	List<DailyWorkVO> dailyMemberSearch(DailyWorkVO dailyWorkVO);

	int totalPage(DailyWorkVO dailyWorkVO);

	int searchTotalPage();

	int dailyAdd(DailyWorkVO dailyWorkVO);

	int dailyDel(DailyWorkVO dailyWorkVO);

		

}
