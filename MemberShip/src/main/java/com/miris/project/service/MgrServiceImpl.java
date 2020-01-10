package com.miris.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miris.project.dao.MgrDao;
import com.miris.project.dto.MemberVO;
import com.miris.project.dto.MgrVO;

@Service
public class MgrServiceImpl implements MgrService {
	
	@Autowired
	private MgrDao mgrDao;

	@Override
	public List<MgrVO> deptList(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl deptList=====================");
		return mgrDao.deptList(mgrVO);
	}
	@Override
	public int DeptInput(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl DeptInput=====================");
		return mgrDao.deptInput(mgrVO);
	}
	@Override
	public int DeptUpdate(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl DeptUpdate=====================");
		return mgrDao.deptUpdate(mgrVO);
	}
	
	@Override
	public List<MgrVO> workList(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl workList=====================");
		return mgrDao.workList(mgrVO);
	}

	@Override
	public List<MgrVO> siteList(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl siteList=====================");
		return mgrDao.siteList(mgrVO);
	}
	
	@Override
	public List<MgrVO> workPlaceList(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl workPlaceList=====================");
		return mgrDao.workPlaceList(mgrVO);
	}
	
	@Override
	public List<MgrVO> memberList(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl memberList=====================");
		return mgrDao.memberList(mgrVO);
	}

	




	


	
	
}
