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
	public List<MgrVO> siteUpdateForm(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl mgrSiteUpdateForm=====================");
		return session.selectList("siteUpdateForm",mgrVO);
	}
	@Override
	public int siteDelete(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl siteDelete=====================");
		return session.delete("siteDelete",mgrVO);
	}
	@Override
	public int siteDeleteError(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl siteDeleteError=====================");
		return session.delete("siteDeleteError",mgrVO);
	}
	
	
	
	
	
	@Override
	public List<MgrVO> workPlaceList(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workPlaceList=====================");
		return session.selectList("workPlaceList",mgrVO);
	}
	@Override
	public int workPlaceInput(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workPlaceInput=====================");
		return session.insert("workPlaceInput",mgrVO);
	}
	@Override
	public List<MgrVO> workPlaceUpdateForm(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workPlaceUpdateForm=====================");
		return session.selectList("workPlaceUpdateForm",mgrVO);
	}
	@Override
	public int workPlaceUpdate(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workPlaceUpdate=====================");
		return session.update("workPlaceUpdate",mgrVO);
	}
	
	@Override
	public int workPlaceDelete(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workPlaceDelete=====================");
		return session.delete("workPlaceDelete",mgrVO);
	}
	@Override
	public int workPlaceDeleteError(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl workPlaceDeleteError=====================");
		return session.delete("workPlaceDeleteError",mgrVO);
	}
	
	
	
	
	@Override
	public List<MgrVO> memberList(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl memberList=====================");
		return session.selectList("memberList",mgrVO);
	}
	@Override
	public int mgrMemberInput(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl mgrMemberInput=====================");
		return session.insert("mgrMemberInput",mgrVO);
	}
	@Override
	public int mgrMemberDelete(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl mgrMemberDelete=====================");
		return session.delete("mgrMemberDelete",mgrVO);
	}
	@Override
	public int mgrMemberDeleteError(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl mgrMemberDeleteError=====================");
		return session.delete("mgrMemberDeleteError",mgrVO);
	}
	@Override
	public int siteUpdate(MgrVO mgrVO) {
		System.out.println("=====================MgrDaoImpl siteUpdate=====================");
		return session.update("siteUpdate",mgrVO);
	}
	
	
}
