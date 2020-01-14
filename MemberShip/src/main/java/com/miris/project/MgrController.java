package com.miris.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		System.out.println("수정하고자 하는 부서코드 : " + mgrVO.getD_code());
		System.out.println("수정하고자 하는 부서명 : " + mgrVO.getD_name());
		
		List<MgrVO> deptUpdateForm = mgrService.deptUpdateForm(mgrVO);
		
		model.addAttribute("deptUpdateForm",deptUpdateForm);
		
		return "manager/mgrDeptUpdateForm";
	}
	//수정할 부서 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrDeptUpdate")
	public String mgrDeptUpdate(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrDeptInput=====================");
		System.out.println("수정입력한 부서코드 : " + mgrVO.getD_code());
		System.out.println("수정입력한 부서명 : " + mgrVO.getD_name());
		mgrService.DeptUpdate(mgrVO);
		
		return "redirect:mgrDept.do";
	}
	//부서 삭제
	@RequestMapping(value = "mgrDeptDelete")
	public String mgrDeptDelete(MgrVO mgrVO) {
		System.out.println("=====================MgrController mgrDeptDelete=====================");
		System.out.println("삭제하고자 하는 부서코드 : " + mgrVO.getD_code());
		System.out.println("삭제하고자 하는 부서명 : " + mgrVO.getD_name());
		
		mgrService.DeptDelete(mgrVO);
		mgrService.DeptDeleteError(mgrVO);
		
		return "manager/mgrDept";
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
	//업무 목록 추가하러 페이지이동
	@RequestMapping(value = "mgrWorkInputForm")
	public String mgrWrokInputForm(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrWorkInputForm=====================");
		return "manager/mgrWorkInputForm";
	}
	//추가할 업무 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrWorkInput")
	public String mgrWorkInput(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrWorkInput=====================");
		
		System.out.println("업무명 -> " + mgrVO.getW_name());
		System.out.println("해당업무 제외여부 -> " + mgrVO.getW_except());
		
		mgrService.wrokInput(mgrVO);
		
		return "redirect:mgrWork.do";
	}

	//수정 페이지 이동
	@RequestMapping(value = "mgrWorkUpdateForm")
	public String mgrWorkUpdateForm(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrWorkInputForm=====================");
		System.out.println("수정하고자 하는 업무명 : " + mgrVO.getW_name());
		System.out.println("수정하고자 하는 업무제외여부 : " + mgrVO.getW_except());
		
		List<MgrVO> workUpdateForm = mgrService.workUpdateForm(mgrVO);
		
		model.addAttribute("workUpdateForm",workUpdateForm);
		
		return "manager/mgrWorkUpdateForm";
	}
	//수정할 업무 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrWorkUpdate")
	public String mgrWorkUpdate(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrWorkInput=====================");
		System.out.println("수정입력한 부서코드 : " + mgrVO.getW_name());
		System.out.println("수정입력한 부서명 : " + mgrVO.getW_except());
		mgrService.WorkUpdate(mgrVO);
		
		return "redirect:mgrWork.do";
	}
	
	// 업무 삭제
	@RequestMapping(value="mgrWorkDelete")
	public String mgrWrokDelete(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrWrokDelete=====================");
		System.out.println("삭제하고자 하는 업무명 : " + mgrVO.getW_name());
		System.out.println("삭제하고자 하는 업무 제외여부 : " + mgrVO.getW_except());
		
		mgrService.workDelete(mgrVO);
		mgrService.workDeleteError(mgrVO);
		
	
		return "manager/mgrWork";
	}
	
	
	
	
	
	
	//-------------------사이트 관련 작업들-------------------
	//사이트 목록
	@RequestMapping(value="mgrSite")
	public String mgrSite(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrSite page=====================");
		
		List<MgrVO> siteList = mgrService.siteList(mgrVO);
		
		model.addAttribute("siteList",siteList);
		
		return "manager/mgrSite";
	}
	//사이트 목록 추가하러 페이지이동
	@RequestMapping(value = "mgrSiteInputForm")
	public String mgrSiteInputForm(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrSiteInputForm=====================");
		return "manager/mgrSiteInputForm";
	}
	//추가할 사이트 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrSiteInput")
	public String mgrSiteInput(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrSiteInput=====================");
		
		System.out.println("사이트코드 -> " + mgrVO.getL_code());
		System.out.println("사이트명 -> " + mgrVO.getL_name());
		
		mgrService.siteInput(mgrVO);
		
		return "redirect:mgrSite.do";
	}
	// 사이트 수정
	@RequestMapping(value = "mgrSiteUpdateForm")
	public String mgrSiteUpdateForm(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrSiteUpdateForm=====================");
		System.out.println("수정하고자 하는 사이트코드 : " + mgrVO.getL_code());
		System.out.println("수정하고자 하는 사이트명 : " + mgrVO.getL_name());
		
		List<MgrVO> siteUpdateForm = mgrService.siteUpdateForm(mgrVO);
		
		model.addAttribute("siteUpdateForm",siteUpdateForm);
		
		return "manager/mgrSiteUpdateForm";
	}
	//수정할 업무 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrSiteUpdate")
	public String mgrSiteUpdate(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrSiteUpdate=====================");
		System.out.println("수정입력한 사이트코드 : " + mgrVO.getL_code());
		System.out.println("수정입력한 사이트명 : " + mgrVO.getL_name());
		mgrService.siteUpdate(mgrVO);
		
		return "redirect:mgrSite.do";
	}
		
	// 사이트 삭제
	@RequestMapping(value="mgrSiteDelete")
	public String mgrSiteDelete(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrSiteDelete=====================");
		System.out.println("삭제하고자 하는 사이트코드 : " + mgrVO.getL_code());
		System.out.println("삭제하고자 하는 사이트명 : " + mgrVO.getL_name());
		
		mgrService.siteDelete(mgrVO);
		mgrService.siteDeleteError(mgrVO);
		
	
		return "manager/mgrSite";
	}
	
	
	
	
	//-------------------근무지 관련 작업들-------------------
	//근무지 목록
	@RequestMapping(value="mgrWorkPlace")
	public String mgrWorkPlace(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrWorkPlace page=====================");
		
		List<MgrVO> workPlaceList = mgrService.workPlaceList(mgrVO);
		
		model.addAttribute("workPlaceList",workPlaceList);
		
		return "manager/mgrWorkPlace";
	}
	//근무지 목록 추가하러 페이지이동
	@RequestMapping(value = "mgrWorkPlaceInputForm")
	public String mgrWorkPlaceInputForm(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrWorkPlaceInputForm=====================");
		return "manager/mgrWorkPlaceInputForm";
	}
	//추가할 근무지 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrWorkPlaceInput")
	public String mgrWorkPlaceInput(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrWorkPlaceInput=====================");
		
		System.out.println("근무지명 -> " + mgrVO.getP_name());
		System.out.println("근무지주소 -> " + mgrVO.getP_addr());
		
		mgrService.workPlaceInput(mgrVO);
		
		return "redirect:mgrWorkPlace.do";
	}
	
	// 근무지 수정
	@RequestMapping(value = "mgrWorkPlaceUpdateForm")
	public String mgrWorkPlaceUpdateForm(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrWorkPlaceUpdateForm=====================");
		System.out.println("수정하고자 하는 근무지명 : " + mgrVO.getP_name());
		System.out.println("수정하고자 하는 근무지주소 : " + mgrVO.getP_addr());
		
		List<MgrVO> workPlaceUpdateForm = mgrService.workPlaceUpdateForm(mgrVO);
		
		model.addAttribute("workPlaceUpdateForm",workPlaceUpdateForm);
		
		return "manager/mgrWorkPlaceUpdateForm";
	}
	//수정할 근무지 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrWorkPlaceUpdate")
	public String mgrWorkPlaceUpdate(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrWorkPlaceUpdate=====================");
		System.out.println("수정입력한 근무지명 : " + mgrVO.getL_code());
		System.out.println("수정입력한 근무지주소 : " + mgrVO.getL_name());
		mgrService.workPlaceUpdate(mgrVO);
		
		return "redirect:mgrWorkPlace.do";
	}
	
	// 근무지 삭제
	@RequestMapping(value="mgrWorkPlaceDelete")
	public String mgrWorkPlaceDelete(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrWorkPlaceDelete=====================");
		System.out.println("삭제하고자 하는 사이트코드 : " + mgrVO.getP_name());
		System.out.println("삭제하고자 하는 사이트명 : " + mgrVO.getP_addr());
		
		mgrService.workPlaceDelete(mgrVO);
		mgrService.workPlaceDeleteError(mgrVO);
		
	
		return "manager/mgrWorkPlace";
	}
	
	
	
	
	
	
	//-------------------직원 관련 작업들-------------------
	//직원 목록
	@RequestMapping(value="mgrMember")
	public String mgrMember(MgrVO mgrVO,Model model) {
		System.out.println("=====================MgrController mgrMember page=====================");
		
		List<MgrVO> memberList = mgrService.memberList(mgrVO);
		
		model.addAttribute("memberList",memberList);
		
		return "manager/mgrMember";
	}
	//직원 목록 추가하러 페이지이동
	@RequestMapping(value = "mgrMemberInputForm")
	public String mgrMemberInputForm(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrMemberInputForm=====================");
		return "manager/mgrMemberInputForm";
	}
	//추가할 직원 입력 후 부모페이지로 다시 이동
	@RequestMapping(value = "mgrMemberInput")
	public String mgrMemberInput(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrMemberInput=====================");
		
		System.out.println("아이디 : " + mgrVO.getM_id());
		System.out.println("비밀번호 : " + mgrVO.getM_pw());
		System.out.println("이름 : " + mgrVO.getM_name());
		System.out.println("부서명 : " + mgrVO.getD_code());
		System.out.println("직급 : " + mgrVO.getM_position());
		System.out.println("내부/외부 : " + mgrVO.getM_gubun());
		System.out.println("입사일 : " + mgrVO.getM_joindate());
		System.out.println("비고 : " + mgrVO.getM_notice());
		
		mgrService.mgrMemberInput(mgrVO);
		
		return "redirect:mgrMember.do";
	}
	// 직원 삭제
	@RequestMapping(value="mgrMemberDelete")
	public String mgrMemberDelete(MgrVO mgrVO, Model model) {
		System.out.println("=====================MgrController mgrMemberDelete=====================");
		System.out.println("삭제하고자 하는 아이디 : " + mgrVO.getM_id());
		System.out.println("삭제하고자 하는 비밀번호 : " + mgrVO.getM_pw());
		System.out.println("삭제하고자 하는 이름 : " + mgrVO.getM_name());
		System.out.println("삭제하고자 하는 부서명 : " + mgrVO.getD_code());
		System.out.println("삭제하고자 하는 직급 : " + mgrVO.getM_position());
		System.out.println("삭제하고자 하는 내부/외부 : " + mgrVO.getM_gubun());
		System.out.println("삭제하고자 하는 입사일 : " + mgrVO.getM_joindate());
		System.out.println("삭제하고자 하는 비고 : " + mgrVO.getM_notice());
		
		mgrService.mgrMemberDelete(mgrVO);
		mgrService.mgrMemberDeleteError(mgrVO);
		
		return "manager/mgrMember";
	}
}
