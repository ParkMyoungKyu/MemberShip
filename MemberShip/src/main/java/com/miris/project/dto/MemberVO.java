package com.miris.project.dto;

import java.util.Date;

public class MemberVO {
	
	//직원
	private String m_id;
	private String m_pw;
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
    
    
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
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
