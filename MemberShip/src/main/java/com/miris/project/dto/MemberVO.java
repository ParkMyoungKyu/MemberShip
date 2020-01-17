package com.miris.project.dto;

import java.util.Date;

public class MemberVO {
	
	//직원
	private String m_id;
	private String m_name;
	//private String d_code;
	private String m_position;
	private String m_gubun;
	private Date m_joindate;
	private Date m_leavedate;
    private String m_notice;
    
    //부서명
    private String d_name;
    private String d_code;
    
    //관리자
    private String mgr_id;
	private String mgr_pw;
	private String mgr_level;
    
    //페이징용
    private int start;
    private int end;
    
    
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
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
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
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}

    
    }
