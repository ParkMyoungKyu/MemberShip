package com.miris.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miris.project.dto.MemberVO;
import com.miris.project.dto.MgrVO;
import com.miris.project.service.MgrService;

@Controller
public class MgrController {

	@Autowired
	private MgrService mgrService;

	//-------------------부서 관련 작업들-------------------
	//부서 목록
	@RequestMapping(value="mgrDept")
	public String mgrDept(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrDept page=====================");
			
		List<MgrVO> deptList = mgrService.deptList(mgrVO);
		
		model.addAttribute("deptList",deptList);
		
		return "manager/mgrDept";
	}
	//부서 목록 추가하러 페이지이동
	@RequestMapping(value = "mgrDeptInputForm")
	public String mgrDeptInputForm(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrDeptInputForm=====================");
		return "manager/mgrDeptInputForm";
	}
	//추가할 부서 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrDeptInput")
	public String mgrDeptInput(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrDeptInput=====================");
		
		System.out.println("부서코드 -> " + mgrVO.getD_code());
		System.out.println("부서명 -> " + mgrVO.getD_name());
		
		mgrService.DeptInput(mgrVO);
		
		return "redirect:mgrDept.do";
	}
	//수정 페이지 이동
	@RequestMapping(value = "mgrDeptUpdateForm")
	public String mgrDeptUpdateForm(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrDeptInputForm=====================");
		return "manager/mgrDeptUpdateForm";
	}
	//수정할 부서 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrDeptUpdate")
	public String mgrDeptUpdate(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrDeptInput=====================");
		
		mgrService.DeptUpdate(mgrVO);
		
		return "redirect:mgrDept.do";
	}
	
	
	
	
	
	
	
	//-------------------업무 관련 작업들-------------------
	//업무 목록
	@RequestMapping(value="mgrWork")
	public String mgrWork(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrWork page=====================");
		
		List<MgrVO> workList = mgrService.workList(mgrVO);
		
		model.addAttribute("workList",workList);
		
		return "manager/mgrWork";
	}
	
	//사이트 목록
	@RequestMapping(value="mgrSite")
	public String mgrSite(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrSite page=====================");
		
		List<MgrVO> siteList = mgrService.siteList(mgrVO);
		
		model.addAttribute("siteList",siteList);
		
		return "manager/mgrSite";
	}
	
	//근무지 목록
	@RequestMapping(value="mgrWorkPlace")
	public String mgrWorkPlace(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrWorkPlace page=====================");
		
		List<MgrVO> workPlaceList = mgrService.workPlaceList(mgrVO);
		
		model.addAttribute("workPlaceList",workPlaceList);
		
		return "manager/mgrWorkPlace";
	}
	
	//직원 목록
	@RequestMapping(value="mgrMember")
	public String mgrMember(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrMember page=====================");
		
		List<MgrVO> memberList = mgrService.memberList(mgrVO);
		
		model.addAttribute("memberList",memberList);
		
		return "manager/mgrMember";
	}
}
