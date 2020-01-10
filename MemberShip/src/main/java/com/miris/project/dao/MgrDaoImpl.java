package com.miris.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miris.project.dto.MemberVO;
import com.miris.project.dto.MgrVO;

@Repository
public class MgrDaoImpl implements MgrDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public List<MgrVO> deptList(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl deptList=====================");
		return session.selectList("deptList",mgrVO);
	}

	@Override
	public int deptInput(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl deptInput=====================");
		return session.insert("deptInput",mgrVO);
	}

	@Override
	public int deptUpdate(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl deptUpdate=====================");
		return session.update("deptUpdate",mgrVO);
	}

	
	
	@Override
	public List<MgrVO> workList(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workList=====================");
		return session.selectList("workList",mgrVO);
	}

	@Override
	public List<MgrVO> siteList(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl siteList=====================");
		return session.selectList("siteList",mgrVO);
	}

	@Override
	public List<MgrVO> workPlaceList(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workPlaceList=====================");
		return session.selectList("workPlaceList",mgrVO);
	}
	
	@Override
	public List<MgrVO> memberList(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl memberList=====================");
		return session.selectList("memberList",mgrVO);
	}

	



	
	
}
