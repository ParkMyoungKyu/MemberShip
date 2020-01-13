package com.miris.project.service;

import java.util.List;

import com.miris.project.dto.MonthlyWorkVO;

public interface MonthlyService {

	List<MonthlyWorkVO> monthlyList(MonthlyWorkVO monthlyWorkVO);

	List<MonthlyWorkVO> monthlyDetail(MonthlyWorkVO monthlyWorkVO);

	List<MonthlyWorkVO> monthlySum(MonthlyWorkVO monthlyWorkVO);

	List<MonthlyWorkVO> monthlyStatusInput(MonthlyWorkVO monthlyWorkVO);

	int monthlyWorkInput(MonthlyWorkVO monthlyWorkVO);

}
