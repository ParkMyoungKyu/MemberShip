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

	List<MgrVO> memberList(MgrVO mgrVO);

	List<MgrVO> workPlaceList(MgrVO mgrVO);
	
	
	
	
	
	
	



	

	

}
