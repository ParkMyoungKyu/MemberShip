package com.miris.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miris.project.dao.MemberDao;
import com.miris.project.dto.DailyWorkVO;
import com.miris.project.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public List<DailyWorkVO> dailySum(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberServiceImpl memberSum=====================");
		return memberDao.dailySum(dailyWorkVO);
	}
	
	@Override
	public List<DailyWorkVO> dailyNowUpdate(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberServiceImpl dailyNowUpdate=====================");
		return memberDao.dailyNowUpdate(dailyWorkVO);
	}
	
	@Override
	public List<MemberVO> dailyList(MemberVO memberVO) {
		System.out.println("=====================MemberServiceImpl dailyList=====================");
		return memberDao.dailyList(memberVO);
	}

	@Override
	public List<DailyWorkVO> dailyDetail(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberServiceImpl dailyDetail=====================");
		return memberDao.dailyDetail(dailyWorkVO);
	}

	@Override
	public List<DailyWorkVO> dailyMemberSearch(DailyWorkVO dailyWorkVO) {
		System.out.println("=====================MemberServiceImpl dailyMemberSearch=====================");
		return memberDao.dailyMemberSearch(dailyWorkVO);
	}

	@Override
	public int totalPage() {
		System.out.println("=====================MemberServiceImpl totalPage=====================");
		return memberDao.totalPage();
	}

	



	

}
