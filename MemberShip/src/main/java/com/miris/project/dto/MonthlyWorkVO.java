package com.miris.project.dto;

public class MonthlyWorkVO {
	
	//월별 근무이력
	private String m_id;
	private String m_year;
	private String m_month;
	//private String j_name;
	//private String l_code;
	private String m_status;
	//private String j_except;
	private String m_notice;
	
	//사이트
	private String l_code;
	private String l_name;
	
	//업무
	private String j_name;
	private String j_except;
	
		
	//조회하기 위한
	private String m_pw;
	private String m_name;
	private String m_gubun;
	private String d_code;
	private String m_position;
	
	
	//인원현황을 위한
	private String total;
	private String except;
	private String usingWork;
	private String inputWork1;
	private String waitWork;
	private String avg1;
	
	//월별 조회 담기용도
	private String JAN;
	private String FEB;
	private String MAR;
	private String APR;
	private String MAY;
	private String JUN;
	private String JUL;
	private String AUG;
	private String SEPT;
	private String OCT;
	private String NOV;
	private String DEC;
	
	//페이징용
    private int start;
    private int end;
    
    
    
    
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getExcept() {
		return except;
	}
	public void setExcept(String except) {
		this.except = except;
	}
	public String getUsingWork() {
		return usingWork;
	}
	public void setUsingWork(String usingWork) {
		this.usingWork = usingWork;
	}
	public String getInputWork1() {
		return inputWork1;
	}
	public void setInputWork1(String inputWork1) {
		this.inputWork1 = inputWork1;
	}
	public String getWaitWork() {
		return waitWork;
	}
	public void setWaitWork(String waitWork) {
		this.waitWork = waitWork;
	}
	public String getAvg1() {
		return avg1;
	}
	public void setAvg1(String avg1) {
		this.avg1 = avg1;
	}
	public String getJAN() {
		return JAN;
	}
	public void setJAN(String jAN) {
		JAN = jAN;
	}
	public String getFEB() {
		return FEB;
	}
	public void setFEB(String fEB) {
		FEB = fEB;
	}
	public String getMAR() {
		return MAR;
	}
	public void setMAR(String mAR) {
		MAR = mAR;
	}
	public String getAPR() {
		return APR;
	}
	public void setAPR(String aPR) {
		APR = aPR;
	}
	public String getMAY() {
		return MAY;
	}
	public void setMAY(String mAY) {
		MAY = mAY;
	}
	public String getJUN() {
		return JUN;
	}
	public void setJUN(String jUN) {
		JUN = jUN;
	}
	public String getJUL() {
		return JUL;
	}
	public void setJUL(String jUL) {
		JUL = jUL;
	}
	public String getAUG() {
		return AUG;
	}
	public void setAUG(String aUG) {
		AUG = aUG;
	}
	public String getSEPT() {
		return SEPT;
	}
	public void setSEPT(String sEPT) {
		SEPT = sEPT;
	}
	public String getOCT() {
		return OCT;
	}
	public void setOCT(String oCT) {
		OCT = oCT;
	}
	public String getNOV() {
		return NOV;
	}
	public void setNOV(String nOV) {
		NOV = nOV;
	}
	public String getDEC() {
		return DEC;
	}
	public void setDEC(String dEC) {
		DEC = dEC;
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
	public String getM_year() {
		return m_year;
	}
	public void setM_year(String m_year) {
		this.m_year = m_year;
	}
	public String getM_month() {
		return m_month;
	}
	public void setM_month(String m_month) {
		this.m_month = m_month;
	}
	public String getM_status() {
		return m_status;
	}
	public void setM_status(String m_status) {
		this.m_status = m_status;
	}
	public String getM_notice() {
		return m_notice;
	}
	public void setM_notice(String m_notice) {
		this.m_notice = m_notice;
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
	public String getM_gubun() {
		return m_gubun;
	}
	public void setM_gubun(String m_gubun) {
		this.m_gubun = m_gubun;
	}
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	public String getM_position() {
		return m_position;
	}
	public void setM_position(String m_position) {
		this.m_position = m_position;
	}
	public String getJ_name() {
		return j_name;
	}
	public void setJ_name(String j_name) {
		this.j_name = j_name;
	}
	public String getJ_except() {
		return j_except;
	}
	public void setJ_except(String j_except) {
		this.j_except = j_except;
	}
	
	
	
}
