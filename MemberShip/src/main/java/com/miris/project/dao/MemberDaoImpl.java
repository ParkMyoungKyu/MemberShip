package com.miris.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miris.project.dto.DailyWorkVO;
import com.miris.project.dto.MemberVO;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession session;

	@Override
	public List<DailyWorkVO> dailySum(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberDaoImpl memberSum=====================");
		return session.selectList("dailySum",dailyWorkVO);
	}
	
	@Override
	public List<DailyWorkVO> dailyNowUpdate(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberDaoImpl dailyNowUpdate=====================");
		return session.selectList("dailyNowUpdate",dailyWorkVO);
	}
	
	@Override
	public List<MemberVO> dailyList(MemberVO memberVO) {
		System.out.println("=====================MemberDaoImpl dailyList=====================");
		return session.selectList("dailyList",memberVO);
	}

	@Override
	public List<DailyWorkVO> dailyDetail(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberDaoImpl dailyDetail=====================");
		return session.selectList("dailyDetail",dailyWorkVO);
	}

	

	




}
