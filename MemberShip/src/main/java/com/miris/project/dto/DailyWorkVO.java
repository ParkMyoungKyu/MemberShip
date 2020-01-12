package com.miris.project.dto;

import java.util.Date;

public class DailyWorkVO {

	//일별근무이력
    private String m_id;
    private String dw_status;
    private Date dw_day;
    private Date dw_time;
    private String dw_notice;
    //private String p_name;
    
    private String searchDate;
    
    //근무장소
    private String p_name;
    private String p_addr;
    
    //상태별 인원
    private int zero;
    private int one;
    private int two;
    private int three;
    private int four;
    
    //조회성을 위한 변수 추가
    private String d_code;
    private String m_name;
    private String m_position;
    
    //페이징용
    private int start;
    private int end;
    
    
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getDw_status() {
		return dw_status;
	}
	public void setDw_status(String dw_status) {
		this.dw_status = dw_status;
	}
	public Date getDw_day() {
		return dw_day;
	}
	public void setDw_day(Date dw_day) {
		this.dw_day = dw_day;
	}
	public Date getDw_time() {
		return dw_time;
	}
	public void setDw_time(Date dw_time) {
		this.dw_time = dw_time;
	}
	public String getDw_notice() {
		return dw_notice;
	}
	public void setDw_notice(String dw_notice) {
		this.dw_notice = dw_notice;
	}
	public String getSearchDate() {
		return searchDate;
	}
	public void setSearchDate(String searchDate) {
		this.searchDate = searchDate;
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
	public int getZero() {
		return zero;
	}
	public void setZero(int zero) {
		this.zero = zero;
	}
	public int getOne() {
		return one;
	}
	public void setOne(int one) {
		this.one = one;
	}
	public int getTwo() {
		return two;
	}
	public void setTwo(int two) {
		this.two = two;
	}
	public int getThree() {
		return three;
	}
	public void setThree(int three) {
		this.three = three;
	}
	public int getFour() {
		return four;
	}
	public void setFour(int four) {
		this.four = four;
	}
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
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
    
    
	
    
    
    
    	    
}
