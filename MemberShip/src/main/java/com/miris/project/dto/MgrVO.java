package com.miris.project.dto;

import java.util.Date;

public class MgrVO {
	// 부서 관리
	private String d_code;
	private String d_name;
	
	// 업무 관리
	private String w_name;
	private String w_except;
	
	// 사이트 관리
	private String l_code;
	private String l_name;
	
	// 근무지 관리
	private String p_name;
	private String p_addr;
	
	// 직원 관리
	private String m_id;
	private String m_name;
	//private String d_code;
	private String m_position;
	private String m_gubun;
	private Date m_joindate;
	private Date m_leavedate;
	private String m_notice;
	
	// 관리자 관리
	private String mgr_id;
	private String mgr_pw;
	private String mgr_level;
	
	private String searchDate;
	
	
	public String getSearchDate() {
		return searchDate;
	}
	public void setSearchDate(String searchDate) {
		this.searchDate = searchDate;
	}
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getW_name() {
		return w_name;
	}
	public void setW_name(String w_name) {
		this.w_name = w_name;
	}
	public String getW_except() {
		return w_except;
	}
	public void setW_except(String w_except) {
		this.w_except = w_except;
	}
	public String getL_code() {
		return l_code;
	}
	public void setL_code(String l_code) {
		this.l_code = l_code;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_addr() {
		return p_addr;
	}
	public void setP_addr(String p_addr) {
		this.p_addr = p_addr;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_position() {
		return m_position;
	}
	public void setM_position(String m_position) {
		this.m_position = m_position;
	}
	public String getM_gubun() {
		return m_gubun;
	}
	public void setM_gubun(String m_gubun) {
		this.m_gubun = m_gubun;
	}
	public Date getM_joindate() {
		return m_joindate;
	}
	public void setM_joindate(Date m_joindate) {
		this.m_joindate = m_joindate;
	}
	public Date getM_leavedate() {
		return m_leavedate;
	}
	public void setM_leavedate(Date m_leavedate) {
		this.m_leavedate = m_leavedate;
	}
	public String getM_notice() {
		return m_notice;
	}
	public void setM_notice(String m_notice) {
		this.m_notice = m_notice;
	}
	public String getMgr_id() {
		return mgr_id;
	}
	public void setMgr_id(String mgr_id) {
		this.mgr_id = mgr_id;
	}
	public String getMgr_pw() {
		return mgr_pw;
	}
	public void setMgr_pw(String mgr_pw) {
		this.mgr_pw = mgr_pw;
	}
	public String getMgr_level() {
		return mgr_level;
	}
	public void setMgr_level(String mgr_level) {
		this.mgr_level = mgr_level;
	}
	
	
	
}
