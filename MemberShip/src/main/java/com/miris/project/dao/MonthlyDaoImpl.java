package com.miris.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miris.project.dto.MonthlyWorkVO;

@Repository
public class MonthlyDaoImpl implements MonthlyDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public List<MonthlyWorkVO> monthlyList(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl monthlyList=====================");
		return session.selectList("monthlyList",monthlyWorkVO);
	}

	@Override
	public List<MonthlyWorkVO> monthlyDetail(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl monthlyDetail=====================");
		return session.selectList("monthlyDetail",monthlyWorkVO);
	}

	@Override
	public List<MonthlyWorkVO> monthlySum(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl monthlySum=====================");
		return session.selectList("monthlySum",monthlyWorkVO);
	}

	@Override
	public List<MonthlyWorkVO> monthlyStatusInput(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl monthlyStatusInput=====================");
		return session.selectList("monthlyStatusInput",monthlyWorkVO);
	}
}
