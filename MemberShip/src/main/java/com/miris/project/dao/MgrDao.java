package com.miris.project.dao;

import java.util.List;

import com.miris.project.dto.MgrVO;

public interface MgrDao {

	List<MgrVO> deptList(MgrVO mgrVO);
	int deptInput(MgrVO mgrVO);
	List<MgrVO> deptUpdateForm(MgrVO mgrVO);
	int deptUpdate(MgrVO mgrVO);
	int deptDelete(MgrVO mgrVO);
	int deptDeleteError(MgrVO mgrVO);
	
	
	List<MgrVO> workList(MgrVO mgrVO);
	int workInput(MgrVO mgrVO);
	List<MgrVO> workUpdateForm(MgrVO mgrVO);
	int workUpdate(MgrVO mgrVO);
	int workDelete(MgrVO mgrVO);
	int workDeleteError(MgrVO mgrVO);
	
	
	List<MgrVO> siteList(MgrVO mgrVO);
	int siteInput(MgrVO mgrVO);
	int siteDelete(MgrVO mgrVO);
	int siteDeleteError(MgrVO mgrVO);
	
	
	List<MgrVO> workPlaceList(MgrVO mgrVO);
	int workPlaceInput(MgrVO mgrVO);
	int workPlaceDelete(MgrVO mgrVO);
	int workPlaceDeleteError(MgrVO mgrVO);
	
	
	List<MgrVO> memberList(MgrVO mgrVO);
	int mgrMemberInput(MgrVO mgrVO);
	int mgrMemberDelete(MgrVO mgrVO);
	int mgrMemberDeleteError(MgrVO mgrVO);
	
	
	
	
	
	
	



	

	

}
