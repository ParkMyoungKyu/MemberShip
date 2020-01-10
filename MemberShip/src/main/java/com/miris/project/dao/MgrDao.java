package com.miris.project.dao;

import java.util.List;

import com.miris.project.dto.MgrVO;

public interface MgrDao {

	List<MgrVO> deptList(MgrVO mgrVO);
	int deptInput(MgrVO mgrVO);
	int deptUpdate(MgrVO mgrVO);
	
	List<MgrVO> workList(MgrVO mgrVO);

	List<MgrVO> siteList(MgrVO mgrVO);

	List<MgrVO> memberList(MgrVO mgrVO);

	List<MgrVO> workPlaceList(MgrVO mgrVO);
	



	

	

}
