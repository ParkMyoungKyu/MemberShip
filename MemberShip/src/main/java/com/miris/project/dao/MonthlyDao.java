package com.miris.project.dao;

import java.util.List;

import com.miris.project.dto.MonthlyWorkVO;

public interface MonthlyDao {

	List<MonthlyWorkVO> monthlyList(MonthlyWorkVO monthlyWorkVO);

	List<MonthlyWorkVO> monthlyDetail(MonthlyWorkVO monthlyWorkVO);

}
