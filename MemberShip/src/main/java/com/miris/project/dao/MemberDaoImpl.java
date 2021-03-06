package com.miris.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miris.project.dto.DailyWorkVO;

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
	public List<DailyWorkVO> dailyList(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberDaoImpl dailyList=====================");
		return session.selectList("dailyList",dailyWorkVO);
	}

	@Override
	public List<DailyWorkVO> dailyDetail(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberDaoImpl dailyDetail=====================");
		return session.selectList("dailyDetail",dailyWorkVO);
	}

	@Override
	public List<DailyWorkVO> dailyMemberSearch(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberDaoImpl dailyMemberSearch=====================");
		return session.selectList("dailyMemberSearch",dailyWorkVO);
	}

	@Override
	public int totalPage(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberDaoImpl totalPage=====================");
		return session.selectOne("totalPage",dailyWorkVO);
	}

	@Override
	public int searchTotalPage() {
		System.out.println("=====================MemberDaoImpl searchTotal=====================");
		return session.selectOne("searchTotalPage");
	}

	@Override
	public int dailyAdd(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberDaoImpl dailyAdd=====================");
		return session.insert("dailyAdd",dailyWorkVO);
	}

	@Override
	public int dailyDel(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberDaoImpl dailyDel=====================");
		return session.delete("dailyDel",dailyWorkVO);
	}

	

	




}
