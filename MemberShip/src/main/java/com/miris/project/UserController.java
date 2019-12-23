package com.miris.project;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miris.project.dto.MemberVO;
import com.miris.project.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "loginForm")
	public String loginForm(Model model) {
		
		System.out.println("=====================UserController loginForm=====================");
		
		return "loginForm";
	}
	
	@RequestMapping(value = "login")
	public String login(MemberVO memberVO,HttpSession session ,Model model) {
		System.out.println("=====================UserController login=====================");
		
		int result = userService.login(memberVO, session);
		
		System.out.println("넘어온 result 값 -> " + result);
		
		if(result == 1) {
			System.out.println("로그인 OK");
		
			return "redirect:main.do";
			
		} else {
			System.out.println("로그인 FAIL");
			model.addAttribute("msg","회원정보가 없습니다.");
			
			return "forward:loginForm.do";
		}
		
	}
	
	@RequestMapping(value = "logout")
	public String logout(HttpSession session, Model model) {
		userService.logout(session);
		return "redirect:loginForm.do";
	}
}
