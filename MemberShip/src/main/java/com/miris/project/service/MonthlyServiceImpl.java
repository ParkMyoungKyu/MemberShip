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

	@Override
	public List<MonthlyWorkVO> monthlySum(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyServiceImpl monthlySum=====================");
		return monthlyDao.monthlySum(monthlyWorkVO);
	}

	@Override
	public List<MonthlyWorkVO> monthlyStatusInput(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyServiceImpl monthlyStatusInput=====================");
		return monthlyDao.monthlyStatusInput(monthlyWorkVO);
	}

	@Override
	public int monthlyWorkUpdate(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyServiceImpl monthlyWorkInput=====================");
		return monthlyDao.monthlyWorkUpdate(monthlyWorkVO);
	}

	@Override
	public List<MonthlyWorkVO> monthlyWorkUpdateSelect(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyServiceImpl monthlyWorkUpdateSelect=====================");
		return monthlyDao.monthlyWorkUpdateSelect(monthlyWorkVO);
	}

	@Override
	public int totalPage(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyServiceImpl totalPage=====================");
		return monthlyDao.totalPage(monthlyWorkVO);
	}

	@Override
	public List<MonthlyWorkVO> monthlyStatusUpdate(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyServiceImpl monthlyStatusUpdate=====================");
		return monthlyDao.monthlyStatusUpdate(monthlyWorkVO);
	}
}
