package com.miris.project.service;

import java.util.List;

import com.miris.project.dto.MgrVO;

public interface MgrService {

	List<MgrVO> deptList(MgrVO mgrVO);
	int DeptInput(MgrVO mgrVO);
	int DeptUpdate(MgrVO mgrVO);
	
	List<MgrVO> workList(MgrVO mgrVO);

	List<MgrVO> siteList(MgrVO mgrVO);

	List<MgrVO> memberList(MgrVO mgrVO);

	List<MgrVO> workPlaceList(MgrVO mgrVO);
	



	

	

}
