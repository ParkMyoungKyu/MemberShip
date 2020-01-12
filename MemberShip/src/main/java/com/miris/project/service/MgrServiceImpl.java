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
	public List<MgrVO> deptUpdateForm(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl DeptUpdateForm=====================");
		return mgrDao.deptUpdateForm(mgrVO);
	}
	@Override
	public int DeptUpdate(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl DeptUpdate=====================");
		return mgrDao.deptUpdate(mgrVO);
	}
	@Override
	public int DeptDelete(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl DeptDelete=====================");
		return mgrDao.deptDelete(mgrVO);
	}
	@Override
	public int DeptDeleteError(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl DeptDeleteError=====================");
		return mgrDao.deptDeleteError(mgrVO);
	}
	
	
	
	@Override
	public List<MgrVO> workList(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl workList=====================");
		return mgrDao.workList(mgrVO);
	}
	@Override
	public int wrokInput(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl wrokInput=====================");
		return mgrDao.workInput(mgrVO);
	}
	@Override
	public List<MgrVO> workUpdateForm(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl workUpdateForm=====================");
		return mgrDao.workUpdateForm(mgrVO);
	}
	@Override
	public int WorkUpdate(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl WorkUpdate=====================");
		return mgrDao.workUpdate(mgrVO);
	}
	@Override
	public int workDelete(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl workDelete=====================");
		return mgrDao.workDelete(mgrVO);
	}
	@Override
	public int workDeleteError(MgrVO mgrVO) {
		System.out.println("=====================MgrServiceImpl workDeleteError=====================");
		return mgrDao.workDeleteError(mgrVO);
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
