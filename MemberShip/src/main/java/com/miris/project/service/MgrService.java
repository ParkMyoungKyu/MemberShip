package com.miris.project.service;

import java.util.List;

import com.miris.project.dto.MgrVO;

public interface MgrService {

	List<MgrVO> deptList(MgrVO mgrVO);
	int DeptInput(MgrVO mgrVO);
	List<MgrVO> deptUpdateForm(MgrVO mgrVO);
	int DeptUpdate(MgrVO mgrVO);
	int DeptDelete(MgrVO mgrVO);
	int DeptDeleteError(MgrVO mgrVO);
	
	
	List<MgrVO> workList(MgrVO mgrVO);
	int wrokInput(MgrVO mgrVO);
	List<MgrVO> workUpdateForm(MgrVO mgrVO);
	int WorkUpdate(MgrVO mgrVO);
	int workDelete(MgrVO mgrVO);
	int workDeleteError(MgrVO mgrVO);
	
	
	List<MgrVO> siteList(MgrVO mgrVO);
	int siteInput(MgrVO mgrVO);
	List<MgrVO> siteUpdateForm(MgrVO mgrVO);
	int siteUpdate(MgrVO mgrVO);
	int siteDelete(MgrVO mgrVO);
	int siteDeleteError(MgrVO mgrVO);
	
	
	List<MgrVO> workPlaceList(MgrVO mgrVO);
	int workPlaceInput(MgrVO mgrVO);
	List<MgrVO> workPlaceUpdateForm(MgrVO mgrVO);
	int workPlaceUpdate(MgrVO mgrVO);
	int workPlaceDelete(MgrVO mgrVO);
	int workPlaceDeleteError(MgrVO mgrVO);

	
	List<MgrVO> memberList(MgrVO mgrVO);
	int mgrMemberInput(MgrVO mgrVO);
	int mgrMemberDelete(MgrVO mgrVO);
	int mgrMemberDeleteError(MgrVO mgrVO);
	
	
	
	
	
	
	
	
	
	
	
	
	



	

	

}
