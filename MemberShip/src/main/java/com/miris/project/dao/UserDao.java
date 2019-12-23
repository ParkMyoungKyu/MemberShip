package com.miris.project.dao;

import com.miris.project.dto.MemberVO;

public interface UserDao {

	int login(MemberVO memberVO);

	MemberVO putMemberInfo(MemberVO memberVO);

}
