package com.miris.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miris.project.dto.MemberVO;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession session;
	
	//로그인 데이터의 유무를 확인 하기 위한
	@Override
	public int login(MemberVO memberVO) {
		System.out.println("=====================UserDaoImpl login=====================");
		System.out.println("로그인한 아이디 정보 : " + memberVO.getMgr_id());
		
		int result = 0;
		
		if(memberVO.getMgr_id() != null) {
			String memberLogin = session.selectOne("memberLogin",memberVO);
			
			if(memberLogin == null) {
				System.out.println("로그인한 아이디가 없음");
				result  = 0;
			} else {
				System.out.println("로그인한 아이디가 있음");
				result = 1;
			}
		}

		return result;
	}
	
	// 로그인시 값이 있다면 DB에 들어있다면 세션에 담기 위한
	@Override
	public MemberVO putMemberInfo(MemberVO memberVO) {
		System.out.println("=====================UserDaoImpl login=====================");
		return session.selectOne("memeberSession",memberVO);
	}

}
