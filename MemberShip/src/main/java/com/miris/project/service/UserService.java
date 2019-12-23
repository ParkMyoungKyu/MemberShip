package com.miris.project.service;

import javax.servlet.http.HttpSession;

import com.miris.project.dto.MemberVO;

public interface UserService {

	int login(MemberVO memberVO, HttpSession session);

	void logout(HttpSession session);

	
}
