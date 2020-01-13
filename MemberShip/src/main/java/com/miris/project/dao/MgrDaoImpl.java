package com.miris.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public List<MgrVO> deptUpdateForm(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl deptUpdateForm=====================");
		return session.selectList("deptUpdateForm",mgrVO);
	}
	@Override
	public int deptUpdate(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl deptUpdate=====================");
		return session.update("deptUpdate",mgrVO);
	}
	@Override
	public int deptDelete(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl deptDelete=====================");
		return session.delete("deptDelete",mgrVO);
	}
	@Override
	public int deptDeleteError(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl deptDeleteError=====================");
		return session.delete("deptDeleteError",mgrVO);
	}
	
	
	
	@Override
	public List<MgrVO> workList(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workList=====================");
		return session.selectList("workList",mgrVO);
	}
	@Override
	public int workInput(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workInput=====================");
		return session.insert("workInput",mgrVO);
	}
	@Override
	public List<MgrVO> workUpdateForm(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workUpdateForm=====================");
		return session.selectList("workUpdateForm",mgrVO);
	}
	@Override
	public int workUpdate(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workUpdate=====================");
		return session.update("workUpdate",mgrVO);
	}
	@Override
	public int workDelete(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workDelete=====================");
		return session.delete("workDelete",mgrVO);
	}
	@Override
	public int workDeleteError(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workDeleteError=====================");
		return session.delete("workDeleteError",mgrVO);
	}
	
	
	
	@Override
	public List<MgrVO> siteList(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl siteList=====================");
		return session.selectList("siteList",mgrVO);
	}
	@Override
	public int siteInput(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl siteInput=====================");
		return session.insert("siteInput",mgrVO);
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
