package com.miris.project.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miris.project.dao.UserDao;
import com.miris.project.dto.MemberVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public int login(MemberVO memberVO, HttpSession session) {
		System.out.println("=====================UserServiceImpl login=====================");
		
		int result = userDao.login(memberVO);
		
		System.out.println("DB에 있는 정보 확인 결과값 -> " + result);
		
		if(result == 1) {
			
			MemberVO memberSes = userDao.putMemberInfo(memberVO);
			
			session.setAttribute("member", memberSes);

			MemberVO userInfo = (MemberVO) session.getAttribute("member");
			
			System.out.println("세션에 담긴 맴버 ID : " + userInfo.getM_id());
			System.out.println("세션에 담긴 맴버 이름 : " + userInfo.getM_name());
			System.out.println("세션에 담긴 맴버 직급 : " + userInfo.getM_position());
			System.out.println("세션에 담긴 관리자 ID : " + userInfo.getMgr_id());
			System.out.println("세션에 담긴 관리자 PW : " + userInfo.getMgr_pw());
			System.out.println("세션에 담긴 관리자 권한 : " + userInfo.getMgr_level());
	
		}	
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		System.out.println("=====================UserServiceImpl logout=====================");
		session.invalidate();		
	}
}
