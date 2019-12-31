package com.miris.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miris.project.dao.MonthlyDao;
import com.miris.project.dto.MonthlyWorkVO;

@Service
public class MonthlyServiceImpl implements MonthlyService {
	
	@Autowired
	private MonthlyDao monthlyDao;

	@Override
	public List<MonthlyWorkVO> monthlyList(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyServiceImpl monthlyList=====================");
		return monthlyDao.monthlyList(monthlyWorkVO);
	}

	@Override
	public List<MonthlyWorkVO> monthlyDetail(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyServiceImpl monthlyDetail=====================");
		return monthlyDao.monthlyDetail(monthlyWorkVO);
	}
}
