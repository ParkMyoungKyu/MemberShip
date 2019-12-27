package com.miris.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miris.project.service.MgrService;

@Controller
public class MgrController {

	@Autowired
	private MgrService mgrService;
	
	@RequestMapping(value="mgrDept")
	public String mgrDept(Model model) {
		System.out.println("=====================MgrController mgrDept page=====================");
		
		return "manager/mgrDept";
	}
	
	
	@RequestMapping(value="mgrWork")
	public String mgrWork(Model model) {
		System.out.println("=====================MgrController mgrWork page=====================");
		
		return "manager/mgrWork";
	}
	
	
	@RequestMapping(value="mgrSite")
	public String mgrSite(Model model) {
		System.out.println("=====================MgrController mgrSite page=====================");
		
		return "manager/mgrSite";
	}
	
	
	@RequestMapping(value="mgrWorkPlace")
	public String mgrWorkPlace(Model model) {
		System.out.println("=====================MgrController mgrWorkPlace page=====================");
		
		return "manager/mgrWorkPlace";
	}
	
	
	@RequestMapping(value="mgrMember")
	public String mgrMember(Model model) {
		System.out.println("=====================MgrController mgrMember page=====================");
		
		return "manager/mgrMember";
	}
}
