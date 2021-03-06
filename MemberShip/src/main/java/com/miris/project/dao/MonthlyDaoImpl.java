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

	@Override
	public List<MonthlyWorkVO> monthlyWorkUpdateSelect(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl monthlyWorkInput=====================");
		return session.selectList("monthlyWorkUpdateSelect",monthlyWorkVO);
	}

	@Override
	public int monthlyWorkUpdate(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl monthlyWorkUpdate=====================");
		return session.update("monthlyWorkUpdate",monthlyWorkVO);
	}

	@Override
	public int totalPage(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl totalPage=====================");
		return session.selectOne("totalPage2",monthlyWorkVO);
	}

	@Override
	public List<MonthlyWorkVO> monthlyStatusUpdate(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl monthlyStatusUpdate=====================");
		return session.selectList("monthlyStatusUpdate",monthlyWorkVO);
	}

	@Override
	public int monthlyAdd(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl monthlyAdd=====================");
		return session.insert("monthlyAdd",monthlyWorkVO);
	}

	@Override
	public int monthlyDel(MonthlyWorkVO monthlyWorkVO) {
		System.out.println("=====================MonthlyDaoImpl monthlyDel=====================");
		return session.delete("monthlyDel",monthlyWorkVO);
	}
}
