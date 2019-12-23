package com.miris.project.dto;

import java.util.Date;

public class DailyWorkVO {

	//일별근무이력
    private String m_id;
    private String w_status;
    private Date w_day;
    private Date w_time;
    private String w_notice;
    //private String p_name;
    
    //근무장소
    private String p_name;
    private String p_addr;
    
    //상태별 인원
    private int one;
    private int two;
    private int three;
    private int four;
    
    //조회성을 위한 변수 추가
    private String m_name;
    private String m_position;
    
    
    
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
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getW_status() {
		return w_status;
	}
	public void setW_status(String w_status) {
		this.w_status = w_status;
	}
	public Date getW_day() {
		return w_day;
	}
	public void setW_day(Date w_day) {
		this.w_day = w_day;
	}
	public Date getW_time() {
		return w_time;
	}
	public void setW_time(Date w_time) {
		this.w_time = w_time;
	}
	public String getW_notice() {
		return w_notice;
	}
	public void setW_notice(String w_notice) {
		this.w_notice = w_notice;
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
    
    
}
