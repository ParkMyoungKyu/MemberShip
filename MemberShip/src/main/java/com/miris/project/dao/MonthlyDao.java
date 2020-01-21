package com.miris.project.dao;

import java.util.List;

import com.miris.project.dto.MonthlyWorkVO;

public interface MonthlyDao {

	List<MonthlyWorkVO> monthlyList(MonthlyWorkVO monthlyWorkVO);

	List<MonthlyWorkVO> monthlyDetail(MonthlyWorkVO monthlyWorkVO);

	List<MonthlyWorkVO> monthlySum(MonthlyWorkVO monthlyWorkVO);

	List<MonthlyWorkVO> monthlyStatusInput(MonthlyWorkVO monthlyWorkVO);

	int monthlyWorkUpdate(MonthlyWorkVO monthlyWorkVO);

	List<MonthlyWorkVO> monthlyWorkUpdateSelect(MonthlyWorkVO monthlyWorkVO);

	int totalPage(MonthlyWorkVO monthlyWorkVO);

	List<MonthlyWorkVO> monthlyStatusUpdate(MonthlyWorkVO monthlyWorkVO);

}
